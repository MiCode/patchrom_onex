.class public Lcom/htc/app/mf/MfMainActivity;
.super Landroid/app/Activity;
.source "MfMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/mf/MfMainActivity$ExecBackToPreviousPaneRunner;,
        Lcom/htc/app/mf/MfMainActivity$ExecPopFragmentBackStackRunner;,
        Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;,
        Lcom/htc/app/mf/MfMainActivity$AnimatorRunner;,
        Lcom/htc/app/mf/MfMainActivity$AnimationListener;,
        Lcom/htc/app/mf/MfMainActivity$ActionModeCallbackWrapper;
    }
.end annotation


# static fields
.field private static final ACTIVITY_FRAGMENTS_TAG:Ljava/lang/String; = "android:fragments"

.field private static final MAX_PANE_NUM:I = 0x4

.field private static final PANE_ID_START:I = 0x36f8056f


# instance fields
.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

.field private mAnimator:Lcom/htc/app/mf/Animation;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mCurrentHead:I

.field private mCurrentHeight:I

.field private mCurrentRN:I

.field private mCurrentRects:[Lcom/htc/app/mf/PaneRect;

.field private mCurrentWidth:I

.field private mDispatchKeyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/app/mf/IMfFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mEntryPane:I

.field private mFmReflection:Lcom/htc/app/mf/FragmentManagerReflection;

.field private mFullScreenPadding:[I

.field private mFullScreenPane:I

.field private mHandler:Landroid/os/Handler;

.field private mInitFgtArgs:[Landroid/os/Bundle;

.field private mInitFgtNames:[Ljava/lang/String;

.field private mIsAllInitFgtStarted:Z

.field private mIsDestroyMyActionMode:Z

.field private mIsIgnoringMenuUpdate:Z

.field private mIsMainWHSet:Z

.field private mIsMatchParentInRectsSetting:Z

.field private mIsOnCreateOptionsMenu:Z

.field private mIsPortrait:Z

.field private mIsPostResume:Z

.field private mIsStarted:Z

.field private mKeyDownListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/app/mf/IMfFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyUpListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/app/mf/IMfFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mL2PShowedPane:I

.field private mLandHeight:I

.field private mLandPaneN:I

.field private mLandRects:[Lcom/htc/app/mf/PaneRect;

.field private mLandWidth:I

.field private mManager:Landroid/app/FragmentManager;

.field private mMenuInvalidater:Ljava/lang/Runnable;

.field private mMimicActivityTransition:Z

.field private mNextActionModeStarter:Lcom/htc/app/mf/IMfFragment;

.field private mOnWindowTransitionEndRunner:Ljava/lang/Runnable;

.field private mPanes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPortHeight:I

.field private mPortPaneN:I

.field private mPortRects:[Lcom/htc/app/mf/PaneRect;

.field private mPortWidth:I

.field private mRunningActionMode:Landroid/view/ActionMode;

.field private mRunningAnimator:Landroid/animation/Animator;

.field private mRunningTransition:Ljava/lang/Runnable;

.field private mUsingBSIndex:I

.field private mUsingSpec:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 137
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    .line 139
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mContainer:Landroid/widget/FrameLayout;

    .line 141
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mFmReflection:Lcom/htc/app/mf/FragmentManagerReflection;

    .line 144
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/htc/app/mf/Animation;

    invoke-direct {v0}, Lcom/htc/app/mf/Animation;-><init>()V

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mAnimator:Lcom/htc/app/mf/Animation;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mDispatchKeyListeners:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mKeyDownListeners:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mKeyUpListeners:Ljava/util/ArrayList;

    .line 166
    iput v3, p0, Lcom/htc/app/mf/MfMainActivity;->mUsingBSIndex:I

    .line 170
    iput v3, p0, Lcom/htc/app/mf/MfMainActivity;->mUsingSpec:I

    .line 172
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mInitFgtNames:[Ljava/lang/String;

    .line 173
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mInitFgtArgs:[Landroid/os/Bundle;

    .line 175
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mLandRects:[Lcom/htc/app/mf/PaneRect;

    .line 176
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mPortRects:[Lcom/htc/app/mf/PaneRect;

    .line 178
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPadding:[I

    .line 180
    iput v1, p0, Lcom/htc/app/mf/MfMainActivity;->mLandPaneN:I

    .line 181
    iput v1, p0, Lcom/htc/app/mf/MfMainActivity;->mPortPaneN:I

    .line 183
    iput v1, p0, Lcom/htc/app/mf/MfMainActivity;->mL2PShowedPane:I

    .line 185
    iput v1, p0, Lcom/htc/app/mf/MfMainActivity;->mEntryPane:I

    .line 187
    iput-boolean v1, p0, Lcom/htc/app/mf/MfMainActivity;->mMimicActivityTransition:Z

    .line 191
    iput v1, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    .line 193
    iput-boolean v1, p0, Lcom/htc/app/mf/MfMainActivity;->mIsPortrait:Z

    .line 195
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRects:[Lcom/htc/app/mf/PaneRect;

    .line 197
    iput v1, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    .line 199
    iput v1, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentWidth:I

    .line 200
    iput v1, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHeight:I

    .line 202
    iput-boolean v1, p0, Lcom/htc/app/mf/MfMainActivity;->mIsStarted:Z

    .line 204
    iput-boolean v1, p0, Lcom/htc/app/mf/MfMainActivity;->mIsPostResume:Z

    .line 206
    iput-boolean v1, p0, Lcom/htc/app/mf/MfMainActivity;->mIsOnCreateOptionsMenu:Z

    .line 208
    iput-boolean v1, p0, Lcom/htc/app/mf/MfMainActivity;->mIsAllInitFgtStarted:Z

    .line 210
    iput-boolean v1, p0, Lcom/htc/app/mf/MfMainActivity;->mIsIgnoringMenuUpdate:Z

    .line 212
    iput v3, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    .line 214
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningAnimator:Landroid/animation/Animator;

    .line 216
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningTransition:Ljava/lang/Runnable;

    .line 218
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningActionMode:Landroid/view/ActionMode;

    .line 222
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    .line 223
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mNextActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    .line 224
    iput-boolean v1, p0, Lcom/htc/app/mf/MfMainActivity;->mIsDestroyMyActionMode:Z

    .line 228
    iput-boolean v1, p0, Lcom/htc/app/mf/MfMainActivity;->mIsMatchParentInRectsSetting:Z

    .line 229
    iput-boolean v1, p0, Lcom/htc/app/mf/MfMainActivity;->mIsMainWHSet:Z

    .line 231
    const/16 v0, 0x500

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mLandWidth:I

    .line 232
    const/16 v0, 0x2b8

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mLandHeight:I

    .line 233
    const/16 v0, 0x320

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mPortWidth:I

    .line 234
    const/16 v0, 0x498

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mPortHeight:I

    .line 440
    new-instance v0, Lcom/htc/app/mf/MfMainActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/app/mf/MfMainActivity$1;-><init>(Lcom/htc/app/mf/MfMainActivity;)V

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mMenuInvalidater:Ljava/lang/Runnable;

    .line 447
    new-instance v0, Lcom/htc/app/mf/MfMainActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/app/mf/MfMainActivity$2;-><init>(Lcom/htc/app/mf/MfMainActivity;)V

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mOnWindowTransitionEndRunner:Ljava/lang/Runnable;

    return-void

    .line 178
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/htc/app/mf/MfMainActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/htc/app/mf/MfMainActivity;->mIsDestroyMyActionMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/app/mf/MfMainActivity;[Lcom/htc/app/mf/PaneRect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/htc/app/mf/MfMainActivity;->changeCurrentPaneLayouts([Lcom/htc/app/mf/PaneRect;)V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/app/mf/MfMainActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/app/mf/MfMainActivity;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 118
    invoke-direct/range {p0 .. p6}, Lcom/htc/app/mf/MfMainActivity;->execStartFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->execPopFragmentBackStack()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->execBackToPreviousPane()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/app/mf/MfMainActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->superInvalidateOptionsMenu()V

    return-void
.end method

.method static synthetic access$702(Lcom/htc/app/mf/MfMainActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningTransition:Ljava/lang/Runnable;

    return-object p1
.end method

.method private addNewPane(Lcom/htc/app/mf/PaneRect;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 1515
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1516
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "currently we don\'t have design that using more than 4 panes, please let me know if you need more"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1521
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1523
    .local v1, pane:Landroid/view/View;
    const v2, 0x36f8056f

    iget-object v3, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int v0, v2, v3

    .line 1524
    .local v0, id:I
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1528
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNewPane(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 1532
    if-eqz p1, :cond_1

    .line 1533
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1534
    invoke-direct {p0, v1, p1}, Lcom/htc/app/mf/MfMainActivity;->changePaneLayout(Landroid/view/View;Lcom/htc/app/mf/PaneRect;)V

    .line 1539
    :cond_1
    return-void
.end method

.method private applyNewPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;IIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;
    .locals 24
    .parameter "landRects"
    .parameter "portRects"
    .parameter "duration"
    .parameter "refresh"
    .parameter "autoStart"
    .parameter "timing"
    .parameter "useViewCache"

    .prologue
    .line 1654
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "duration="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", refresh="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", autoStart="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", timing="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", viewCache="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 1657
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/mf/MfMainActivity;->mIsPortrait:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/app/mf/MfMainActivity;->mPortRects:[Lcom/htc/app/mf/PaneRect;

    .line 1658
    .local v8, fromRects:[Lcom/htc/app/mf/PaneRect;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/app/mf/MfMainActivity;->mIsPortrait:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v17, p2

    .line 1661
    .local v17, toRects:[Lcom/htc/app/mf/PaneRect;
    :goto_1
    if-nez p3, :cond_3

    .line 1662
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/app/mf/MfMainActivity;->changeCurrentPaneLayouts([Lcom/htc/app/mf/PaneRect;)V

    .line 1663
    const/4 v4, 0x0

    .line 1800
    :cond_0
    :goto_2
    return-object v4

    .line 1657
    .end local v8           #fromRects:[Lcom/htc/app/mf/PaneRect;
    .end local v17           #toRects:[Lcom/htc/app/mf/PaneRect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/app/mf/MfMainActivity;->mLandRects:[Lcom/htc/app/mf/PaneRect;

    goto :goto_0

    .restart local v8       #fromRects:[Lcom/htc/app/mf/PaneRect;
    :cond_2
    move-object/from16 v17, p1

    .line 1658
    goto :goto_1

    .line 1667
    .restart local v17       #toRects:[Lcom/htc/app/mf/PaneRect;
    :cond_3
    const/4 v15, 0x0

    .line 1670
    .local v15, resizedRects:[Lcom/htc/app/mf/PaneRect;
    const/4 v6, 0x0

    .line 1673
    .local v6, doPostResizing:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1675
    .local v5, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_10

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    move/from16 v21, v0

    add-int v21, v21, v9

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 1679
    .local v14, pane:Landroid/view/View;
    new-instance v19, Lcom/htc/app/mf/Animation$LayoutWrapper;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Lcom/htc/app/mf/Animation$LayoutWrapper;-><init>(Landroid/view/View;)V

    .line 1682
    .local v19, wrapper:Lcom/htc/app/mf/Animation$LayoutWrapper;
    aget-object v16, v17, v9

    .line 1684
    .local v16, to:Lcom/htc/app/mf/PaneRect;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 1691
    .local v11, lps:Landroid/widget/FrameLayout$LayoutParams;
    if-nez v11, :cond_8

    const/4 v12, 0x0

    .line 1693
    .local v12, nowX:I
    :goto_4
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/app/mf/PaneRect;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v12, v0, :cond_4

    .line 1694
    const-string v20, "x"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/app/mf/PaneRect;->x:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/htc/app/mf/Animation;->createObjAnim(Ljava/lang/Object;Ljava/lang/String;I)Landroid/animation/Animator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    :cond_4
    if-nez v11, :cond_9

    const/4 v13, 0x0

    .line 1700
    .local v13, nowY:I
    :goto_5
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/app/mf/PaneRect;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v13, v0, :cond_5

    .line 1701
    const-string v20, "y"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/app/mf/PaneRect;->y:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/htc/app/mf/Animation;->createObjAnim(Ljava/lang/Object;Ljava/lang/String;I)Landroid/animation/Animator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v20

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/app/mf/PaneRect;->width:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 1707
    sget-object v20, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 1709
    const-string v20, "width"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/app/mf/PaneRect;->width:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/htc/app/mf/Animation;->createObjAnim(Ljava/lang/Object;Ljava/lang/String;I)Landroid/animation/Animator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1726
    :cond_6
    :goto_6
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/app/mf/PaneRect;->height:I

    move/from16 v20, v0

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 1728
    sget-object v20, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1730
    const-string v20, "height"

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/app/mf/PaneRect;->height:I

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/htc/app/mf/Animation;->createObjAnim(Ljava/lang/Object;Ljava/lang/String;I)Landroid/animation/Animator;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    :cond_7
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1691
    .end local v12           #nowX:I
    .end local v13           #nowY:I
    :cond_8
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_4

    .line 1698
    .restart local v12       #nowX:I
    :cond_9
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_5

    .line 1712
    .restart local v13       #nowY:I
    :cond_a
    sget-object v20, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->BeforeAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 1714
    if-nez v15, :cond_b

    .line 1715
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/app/mf/MfMainActivity;->clonePaneRects([Lcom/htc/app/mf/PaneRect;)[Lcom/htc/app/mf/PaneRect;

    move-result-object v15

    .line 1717
    :cond_b
    aget-object v20, v15, v9

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/app/mf/PaneRect;->width:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/app/mf/PaneRect;->width:I

    goto :goto_6

    .line 1721
    :cond_c
    const/4 v6, 0x1

    goto :goto_6

    .line 1733
    :cond_d
    sget-object v20, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->BeforeAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1735
    if-nez v15, :cond_e

    .line 1736
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/app/mf/MfMainActivity;->clonePaneRects([Lcom/htc/app/mf/PaneRect;)[Lcom/htc/app/mf/PaneRect;

    move-result-object v15

    .line 1738
    :cond_e
    aget-object v20, v15, v9

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/app/mf/PaneRect;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/htc/app/mf/PaneRect;->height:I

    goto :goto_7

    .line 1742
    :cond_f
    const/4 v6, 0x1

    goto :goto_7

    .line 1748
    .end local v11           #lps:Landroid/widget/FrameLayout$LayoutParams;
    .end local v12           #nowX:I
    .end local v13           #nowY:I
    .end local v14           #pane:Landroid/view/View;
    .end local v16           #to:Lcom/htc/app/mf/PaneRect;
    .end local v19           #wrapper:Lcom/htc/app/mf/Animation$LayoutWrapper;
    :cond_10
    if-eqz v15, :cond_11

    .line 1749
    const-string v20, "do pre-resizing now"

    invoke-static/range {v20 .. v20}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 1750
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/app/mf/MfMainActivity;->changeCurrentPaneLayouts([Lcom/htc/app/mf/PaneRect;)V

    .line 1754
    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_13

    .line 1755
    const-string v20, "no animation to do"

    invoke-static/range {v20 .. v20}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 1757
    if-eqz v6, :cond_12

    .line 1758
    const-string v20, "do post-resizing now"

    invoke-static/range {v20 .. v20}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 1759
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/app/mf/MfMainActivity;->changeCurrentPaneLayouts([Lcom/htc/app/mf/PaneRect;)V

    .line 1761
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1766
    :cond_13
    const-string v20, "create animator set"

    invoke-static/range {v20 .. v20}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 1768
    invoke-static {v5}, Lcom/htc/app/mf/Animation;->createAnimSet(Ljava/util/ArrayList;)Landroid/animation/Animator;

    move-result-object v4

    .line 1770
    .local v4, animSet:Landroid/animation/Animator;
    new-instance v10, Lcom/htc/app/mf/MfMainActivity$AnimationListener;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lcom/htc/app/mf/MfMainActivity$AnimationListener;-><init>(Lcom/htc/app/mf/MfMainActivity;Lcom/htc/app/mf/MfMainActivity$1;)V

    .line 1772
    .local v10, listener:Lcom/htc/app/mf/MfMainActivity$AnimationListener;
    if-eqz p7, :cond_16

    .line 1773
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v18, v0

    .line 1775
    .local v18, viewsToCache:[Landroid/view/View;
    const/4 v9, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_15

    .line 1776
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    move/from16 v20, v0

    add-int v20, v20, v9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/htc/app/mf/MfMainActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v7

    .line 1777
    .local v7, ff:Landroid/app/Fragment;
    if-eqz v7, :cond_14

    .line 1778
    invoke-virtual {v7}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v20

    aput-object v20, v18, v9

    .line 1775
    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 1782
    .end local v7           #ff:Landroid/app/Fragment;
    :cond_15
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->setViewsToCache([Landroid/view/View;)V

    .line 1785
    .end local v18           #viewsToCache:[Landroid/view/View;
    :cond_16
    if-eqz v6, :cond_17

    .line 1786
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/htc/app/mf/MfMainActivity$AnimationListener;->setAfterAnimationRects([Lcom/htc/app/mf/PaneRect;)V

    .line 1789
    :cond_17
    invoke-virtual {v4, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1791
    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-static {v4, v0, v1, v2, v3}, Lcom/htc/app/mf/Animation;->setTiming(Landroid/animation/Animator;JJ)V

    .line 1793
    if-eqz p5, :cond_0

    .line 1795
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/app/mf/MfMainActivity;->mRunningAnimator:Landroid/animation/Animator;

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/mf/MfMainActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/htc/app/mf/MfMainActivity$AnimatorRunner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/htc/app/mf/MfMainActivity$AnimatorRunner;-><init>(Lcom/htc/app/mf/MfMainActivity;Landroid/animation/Animator;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2
.end method

.method private canReuse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "index"
    .parameter "fName"
    .parameter "reuseId"

    .prologue
    const/4 v3, 0x0

    .line 2322
    if-nez p4, :cond_1

    .line 2354
    :cond_0
    :goto_0
    return v3

    .line 2326
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/app/mf/MfMainActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v2

    .line 2328
    .local v2, f:Landroid/app/Fragment;
    instance-of v4, v2, Lcom/htc/app/mf/IMfFragment;

    if-eqz v4, :cond_0

    .line 2332
    const/4 v0, 0x0

    .line 2335
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p1, :cond_2

    .line 2336
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2344
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 2348
    invoke-virtual {v2}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is reusable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 2354
    const/4 v3, 0x1

    goto :goto_0

    .line 2338
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/app/mf/MfMainActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 2340
    :catch_0
    move-exception v1

    .line 2341
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private changeCurrentPaneLayouts([Lcom/htc/app/mf/PaneRect;)V
    .locals 4
    .parameter "rects"

    .prologue
    .line 1603
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ge v0, v2, :cond_0

    .line 1604
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1605
    .local v1, pane:Landroid/view/View;
    aget-object v2, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/htc/app/mf/MfMainActivity;->changePaneLayout(Landroid/view/View;Lcom/htc/app/mf/PaneRect;)V

    .line 1603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1607
    .end local v1           #pane:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private changePaneLayout(Landroid/view/View;Lcom/htc/app/mf/PaneRect;)V
    .locals 5
    .parameter "pane"
    .parameter "rect"

    .prologue
    .line 1580
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1582
    .local v0, lps:Landroid/widget/FrameLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 1583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lps of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/app/mf/MfLog;->w(Ljava/lang/String;)V

    .line 1584
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0           #lps:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p2, Lcom/htc/app/mf/PaneRect;->width:I

    iget v2, p2, Lcom/htc/app/mf/PaneRect;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1587
    .restart local v0       #lps:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget v1, p2, Lcom/htc/app/mf/PaneRect;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1588
    iget v1, p2, Lcom/htc/app/mf/PaneRect;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1590
    iget v1, p2, Lcom/htc/app/mf/PaneRect;->x:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1591
    iget v1, p2, Lcom/htc/app/mf/PaneRect;->y:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1596
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1598
    iget v1, p2, Lcom/htc/app/mf/PaneRect;->paddingLeft:I

    iget v2, p2, Lcom/htc/app/mf/PaneRect;->paddingTop:I

    iget v3, p2, Lcom/htc/app/mf/PaneRect;->paddingRight:I

    iget v4, p2, Lcom/htc/app/mf/PaneRect;->paddingBottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1600
    return-void
.end method

.method private checkL2PSetting(III)V
    .locals 2
    .parameter "landNum"
    .parameter "portNum"
    .parameter "l2p"

    .prologue
    .line 1973
    iget-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mIsStarted:Z

    if-eqz v0, :cond_0

    add-int v0, p2, p3

    if-le v0, p1, :cond_0

    .line 1974
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "panes in portrait  + L2PShowedPane > panes in landscape"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1977
    :cond_0
    return-void
.end method

.method private clonePaneRects([Lcom/htc/app/mf/PaneRect;)[Lcom/htc/app/mf/PaneRect;
    .locals 5
    .parameter "src"

    .prologue
    .line 2183
    array-length v0, p1

    .line 2185
    .local v0, RN:I
    new-array v1, v0, [Lcom/htc/app/mf/PaneRect;

    .line 2187
    .local v1, dst:[Lcom/htc/app/mf/PaneRect;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2188
    new-instance v3, Lcom/htc/app/mf/PaneRect;

    aget-object v4, p1, v2

    invoke-direct {v3, v4}, Lcom/htc/app/mf/PaneRect;-><init>(Lcom/htc/app/mf/PaneRect;)V

    aput-object v3, v1, v2

    .line 2187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2191
    :cond_0
    return-object v1
.end method

.method private commitFt(Landroid/app/FragmentTransaction;Z)V
    .locals 2
    .parameter "ft"
    .parameter "invalidateMenu"

    .prologue
    .line 2011
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2014
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2020
    :goto_0
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mFmReflection:Lcom/htc/app/mf/FragmentManagerReflection;

    invoke-virtual {v1}, Lcom/htc/app/mf/FragmentManagerReflection;->execList()V

    .line 2022
    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/htc/app/mf/MfMainActivity;->mIsIgnoringMenuUpdate:Z

    if-nez v1, :cond_0

    .line 2023
    invoke-virtual {p0}, Lcom/htc/app/mf/MfMainActivity;->invalidateOptionsMenu()V

    .line 2026
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/app/mf/MfMainActivity;->mIsIgnoringMenuUpdate:Z

    .line 2027
    return-void

    .line 2015
    :catch_0
    move-exception v0

    .line 2017
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "recursive calling execPendingActions()"

    invoke-static {v1}, Lcom/htc/app/mf/MfLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private countMainLayoutWH([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V
    .locals 1
    .parameter "landRects"
    .parameter "portRects"

    .prologue
    .line 2197
    iget-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mIsMainWHSet:Z

    if-eqz v0, :cond_0

    .line 2205
    :goto_0
    return-void

    .line 2201
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/app/mf/MfMainActivity;->getMaxWidth([Lcom/htc/app/mf/PaneRect;)I

    move-result v0

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mLandWidth:I

    .line 2202
    invoke-direct {p0, p1}, Lcom/htc/app/mf/MfMainActivity;->getMaxHeight([Lcom/htc/app/mf/PaneRect;)I

    move-result v0

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mLandHeight:I

    .line 2203
    invoke-direct {p0, p2}, Lcom/htc/app/mf/MfMainActivity;->getMaxWidth([Lcom/htc/app/mf/PaneRect;)I

    move-result v0

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mPortWidth:I

    .line 2204
    invoke-direct {p0, p2}, Lcom/htc/app/mf/MfMainActivity;->getMaxHeight([Lcom/htc/app/mf/PaneRect;)I

    move-result v0

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mPortHeight:I

    goto :goto_0
.end method

.method private execBackToPreviousPane()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1491
    iget-object v5, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRects:[Lcom/htc/app/mf/PaneRect;

    .line 1493
    .local v5, rects:[Lcom/htc/app/mf/PaneRect;
    iget-object v6, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1495
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-direct {p0, v0, v8, v9}, Lcom/htc/app/mf/MfMainActivity;->setTransition(Landroid/app/FragmentTransaction;ZZ)V

    .line 1497
    iget v6, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/lit8 v3, v6, -0x1

    .line 1498
    .local v3, indexToShow:I
    iget v6, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    add-int/2addr v6, v7

    add-int/lit8 v2, v6, -0x1

    .line 1501
    .local v2, indexToHide:I
    invoke-direct {p0, v3, v8, v0}, Lcom/htc/app/mf/MfMainActivity;->showPane(IZLandroid/app/FragmentTransaction;)V

    .line 1502
    invoke-direct {p0, v2, v9, v0}, Lcom/htc/app/mf/MfMainActivity;->showPane(IZLandroid/app/FragmentTransaction;)V

    .line 1504
    iget v6, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    .line 1506
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v6, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ge v1, v6, :cond_0

    .line 1507
    iget-object v6, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/2addr v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1508
    .local v4, pane:Landroid/view/View;
    aget-object v6, v5, v1

    invoke-direct {p0, v4, v6}, Lcom/htc/app/mf/MfMainActivity;->changePaneLayout(Landroid/view/View;Lcom/htc/app/mf/PaneRect;)V

    .line 1506
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1511
    .end local v4           #pane:Landroid/view/View;
    :cond_0
    invoke-direct {p0, v0, v8}, Lcom/htc/app/mf/MfMainActivity;->commitFt(Landroid/app/FragmentTransaction;Z)V

    .line 1512
    return-void
.end method

.method private execPopFragmentBackStack()V
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    .line 1371
    invoke-virtual {p0}, Lcom/htc/app/mf/MfMainActivity;->invalidateOptionsMenu()V

    .line 1373
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1374
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mUsingBSIndex:I

    .line 1376
    :cond_0
    return-void
.end method

.method private execStartFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V
    .locals 14
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "position"
    .parameter "reuseId"
    .parameter "stackUp"

    .prologue
    .line 1200
    iget-object v13, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRects:[Lcom/htc/app/mf/PaneRect;

    .line 1202
    .local v13, rects:[Lcom/htc/app/mf/PaneRect;
    iget v1, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int v11, v1, p4

    .line 1204
    .local v11, index:I
    iget v1, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    move/from16 v0, p4

    if-ne v0, v1, :cond_1

    const/4 v9, 0x1

    .line 1206
    .local v9, shift:Z
    :goto_0
    const/4 v6, 0x0

    .line 1208
    .local v6, ft:Landroid/app/FragmentTransaction;
    if-eqz v9, :cond_0

    .line 1209
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    .line 1211
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v11, v1, :cond_2

    .line 1212
    iget v1, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v13, v1

    invoke-direct {p0, v1}, Lcom/htc/app/mf/MfMainActivity;->addNewPane(Lcom/htc/app/mf/PaneRect;)V

    :cond_0
    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    .line 1218
    invoke-direct/range {v1 .. v9}, Lcom/htc/app/mf/MfMainActivity;->startFragmentInternal(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILandroid/app/FragmentTransaction;Ljava/lang/String;ZZ)V

    .line 1221
    if-eqz v9, :cond_4

    .line 1222
    iget v1, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v6}, Lcom/htc/app/mf/MfMainActivity;->showPane(IZLandroid/app/FragmentTransaction;)V

    .line 1224
    iget v1, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    .line 1226
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    iget v1, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ge v10, v1, :cond_3

    .line 1227
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/2addr v2, v10

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 1228
    .local v12, pane:Landroid/view/View;
    aget-object v1, v13, v10

    invoke-direct {p0, v12, v1}, Lcom/htc/app/mf/MfMainActivity;->changePaneLayout(Landroid/view/View;Lcom/htc/app/mf/PaneRect;)V

    .line 1226
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1204
    .end local v6           #ft:Landroid/app/FragmentTransaction;
    .end local v9           #shift:Z
    .end local v10           #i:I
    .end local v12           #pane:Landroid/view/View;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 1214
    .restart local v6       #ft:Landroid/app/FragmentTransaction;
    .restart local v9       #shift:Z
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v11, v1, v6}, Lcom/htc/app/mf/MfMainActivity;->showPane(IZLandroid/app/FragmentTransaction;)V

    goto :goto_1

    .line 1231
    .restart local v10       #i:I
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v6, v1}, Lcom/htc/app/mf/MfMainActivity;->commitFt(Landroid/app/FragmentTransaction;Z)V

    .line 1233
    .end local v10           #i:I
    :cond_4
    return-void
.end method

.method private getCarouselTabFragment(Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 3
    .parameter "carousel"

    .prologue
    const/4 v1, 0x0

    .line 2098
    instance-of v2, p1, Lcom/htc/fragment/widget/CarouselFragment;

    if-nez v2, :cond_1

    .line 2107
    .end local p1
    :cond_0
    :goto_0
    return-object v1

    .line 2102
    .restart local p1
    :cond_1
    check-cast p1, Lcom/htc/fragment/widget/CarouselFragment;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/fragment/widget/CarouselFragment;->getCarouselHost()Lcom/htc/fragment/widget/CarouselHost;

    move-result-object v0

    .line 2103
    .local v0, ch:Lcom/htc/fragment/widget/CarouselHost;
    if-eqz v0, :cond_0

    .line 2107
    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTabFragment()Landroid/app/Fragment;

    move-result-object v1

    goto :goto_0
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 2
    .parameter "index"

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1967
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    const v1, 0x36f8056f

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0
.end method

.method private getMaxHeight([Lcom/htc/app/mf/PaneRect;)I
    .locals 8
    .parameter "rects"

    .prologue
    const/4 v5, -0x1

    .line 2241
    iget v6, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    if-eq v6, v5, :cond_1

    iget v6, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    array-length v7, p1

    if-ge v6, v7, :cond_1

    .line 2242
    iget v6, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    aget-object v4, p1, v6

    .line 2243
    .local v4, rect:Lcom/htc/app/mf/PaneRect;
    if-eqz v4, :cond_1

    .line 2244
    iget v1, v4, Lcom/htc/app/mf/PaneRect;->height:I

    .line 2263
    .end local v4           #rect:Lcom/htc/app/mf/PaneRect;
    :cond_0
    :goto_0
    return v1

    .line 2248
    :cond_1
    const/4 v1, 0x0

    .line 2250
    .local v1, height:I
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/app/mf/PaneRect;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 2252
    .restart local v4       #rect:Lcom/htc/app/mf/PaneRect;
    iget v6, v4, Lcom/htc/app/mf/PaneRect;->height:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_2

    .line 2253
    const-string v6, "PaneRect setting using WRAP_CONTENT"

    invoke-static {v6}, Lcom/htc/app/mf/MfLog;->w(Ljava/lang/String;)V

    .line 2256
    :cond_2
    iget v6, v4, Lcom/htc/app/mf/PaneRect;->height:I

    if-ne v6, v5, :cond_3

    move v1, v5

    .line 2257
    goto :goto_0

    .line 2260
    :cond_3
    iget v6, v4, Lcom/htc/app/mf/PaneRect;->y:I

    iget v7, v4, Lcom/htc/app/mf/PaneRect;->height:I

    add-int/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2250
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getMaxWidth([Lcom/htc/app/mf/PaneRect;)I
    .locals 8
    .parameter "rects"

    .prologue
    const/4 v5, -0x1

    .line 2210
    iget v6, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    if-eq v6, v5, :cond_1

    iget v6, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    array-length v7, p1

    if-ge v6, v7, :cond_1

    .line 2211
    iget v6, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    aget-object v3, p1, v6

    .line 2212
    .local v3, rect:Lcom/htc/app/mf/PaneRect;
    if-eqz v3, :cond_1

    .line 2213
    iget v4, v3, Lcom/htc/app/mf/PaneRect;->width:I

    .line 2235
    .end local v3           #rect:Lcom/htc/app/mf/PaneRect;
    :cond_0
    :goto_0
    return v4

    .line 2220
    :cond_1
    const/4 v4, 0x0

    .line 2222
    .local v4, width:I
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/app/mf/PaneRect;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2224
    .restart local v3       #rect:Lcom/htc/app/mf/PaneRect;
    iget v6, v3, Lcom/htc/app/mf/PaneRect;->width:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_2

    .line 2225
    const-string v6, "PaneRect setting using WRAP_CONTENT"

    invoke-static {v6}, Lcom/htc/app/mf/MfLog;->w(Ljava/lang/String;)V

    .line 2228
    :cond_2
    iget v6, v3, Lcom/htc/app/mf/PaneRect;->width:I

    if-ne v6, v5, :cond_3

    move v4, v5

    .line 2229
    goto :goto_0

    .line 2232
    :cond_3
    iget v6, v3, Lcom/htc/app/mf/PaneRect;->x:I

    iget v7, v3, Lcom/htc/app/mf/PaneRect;->width:I

    add-int/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getViewChildCount(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 2166
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 2167
    check-cast v3, Landroid/view/ViewGroup;

    .line 2169
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2170
    .local v0, cnt:I
    const/4 v2, 0x0

    .line 2172
    .local v2, subc:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2173
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/app/mf/MfMainActivity;->getViewChildCount(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 2172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2176
    :cond_0
    add-int/lit8 v4, v2, 0x1

    .line 2179
    .end local v0           #cnt:I
    .end local v1           #i:I
    .end local v2           #subc:I
    .end local v3           #vg:Landroid/view/ViewGroup;
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private handleSameFragment(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "index"
    .parameter "fName"
    .parameter "args"

    .prologue
    .line 2113
    invoke-direct {p0, p1}, Lcom/htc/app/mf/MfMainActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v1

    .line 2115
    .local v1, f:Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 2116
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2117
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 2118
    if-eqz p3, :cond_0

    .line 2119
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2123
    :cond_0
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mFmReflection:Lcom/htc/app/mf/FragmentManagerReflection;

    invoke-virtual {v2, v1}, Lcom/htc/app/mf/FragmentManagerReflection;->pauseFragment(Landroid/app/Fragment;)V

    move-object v2, v1

    .line 2125
    check-cast v2, Lcom/htc/app/mf/IMfFragment;

    invoke-interface {v2, p3}, Lcom/htc/app/mf/IMfFragment;->onNewArguments(Landroid/os/Bundle;)V

    .line 2127
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mFmReflection:Lcom/htc/app/mf/FragmentManagerReflection;

    invoke-virtual {v2, v1}, Lcom/htc/app/mf/FragmentManagerReflection;->resumeFragment(Landroid/app/Fragment;)V

    .line 2128
    return-void
.end method

.method private illegalIfNotStarted()V
    .locals 2

    .prologue
    .line 1986
    iget-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 1987
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mf is not started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1989
    :cond_0
    return-void
.end method

.method private illegalIfStarted()V
    .locals 2

    .prologue
    .line 1980
    iget-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 1981
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mf is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1983
    :cond_0
    return-void
.end method

.method private isPresent(Landroid/app/Fragment;)Z
    .locals 1
    .parameter "f"

    .prologue
    .line 2161
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private popFragmentBackStack()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1340
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return v2

    .line 1344
    :cond_1
    iget v4, p0, Lcom/htc/app/mf/MfMainActivity;->mUsingBSIndex:I

    iget v5, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    sub-int v0, v4, v5

    .line 1346
    .local v0, position:I
    if-ltz v0, :cond_0

    iget v4, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ge v0, v4, :cond_0

    .line 1350
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->useActivityTransition()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ne v2, v3, :cond_2

    .line 1351
    const-string v2, "use window transition in popFragmentBackStack"

    invoke-static {v2}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 1353
    new-instance v1, Lcom/htc/app/mf/MfMainActivity$ExecPopFragmentBackStackRunner;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/app/mf/MfMainActivity$ExecPopFragmentBackStackRunner;-><init>(Lcom/htc/app/mf/MfMainActivity;Lcom/htc/app/mf/MfMainActivity$1;)V

    .line 1355
    .local v1, r:Ljava/lang/Runnable;
    iput-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningTransition:Ljava/lang/Runnable;

    .line 1357
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mAnimator:Lcom/htc/app/mf/Animation;

    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity;->mOnWindowTransitionEndRunner:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v1, v4}, Lcom/htc/app/mf/Animation;->doWindowExitTransition(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .end local v1           #r:Ljava/lang/Runnable;
    :goto_1
    move v2, v3

    .line 1364
    goto :goto_0

    .line 1361
    :cond_2
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->execPopFragmentBackStack()V

    goto :goto_1
.end method

.method private rearrangePanesOnRotate()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1387
    iget-object v6, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRects:[Lcom/htc/app/mf/PaneRect;

    .line 1389
    .local v6, rects:[Lcom/htc/app/mf/PaneRect;
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mLandPaneN:I

    iget v8, p0, Lcom/htc/app/mf/MfMainActivity;->mPortPaneN:I

    if-ge v7, v8, :cond_0

    .line 1392
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "LandPane num < PortPane num is not supported currently"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1396
    :cond_0
    iget-object v7, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1401
    .local v0, PN:I
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mLandPaneN:I

    iget v8, p0, Lcom/htc/app/mf/MfMainActivity;->mPortPaneN:I

    if-le v7, v8, :cond_4

    .line 1403
    iget-object v7, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1405
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-direct {p0, v2, v10, v9}, Lcom/htc/app/mf/MfMainActivity;->setTransition(Landroid/app/FragmentTransaction;ZZ)V

    .line 1408
    iget-boolean v7, p0, Lcom/htc/app/mf/MfMainActivity;->mIsPortrait:Z

    if-eqz v7, :cond_6

    .line 1409
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mL2PShowedPane:I

    if-ge v4, v7, :cond_1

    .line 1410
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/2addr v7, v4

    invoke-direct {p0, v7, v9, v2}, Lcom/htc/app/mf/MfMainActivity;->showPane(IZLandroid/app/FragmentTransaction;)V

    .line 1409
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1412
    :cond_1
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mL2PShowedPane:I

    iget v8, p0, Lcom/htc/app/mf/MfMainActivity;->mPortPaneN:I

    add-int v4, v7, v8

    :goto_1
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mLandPaneN:I

    if-ge v4, v7, :cond_2

    .line 1413
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/2addr v7, v4

    invoke-direct {p0, v7, v9, v2}, Lcom/htc/app/mf/MfMainActivity;->showPane(IZLandroid/app/FragmentTransaction;)V

    .line 1412
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1415
    :cond_2
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    iget v8, p0, Lcom/htc/app/mf/MfMainActivity;->mL2PShowedPane:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    .line 1450
    :cond_3
    :goto_2
    invoke-direct {p0, v2, v10}, Lcom/htc/app/mf/MfMainActivity;->commitFt(Landroid/app/FragmentTransaction;Z)V

    .line 1454
    .end local v2           #ft:Landroid/app/FragmentTransaction;
    .end local v4           #i:I
    :cond_4
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-le v7, v0, :cond_5

    .line 1455
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "something wrong, using spec="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/app/mf/MfMainActivity;->mUsingSpec:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", PN="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/app/mf/MfLog;->w(Ljava/lang/String;)V

    .line 1458
    :cond_5
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ge v4, v7, :cond_b

    if-ge v4, v0, :cond_b

    .line 1459
    iget-object v7, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    iget v8, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/2addr v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1460
    .local v5, pane:Landroid/view/View;
    aget-object v7, v6, v4

    invoke-direct {p0, v5, v7}, Lcom/htc/app/mf/MfMainActivity;->changePaneLayout(Landroid/view/View;Lcom/htc/app/mf/PaneRect;)V

    .line 1458
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1419
    .end local v4           #i:I
    .end local v5           #pane:Landroid/view/View;
    .restart local v2       #ft:Landroid/app/FragmentTransaction;
    :cond_6
    move v4, v0

    .restart local v4       #i:I
    :goto_4
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ge v4, v7, :cond_7

    .line 1420
    aget-object v7, v6, v4

    invoke-direct {p0, v7}, Lcom/htc/app/mf/MfMainActivity;->addNewPane(Lcom/htc/app/mf/PaneRect;)V

    .line 1419
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1423
    :cond_7
    const/4 v3, 0x0

    .line 1426
    .local v3, head:I
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-le v0, v7, :cond_8

    .line 1427
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    iget v8, p0, Lcom/htc/app/mf/MfMainActivity;->mL2PShowedPane:I

    sub-int/2addr v7, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1428
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    sub-int v7, v0, v7

    if-le v3, v7, :cond_8

    .line 1429
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    sub-int v3, v0, v7

    .line 1433
    :cond_8
    move v4, v3

    :goto_5
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    if-ge v4, v7, :cond_9

    .line 1434
    invoke-direct {p0, v4, v10, v2}, Lcom/htc/app/mf/MfMainActivity;->showPane(IZLandroid/app/FragmentTransaction;)V

    .line 1433
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1437
    :cond_9
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mLandPaneN:I

    add-int v1, v3, v7

    .line 1439
    .local v1, bound:I
    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    iget v8, p0, Lcom/htc/app/mf/MfMainActivity;->mPortPaneN:I

    add-int v4, v7, v8

    :goto_6
    if-ge v4, v1, :cond_a

    .line 1440
    invoke-direct {p0, v4, v10, v2}, Lcom/htc/app/mf/MfMainActivity;->showPane(IZLandroid/app/FragmentTransaction;)V

    .line 1439
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1443
    :cond_a
    iput v3, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    .line 1445
    iget-boolean v7, p0, Lcom/htc/app/mf/MfMainActivity;->mIsAllInitFgtStarted:Z

    if-nez v7, :cond_3

    .line 1446
    invoke-direct {p0, v2}, Lcom/htc/app/mf/MfMainActivity;->startUnstartedFragments(Landroid/app/FragmentTransaction;)V

    goto/16 :goto_2

    .line 1462
    .end local v1           #bound:I
    .end local v2           #ft:Landroid/app/FragmentTransaction;
    .end local v3           #head:I
    :cond_b
    return-void
.end method

.method private resetFullScreenInternal(IIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;
    .locals 9
    .parameter "duration"
    .parameter "refresh"
    .parameter "autoStart"
    .parameter "timing"
    .parameter "useViewCache"

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1949
    const-string v0, "another resize operation is running, ignore this"

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->w(Ljava/lang/String;)V

    .line 1950
    const/4 v8, 0x0

    .line 1958
    :goto_0
    return-object v8

    .line 1953
    :cond_0
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mLandRects:[Lcom/htc/app/mf/PaneRect;

    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mPortRects:[Lcom/htc/app/mf/PaneRect;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/app/mf/MfMainActivity;->applyNewPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;IIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    move-result-object v8

    .line 1956
    .local v8, ret:Landroid/animation/Animator;
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    goto :goto_0
.end method

.method private setCurrentOrientationStatus(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "conf"

    .prologue
    const/4 v0, 0x1

    .line 2131
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mIsPortrait:Z

    .line 2133
    iget-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mIsPortrait:Z

    if-eqz v0, :cond_1

    .line 2134
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mPortRects:[Lcom/htc/app/mf/PaneRect;

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRects:[Lcom/htc/app/mf/PaneRect;

    .line 2135
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mPortPaneN:I

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    .line 2140
    :goto_1
    return-void

    .line 2131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2137
    :cond_1
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mLandRects:[Lcom/htc/app/mf/PaneRect;

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRects:[Lcom/htc/app/mf/PaneRect;

    .line 2138
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mLandPaneN:I

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    goto :goto_1
.end method

.method private setCurrentWHStatus()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2144
    iget-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mIsPortrait:Z

    if-eqz v0, :cond_1

    .line 2145
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mPortWidth:I

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentWidth:I

    .line 2146
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mPortHeight:I

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHeight:I

    .line 2152
    :goto_0
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mLandWidth:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mLandHeight:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mPortWidth:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mPortHeight:I

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mIsMatchParentInRectsSetting:Z

    .line 2157
    return-void

    .line 2148
    :cond_1
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mLandWidth:I

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentWidth:I

    .line 2149
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mLandHeight:I

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHeight:I

    goto :goto_0

    .line 2152
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setFullScreenInternal(IIIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;
    .locals 17
    .parameter "position"
    .parameter "duration"
    .parameter "refresh"
    .parameter "autoStart"
    .parameter "timing"
    .parameter "useViewCache"

    .prologue
    .line 1847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/mf/MfMainActivity;->mRunningAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    .line 1848
    const-string v2, "another resize operation is running, ignore this"

    invoke-static {v2}, Lcom/htc/app/mf/MfLog;->w(Ljava/lang/String;)V

    .line 1849
    const/4 v11, 0x0

    .line 1903
    :goto_0
    return-object v11

    .line 1852
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/mf/MfMainActivity;->mIsMatchParentInRectsSetting:Z

    if-eqz v2, :cond_1

    .line 1853
    const-string v2, "since App uses MATCH_PARENT in setPaneRects(), setFullScreen() might work abnormal"

    invoke-static {v2}, Lcom/htc/app/mf/MfLog;->w(Ljava/lang/String;)V

    .line 1857
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    new-array v12, v2, [Lcom/htc/app/mf/PaneRect;

    .line 1859
    .local v12, fsRects:[Lcom/htc/app/mf/PaneRect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRects:[Lcom/htc/app/mf/PaneRect;

    aget-object v14, v2, p1

    .line 1861
    .local v14, theOne:Lcom/htc/app/mf/PaneRect;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ge v13, v2, :cond_8

    .line 1863
    move/from16 v0, p1

    if-ne v13, v0, :cond_2

    .line 1864
    new-instance v2, Lcom/htc/app/mf/PaneRect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/app/mf/MfMainActivity;->mCurrentWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHeight:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPadding:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPadding:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPadding:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPadding:[I

    const/16 v16, 0x3

    aget v10, v10, v16

    invoke-direct/range {v2 .. v10}, Lcom/htc/app/mf/PaneRect;-><init>(IIIIIIII)V

    aput-object v2, v12, v13

    .line 1861
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1868
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRects:[Lcom/htc/app/mf/PaneRect;

    aget-object v15, v2, v13

    .line 1870
    .local v15, theOther:Lcom/htc/app/mf/PaneRect;
    new-instance v2, Lcom/htc/app/mf/PaneRect;

    invoke-direct {v2, v15}, Lcom/htc/app/mf/PaneRect;-><init>(Lcom/htc/app/mf/PaneRect;)V

    aput-object v2, v12, v13

    .line 1872
    iget v2, v15, Lcom/htc/app/mf/PaneRect;->x:I

    iget v3, v14, Lcom/htc/app/mf/PaneRect;->x:I

    if-le v2, v3, :cond_3

    .line 1874
    aget-object v2, v12, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/app/mf/MfMainActivity;->mCurrentWidth:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/htc/app/mf/PaneRect;->x:I

    goto :goto_2

    .line 1876
    :cond_3
    iget v2, v15, Lcom/htc/app/mf/PaneRect;->x:I

    iget v3, v14, Lcom/htc/app/mf/PaneRect;->x:I

    if-ge v2, v3, :cond_5

    .line 1879
    aget-object v3, v12, v13

    aget-object v2, v12, v13

    iget v2, v2, Lcom/htc/app/mf/PaneRect;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/mf/MfMainActivity;->mCurrentWidth:I

    :goto_3
    neg-int v2, v2

    add-int/lit8 v2, v2, -0x2

    iput v2, v3, Lcom/htc/app/mf/PaneRect;->x:I

    goto :goto_2

    :cond_4
    aget-object v2, v12, v13

    iget v2, v2, Lcom/htc/app/mf/PaneRect;->width:I

    goto :goto_3

    .line 1882
    :cond_5
    iget v2, v15, Lcom/htc/app/mf/PaneRect;->y:I

    iget v3, v14, Lcom/htc/app/mf/PaneRect;->y:I

    if-le v2, v3, :cond_6

    .line 1884
    aget-object v2, v12, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHeight:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/htc/app/mf/PaneRect;->y:I

    goto :goto_2

    .line 1888
    :cond_6
    aget-object v3, v12, v13

    aget-object v2, v12, v13

    iget v2, v2, Lcom/htc/app/mf/PaneRect;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHeight:I

    :goto_4
    neg-int v2, v2

    add-int/lit8 v2, v2, -0x2

    iput v2, v3, Lcom/htc/app/mf/PaneRect;->y:I

    goto :goto_2

    :cond_7
    aget-object v2, v12, v13

    iget v2, v2, Lcom/htc/app/mf/PaneRect;->height:I

    goto :goto_4

    .line 1895
    .end local v15           #theOther:Lcom/htc/app/mf/PaneRect;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/app/mf/MfMainActivity;->mIsPortrait:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/app/mf/MfMainActivity;->mLandRects:[Lcom/htc/app/mf/PaneRect;

    move-object/from16 v2, p0

    move-object v4, v12

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/htc/app/mf/MfMainActivity;->applyNewPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;IIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    move-result-object v11

    .line 1901
    .local v11, anim:Landroid/animation/Animator;
    :goto_5
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    goto/16 :goto_0

    .line 1895
    .end local v11           #anim:Landroid/animation/Animator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/app/mf/MfMainActivity;->mPortRects:[Lcom/htc/app/mf/PaneRect;

    move-object/from16 v2, p0

    move-object v3, v12

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/htc/app/mf/MfMainActivity;->applyNewPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;IIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    move-result-object v11

    goto :goto_5
.end method

.method private setPaneRectsInternal([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;IIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;
    .locals 3
    .parameter "landRects"
    .parameter "portRects"
    .parameter "duration"
    .parameter "refresh"
    .parameter "autoStart"
    .parameter "timing"
    .parameter "useViewCache"

    .prologue
    .line 1613
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 1614
    const-string v1, "another resize operation is running, ignore this"

    invoke-static {v1}, Lcom/htc/app/mf/MfLog;->w(Ljava/lang/String;)V

    .line 1615
    const/4 v0, 0x0

    .line 1647
    .end local p2
    :cond_0
    :goto_0
    return-object v0

    .line 1618
    .restart local p2
    :cond_1
    iget-boolean v1, p0, Lcom/htc/app/mf/MfMainActivity;->mIsStarted:Z

    if-eqz v1, :cond_3

    array-length v1, p1

    iget v2, p0, Lcom/htc/app/mf/MfMainActivity;->mLandPaneN:I

    if-ne v1, v2, :cond_2

    array-length v1, p2

    iget v2, p0, Lcom/htc/app/mf/MfMainActivity;->mPortPaneN:I

    if-eq v1, v2, :cond_3

    .line 1620
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "cannot change number of rects after mf being started"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1624
    :cond_3
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mLandRects:[Lcom/htc/app/mf/PaneRect;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1625
    invoke-direct {p0, p1}, Lcom/htc/app/mf/MfMainActivity;->clonePaneRects([Lcom/htc/app/mf/PaneRect;)[Lcom/htc/app/mf/PaneRect;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mLandRects:[Lcom/htc/app/mf/PaneRect;

    .line 1626
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mLandRects:[Lcom/htc/app/mf/PaneRect;

    array-length v1, v1

    iput v1, p0, Lcom/htc/app/mf/MfMainActivity;->mLandPaneN:I

    .line 1629
    :cond_4
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mPortRects:[Lcom/htc/app/mf/PaneRect;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1630
    invoke-direct {p0, p2}, Lcom/htc/app/mf/MfMainActivity;->clonePaneRects([Lcom/htc/app/mf/PaneRect;)[Lcom/htc/app/mf/PaneRect;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mPortRects:[Lcom/htc/app/mf/PaneRect;

    .line 1631
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mPortRects:[Lcom/htc/app/mf/PaneRect;

    array-length v1, v1

    iput v1, p0, Lcom/htc/app/mf/MfMainActivity;->mPortPaneN:I

    .line 1636
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/htc/app/mf/MfMainActivity;->countMainLayoutWH([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V

    .line 1638
    const/4 v0, 0x0

    .line 1640
    .local v0, anim:Landroid/animation/Animator;
    iget-boolean v1, p0, Lcom/htc/app/mf/MfMainActivity;->mIsStarted:Z

    if-eqz v1, :cond_0

    .line 1641
    invoke-direct/range {p0 .. p7}, Lcom/htc/app/mf/MfMainActivity;->applyNewPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;IIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    move-result-object v0

    .line 1644
    iget-boolean v1, p0, Lcom/htc/app/mf/MfMainActivity;->mIsPortrait:Z

    if-eqz v1, :cond_6

    .end local p2
    :goto_1
    iput-object p2, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRects:[Lcom/htc/app/mf/PaneRect;

    goto :goto_0

    .restart local p2
    :cond_6
    move-object p2, p1

    goto :goto_1
.end method

.method private setTransition(Landroid/app/FragmentTransaction;ZZ)V
    .locals 6
    .parameter "ft"
    .parameter "trans"
    .parameter "outTransit"

    .prologue
    const/4 v4, 0x0

    .line 1994
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/app/mf/MfMainActivity;->doFadeInOut()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/app/mf/MfMainActivity;->mIsPostResume:Z

    if-eqz v5, :cond_0

    const/4 p2, 0x1

    .line 1996
    :goto_0
    const v0, 0x20a0007

    .line 1997
    .local v0, in:I
    if-eqz p3, :cond_1

    const v1, 0x20a0008

    .line 1998
    .local v1, out:I
    :goto_1
    const v2, 0x20a0007

    .line 1999
    .local v2, popin:I
    const v3, 0x20a0008

    .line 2001
    .local v3, popout:I
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->useActivityTransition()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2002
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 2006
    :goto_2
    return-void

    .end local v0           #in:I
    .end local v1           #out:I
    .end local v2           #popin:I
    .end local v3           #popout:I
    :cond_0
    move p2, v4

    .line 1994
    goto :goto_0

    .restart local v0       #in:I
    :cond_1
    move v1, v4

    .line 1997
    goto :goto_1

    .line 2004
    .restart local v1       #out:I
    .restart local v2       #popin:I
    .restart local v3       #popout:I
    :cond_2
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    goto :goto_2
.end method

.method private showPane(IZLandroid/app/FragmentTransaction;)V
    .locals 4
    .parameter "index"
    .parameter "show"
    .parameter "ft"

    .prologue
    .line 1542
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 1575
    :cond_0
    :goto_0
    return-void

    .line 1545
    :cond_1
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1546
    .local v1, pane:Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/htc/app/mf/MfMainActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 1548
    .local v0, f:Landroid/app/Fragment;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPane(), index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", show="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pane="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 1550
    if-eqz p2, :cond_3

    .line 1552
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1554
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    .line 1555
    invoke-virtual {p0}, Lcom/htc/app/mf/MfMainActivity;->onlyHideOffScreenFragment()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1556
    invoke-virtual {p3, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 1559
    :cond_2
    invoke-virtual {p3, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 1564
    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1566
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    .line 1567
    invoke-virtual {p0}, Lcom/htc/app/mf/MfMainActivity;->onlyHideOffScreenFragment()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1568
    invoke-virtual {p3, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 1571
    :cond_4
    invoke-virtual {p3, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private startFragmentInternal(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILandroid/app/FragmentTransaction;Ljava/lang/String;ZZ)V
    .locals 9
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "position"
    .parameter "ft"
    .parameter "reuseId"
    .parameter "stackUp"
    .parameter "shift"

    .prologue
    .line 1244
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->illegalIfNotStarted()V

    .line 1246
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", portrait="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/htc/app/mf/MfMainActivity;->mIsPortrait:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", RN="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", args="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*HIDDEN*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", reuseId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", stackUp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 1251
    iget v6, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int v3, v6, p4

    .line 1253
    .local v3, index:I
    invoke-direct {p0, p1, v3, p2, p6}, Lcom/htc/app/mf/MfMainActivity;->canReuse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 1256
    .local v5, reuse:Z
    if-eqz p7, :cond_2

    .line 1257
    if-nez v5, :cond_0

    if-eqz p8, :cond_1

    .line 1258
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reuse="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", stackUp="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", shift="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1260
    :cond_1
    iget v6, p0, Lcom/htc/app/mf/MfMainActivity;->mUsingBSIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/htc/app/mf/MfMainActivity;->mUsingBSIndex:I

    if-eq v6, v3, :cond_2

    .line 1261
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "mf only support one pane to operate backstack function at the same time"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1266
    :cond_2
    if-eqz v5, :cond_4

    .line 1267
    invoke-direct {p0, v3, p2, p3}, Lcom/htc/app/mf/MfMainActivity;->handleSameFragment(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1311
    :cond_3
    :goto_0
    return-void

    .line 1272
    :cond_4
    if-nez p1, :cond_5

    .line 1273
    move-object p1, p0

    .line 1276
    :cond_5
    invoke-static {p1, p2, p3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    .line 1278
    .local v1, f:Landroid/app/Fragment;
    const/4 v4, 0x0

    .line 1280
    .local v4, ownFt:Z
    if-nez p5, :cond_6

    .line 1281
    const/4 v4, 0x1

    .line 1282
    iget-object v6, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p5

    .line 1286
    :cond_6
    iget-object v6, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v2

    .line 1288
    .local v2, frameId:I
    const/4 v7, 0x1

    if-nez p8, :cond_9

    const/4 v6, 0x1

    :goto_1
    invoke-direct {p0, p5, v7, v6}, Lcom/htc/app/mf/MfMainActivity;->setTransition(Landroid/app/FragmentTransaction;ZZ)V

    .line 1292
    invoke-virtual {p5, v2, v1, p6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1294
    const/4 v7, 0x0

    if-nez p8, :cond_a

    const/4 v6, 0x1

    :goto_2
    invoke-direct {p0, p5, v7, v6}, Lcom/htc/app/mf/MfMainActivity;->setTransition(Landroid/app/FragmentTransaction;ZZ)V

    .line 1299
    instance-of v6, v1, Lcom/htc/fragment/widget/CarouselFragment;

    if-eqz v6, :cond_7

    .line 1300
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/app/mf/MfMainActivity;->mIsIgnoringMenuUpdate:Z

    .line 1303
    :cond_7
    if-eqz v4, :cond_3

    .line 1304
    const/4 v6, 0x1

    move/from16 v0, p7

    if-ne v0, v6, :cond_8

    .line 1305
    const/4 v6, 0x0

    invoke-virtual {p5, v6}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1306
    iput v3, p0, Lcom/htc/app/mf/MfMainActivity;->mUsingBSIndex:I

    .line 1309
    :cond_8
    const/4 v6, 0x1

    invoke-direct {p0, p5, v6}, Lcom/htc/app/mf/MfMainActivity;->commitFt(Landroid/app/FragmentTransaction;Z)V

    goto :goto_0

    .line 1288
    :cond_9
    const/4 v6, 0x0

    goto :goto_1

    .line 1294
    :cond_a
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private startUnstartedFragments()V
    .locals 2

    .prologue
    .line 1079
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1081
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-direct {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->startUnstartedFragments(Landroid/app/FragmentTransaction;)V

    .line 1082
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/app/mf/MfMainActivity;->commitFt(Landroid/app/FragmentTransaction;Z)V

    .line 1083
    return-void
.end method

.method private startUnstartedFragments(Landroid/app/FragmentTransaction;)V
    .locals 10
    .parameter "ft"

    .prologue
    const/4 v7, 0x0

    .line 1088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mIsAllInitFgtStarted:Z

    .line 1090
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mInitFgtNames:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1113
    :cond_0
    return-void

    .line 1094
    :cond_1
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mInitFgtNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1095
    iput-boolean v7, p0, Lcom/htc/app/mf/MfMainActivity;->mIsAllInitFgtStarted:Z

    .line 1098
    :cond_2
    const/4 v4, 0x0

    .local v4, rIndex:I
    iget v9, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    .line 1099
    .local v9, fIndex:I
    :goto_0
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ge v4, v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mInitFgtNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mInitFgtNames:[Ljava/lang/String;

    aget-object v0, v0, v9

    if-nez v0, :cond_4

    .line 1100
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1106
    :cond_4
    invoke-direct {p0, v9}, Lcom/htc/app/mf/MfMainActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1110
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mInitFgtNames:[Ljava/lang/String;

    aget-object v2, v0, v9

    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mInitFgtArgs:[Landroid/os/Bundle;

    aget-object v3, v0, v9

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p0

    move-object v5, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/htc/app/mf/MfMainActivity;->startFragmentInternal(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILandroid/app/FragmentTransaction;Ljava/lang/String;ZZ)V

    goto :goto_1
.end method

.method private superInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 750
    const-string v0, "super.invalidateOptionsMenu"

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 751
    invoke-super {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 752
    return-void
.end method

.method private useActivityTransition()Z
    .locals 1

    .prologue
    .line 1379
    iget-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mMimicActivityTransition:Z

    return v0
.end method


# virtual methods
.method public addOnActivityDispatchKeyListener(Lcom/htc/app/mf/IMfFragment;)V
    .locals 2
    .parameter "imf"

    .prologue
    .line 2279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOnActivityDispatchKeyListener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 2280
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mDispatchKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2281
    return-void
.end method

.method public addOnActivityKeyDownListener(Lcom/htc/app/mf/IMfFragment;)V
    .locals 2
    .parameter "imf"

    .prologue
    .line 2284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOnActivityKeyDownListener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 2285
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mKeyDownListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2286
    return-void
.end method

.method public addOnActivityKeyUpListener(Lcom/htc/app/mf/IMfFragment;)V
    .locals 2
    .parameter "imf"

    .prologue
    .line 2289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOnActivityKeyUpListener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 2290
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mKeyUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2291
    return-void
.end method

.method public afterAnimation()V
    .locals 0

    .prologue
    .line 652
    return-void
.end method

.method public backToPreviousPane()V
    .locals 4

    .prologue
    .line 1465
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1467
    .local v0, PN:I
    iget v2, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    iget v3, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    add-int/2addr v2, v3

    if-le v2, v0, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1471
    :cond_1
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->useActivityTransition()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1472
    const-string v2, "use window transition in backToPreviousePane"

    invoke-static {v2}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 1474
    new-instance v1, Lcom/htc/app/mf/MfMainActivity$ExecBackToPreviousPaneRunner;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/app/mf/MfMainActivity$ExecBackToPreviousPaneRunner;-><init>(Lcom/htc/app/mf/MfMainActivity;Lcom/htc/app/mf/MfMainActivity$1;)V

    .line 1476
    .local v1, r:Ljava/lang/Runnable;
    iput-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningTransition:Ljava/lang/Runnable;

    .line 1478
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mAnimator:Lcom/htc/app/mf/Animation;

    iget-object v3, p0, Lcom/htc/app/mf/MfMainActivity;->mOnWindowTransitionEndRunner:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v1, v3}, Lcom/htc/app/mf/Animation;->doWindowExitTransition(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1482
    .end local v1           #r:Ljava/lang/Runnable;
    :cond_2
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->execBackToPreviousPane()V

    goto :goto_0
.end method

.method public beforeAnimation()V
    .locals 0

    .prologue
    .line 647
    return-void
.end method

.method deliverMessage(Ljava/lang/Object;I)V
    .locals 3
    .parameter "message"
    .parameter "position"

    .prologue
    .line 2556
    iget v2, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/2addr v2, p2

    invoke-direct {p0, v2}, Lcom/htc/app/mf/MfMainActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 2557
    .local v0, f:Landroid/app/Fragment;
    instance-of v2, v0, Lcom/htc/app/mf/IMfFragment;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 2558
    check-cast v1, Lcom/htc/app/mf/IMfFragment;

    .line 2559
    .local v1, imf:Lcom/htc/app/mf/IMfFragment;
    invoke-interface {v1, p1}, Lcom/htc/app/mf/IMfFragment;->onReceiveMessage(Ljava/lang/Object;)V

    .line 2561
    .end local v1           #imf:Lcom/htc/app/mf/IMfFragment;
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "kv"

    .prologue
    .line 508
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningAnimator:Landroid/animation/Animator;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningTransition:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 509
    :cond_0
    const/4 v2, 0x1

    .line 517
    :goto_0
    return v2

    .line 512
    :cond_1
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mDispatchKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/mf/IMfFragment;

    .local v0, f:Lcom/htc/app/mf/IMfFragment;
    move-object v2, v0

    .line 513
    check-cast v2, Landroid/app/Fragment;

    invoke-direct {p0, v2}, Lcom/htc/app/mf/MfMainActivity;->isPresent(Landroid/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    invoke-interface {v0, p1}, Lcom/htc/app/mf/IMfFragment;->onActivityDispatchKey(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 517
    .end local v0           #f:Lcom/htc/app/mf/IMfFragment;
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningTransition:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 551
    :cond_0
    const/4 v0, 0x1

    .line 553
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected doFadeInOut()Z
    .locals 1

    .prologue
    .line 999
    const/4 v0, 0x1

    return v0
.end method

.method public finishFragment(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 1318
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->illegalIfNotStarted()V

    .line 1320
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 1337
    :cond_0
    :goto_0
    return-void

    .line 1324
    :cond_1
    iget v2, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/htc/app/mf/MfMainActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 1326
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1330
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1332
    .local v1, ft:Landroid/app/FragmentTransaction;
    invoke-direct {p0, v1, v3, v3}, Lcom/htc/app/mf/MfMainActivity;->setTransition(Landroid/app/FragmentTransaction;ZZ)V

    .line 1334
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1336
    invoke-direct {p0, v1, v3}, Lcom/htc/app/mf/MfMainActivity;->commitFt(Landroid/app/FragmentTransaction;Z)V

    goto :goto_0
.end method

.method public getCurrentRectsNum()I
    .locals 1

    .prologue
    .line 2275
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    return v0
.end method

.method getFirstLevelId(Lcom/htc/app/mf/IMfFragment;)I
    .locals 10
    .parameter "imf"

    .prologue
    .line 2494
    instance-of v8, p1, Landroid/app/Fragment;

    if-nez v8, :cond_1

    .line 2495
    const/4 v3, -0x1

    .line 2516
    :cond_0
    return v3

    :cond_1
    move-object v1, p1

    .line 2497
    check-cast v1, Landroid/app/Fragment;

    .line 2499
    .local v1, f:Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 2501
    .local v6, v:Landroid/view/View;
    iget-object v8, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2502
    .local v0, PN:I
    new-array v4, v0, [I

    .line 2504
    .local v4, ids:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2505
    iget-object v8, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2506
    .local v5, pane:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 2507
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v8

    aput v8, v4, v2

    .line 2504
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2520
    .end local v5           #pane:Landroid/view/View;
    .local v3, id:I
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 2522
    .local v7, vp:Landroid/view/ViewParent;
    instance-of v8, v7, Landroid/view/View;

    if-eqz v8, :cond_5

    move-object v6, v7

    .line 2523
    check-cast v6, Landroid/view/View;

    .line 2510
    .end local v3           #id:I
    .end local v7           #vp:Landroid/view/ViewParent;
    :cond_4
    if-eqz v6, :cond_5

    .line 2511
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v3

    .line 2514
    .restart local v3       #id:I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 2515
    aget v8, v4, v2

    if-eq v3, v8, :cond_0

    .line 2514
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2529
    .end local v3           #id:I
    :cond_5
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "your fragment hasn\'t been placed in a pane. maybe it is not on screen now, please check a valid view is returned from onCreateView()"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getFullScreen()I
    .locals 1

    .prologue
    .line 1910
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    return v0
.end method

.method public getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;
    .locals 2
    .parameter "position"

    .prologue
    .line 2538
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->illegalIfNotStarted()V

    .line 2539
    iget v1, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/htc/app/mf/MfMainActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 2540
    .local v0, f:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/htc/app/mf/IMfFragment;

    if-nez v1, :cond_0

    .line 2541
    const/4 v0, 0x0

    .line 2543
    .end local v0           #f:Landroid/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0       #f:Landroid/app/Fragment;
    :cond_0
    check-cast v0, Lcom/htc/app/mf/IMfFragment;

    goto :goto_0
.end method

.method getPositionById(I)I
    .locals 2
    .parameter "id"

    .prologue
    const v0, 0x36f8056f

    .line 2547
    if-ge p1, v0, :cond_0

    .line 2548
    const/4 v0, -0x1

    .line 2552
    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, v0

    iget v1, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 4

    .prologue
    .line 745
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mMenuInvalidater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 746
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mMenuInvalidater:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 747
    return-void
.end method

.method isListeningOnActivityDispatchKey(Lcom/htc/app/mf/IMfFragment;)Z
    .locals 1
    .parameter "imf"

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mDispatchKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isListeningOnActivityKeyDown(Lcom/htc/app/mf/IMfFragment;)Z
    .locals 1
    .parameter "imf"

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mKeyDownListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isListeningOnActivityKeyUp(Lcom/htc/app/mf/IMfFragment;)Z
    .locals 1
    .parameter "imf"

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mKeyUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected mimicActivityTransition()Z
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 2410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AM onFinished, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 2412
    iget-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mIsDestroyMyActionMode:Z

    if-nez v0, :cond_0

    .line 2413
    const-string v0, "AM destroying others action mode"

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 2431
    :goto_0
    return-void

    .line 2417
    :cond_0
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    check-cast v0, Landroid/app/Fragment;

    invoke-direct {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->isPresent(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2418
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    invoke-interface {v0, p1}, Lcom/htc/app/mf/IMfFragment;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 2421
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AM onFinished, old="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mNextActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 2427
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mNextActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    .line 2428
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mNextActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    .line 2430
    iput-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AM onStarted, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 2397
    iput-object p1, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningActionMode:Landroid/view/ActionMode;

    .line 2399
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    check-cast v0, Landroid/app/Fragment;

    invoke-direct {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->isPresent(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2400
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    invoke-interface {v0, p1}, Lcom/htc/app/mf/IMfFragment;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 2402
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 606
    const-string v0, "onBackPressed"

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/htc/app/mf/MfMainActivity;->getFullScreen()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 610
    const/4 v3, 0x1

    sget-object v4, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    move-object v0, p0

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/mf/MfMainActivity;->resetFullScreenInternal(IIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->popFragmentBackStack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 625
    invoke-virtual {p0}, Lcom/htc/app/mf/MfMainActivity;->backToPreviousPane()V

    goto :goto_0

    .line 630
    :cond_2
    invoke-virtual {p0}, Lcom/htc/app/mf/MfMainActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConf"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 558
    iget-boolean v9, p0, Lcom/htc/app/mf/MfMainActivity;->mIsPortrait:Z

    .line 559
    .local v9, wasPortrait:Z
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_3

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mIsPortrait:Z

    .line 561
    iget-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mIsPortrait:Z

    if-eq v9, v0, :cond_2

    .line 563
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    if-le v0, v3, :cond_4

    move v8, v4

    .line 564
    .local v8, inFullScreenMode:Z
    :goto_1
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    iget v1, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int v7, v0, v1

    .line 566
    .local v7, fullScreenIndex:I
    invoke-direct {p0, p1}, Lcom/htc/app/mf/MfMainActivity;->setCurrentOrientationStatus(Landroid/content/res/Configuration;)V

    .line 567
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->setCurrentWHStatus()V

    .line 570
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningTransition:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mAnimator:Lcom/htc/app/mf/Animation;

    invoke-virtual {v0, p0}, Lcom/htc/app/mf/Animation;->cancelWindowTransition(Landroid/app/Activity;)V

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningTransition:Ljava/lang/Runnable;

    .line 580
    :cond_1
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->rearrangePanesOnRotate()V

    .line 583
    if-eqz v8, :cond_2

    .line 584
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    sub-int v0, v7, v0

    iput v0, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    .line 586
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    iget v1, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ge v0, v1, :cond_5

    .line 587
    iget v1, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    sget-object v5, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    move-object v0, p0

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/app/mf/MfMainActivity;->setFullScreenInternal(IIIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    .line 595
    .end local v7           #fullScreenIndex:I
    .end local v8           #inFullScreenMode:Z
    :cond_2
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 596
    return-void

    :cond_3
    move v0, v2

    .line 559
    goto :goto_0

    :cond_4
    move v8, v2

    .line 563
    goto :goto_1

    .line 590
    .restart local v7       #fullScreenIndex:I
    .restart local v8       #inFullScreenMode:Z
    :cond_5
    iput v3, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "sis"

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/app/mf/MfMainActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 461
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;I)V
    .locals 2
    .parameter "sis"
    .parameter "spec"

    .prologue
    .line 464
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 466
    invoke-virtual {p0}, Lcom/htc/app/mf/MfMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    .line 467
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mContainer:Landroid/widget/FrameLayout;

    .line 468
    new-instance v0, Lcom/htc/app/mf/FragmentManagerReflection;

    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    invoke-direct {v0, v1}, Lcom/htc/app/mf/FragmentManagerReflection;-><init>(Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mFmReflection:Lcom/htc/app/mf/FragmentManagerReflection;

    .line 470
    invoke-virtual {p0, p2}, Lcom/htc/app/mf/MfMainActivity;->setupDefault(I)V

    .line 472
    invoke-virtual {p0}, Lcom/htc/app/mf/MfMainActivity;->mimicActivityTransition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mMimicActivityTransition:Z

    .line 473
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onCreateOptionsMenu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 661
    iput-boolean v2, p0, Lcom/htc/app/mf/MfMainActivity;->mIsOnCreateOptionsMenu:Z

    .line 662
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mAnimator:Lcom/htc/app/mf/Animation;

    invoke-virtual {v0, p0}, Lcom/htc/app/mf/Animation;->cancelWindowTransition(Landroid/app/Activity;)V

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningAnimator:Landroid/animation/Animator;

    .line 479
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 480
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 522
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningAnimator:Landroid/animation/Animator;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningTransition:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 523
    :cond_0
    const/4 v2, 0x1

    .line 531
    :goto_0
    return v2

    .line 526
    :cond_1
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mKeyDownListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/mf/IMfFragment;

    .local v0, f:Lcom/htc/app/mf/IMfFragment;
    move-object v2, v0

    .line 527
    check-cast v2, Landroid/app/Fragment;

    invoke-direct {p0, v2}, Lcom/htc/app/mf/MfMainActivity;->isPresent(Landroid/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    invoke-interface {v0, p1, p2}, Lcom/htc/app/mf/IMfFragment;->onActivityKeyDown(ILandroid/view/KeyEvent;)V

    goto :goto_1

    .line 531
    .end local v0           #f:Lcom/htc/app/mf/IMfFragment;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 536
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningAnimator:Landroid/animation/Animator;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningTransition:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 537
    :cond_0
    const/4 v2, 0x1

    .line 545
    :goto_0
    return v2

    .line 540
    :cond_1
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mKeyUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/mf/IMfFragment;

    .local v0, f:Lcom/htc/app/mf/IMfFragment;
    move-object v2, v0

    .line 541
    check-cast v2, Landroid/app/Fragment;

    invoke-direct {p0, v2}, Lcom/htc/app/mf/MfMainActivity;->isPresent(Landroid/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 542
    invoke-interface {v0, p1, p2}, Lcom/htc/app/mf/IMfFragment;->onActivityKeyUp(ILandroid/view/KeyEvent;)V

    goto :goto_1

    .line 545
    .end local v0           #f:Lcom/htc/app/mf/IMfFragment;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 722
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ge v1, v4, :cond_3

    .line 723
    iget v4, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/htc/app/mf/MfMainActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 724
    .local v0, f:Landroid/app/Fragment;
    invoke-direct {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->isPresent(Landroid/app/Fragment;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 722
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 727
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 739
    .end local v0           #f:Landroid/app/Fragment;
    :goto_1
    return v3

    .line 731
    .restart local v0       #f:Landroid/app/Fragment;
    :cond_2
    invoke-direct {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->getCarouselTabFragment(Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v2

    .line 732
    .local v2, tab:Landroid/app/Fragment;
    invoke-direct {p0, v2}, Lcom/htc/app/mf/MfMainActivity;->isPresent(Landroid/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 733
    invoke-virtual {v2, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 739
    .end local v0           #f:Landroid/app/Fragment;
    .end local v2           #tab:Landroid/app/Fragment;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 502
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mIsPostResume:Z

    .line 504
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    .line 668
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", onPrepareOptionsMenu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 670
    iget-boolean v4, p0, Lcom/htc/app/mf/MfMainActivity;->mIsStarted:Z

    if-nez v4, :cond_1

    .line 715
    :cond_0
    return v6

    .line 674
    :cond_1
    iget-boolean v4, p0, Lcom/htc/app/mf/MfMainActivity;->mIsOnCreateOptionsMenu:Z

    if-eqz v4, :cond_5

    .line 676
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 678
    invoke-virtual {p0}, Lcom/htc/app/mf/MfMainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 680
    .local v2, inflater:Landroid/view/MenuInflater;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ge v1, v4, :cond_4

    .line 681
    iget v4, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/htc/app/mf/MfMainActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 682
    .local v0, f:Landroid/app/Fragment;
    invoke-direct {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->isPresent(Landroid/app/Fragment;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 680
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    :cond_3
    invoke-virtual {v0, p1, v2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 687
    invoke-direct {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->getCarouselTabFragment(Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v3

    .line 694
    .local v3, tab:Landroid/app/Fragment;
    invoke-direct {p0, v3}, Lcom/htc/app/mf/MfMainActivity;->isPresent(Landroid/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 695
    invoke-virtual {v3, p1, v2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_1

    .line 699
    .end local v0           #f:Landroid/app/Fragment;
    .end local v3           #tab:Landroid/app/Fragment;
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/app/mf/MfMainActivity;->mIsOnCreateOptionsMenu:Z

    .line 702
    .end local v1           #i:I
    .end local v2           #inflater:Landroid/view/MenuInflater;
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget v4, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ge v1, v4, :cond_0

    .line 703
    iget v4, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/htc/app/mf/MfMainActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 704
    .restart local v0       #f:Landroid/app/Fragment;
    invoke-direct {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->isPresent(Landroid/app/Fragment;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 702
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 707
    :cond_7
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 709
    invoke-direct {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->getCarouselTabFragment(Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v3

    .line 710
    .restart local v3       #tab:Landroid/app/Fragment;
    invoke-direct {p0, v3}, Lcom/htc/app/mf/MfMainActivity;->isPresent(Landroid/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 711
    invoke-virtual {v3, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_3
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 488
    const-string v0, "mf is not started"

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->w(Ljava/lang/String;)V

    .line 489
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 498
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/mf/MfMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->setCurrentOrientationStatus(Landroid/content/res/Configuration;)V

    .line 495
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->setCurrentWHStatus()V

    .line 497
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 636
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 637
    const-string v0, "android:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    const-string v0, "remove instance state : android:fragments"

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 639
    const-string v0, "android:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 641
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2468
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ge v1, v3, :cond_3

    .line 2469
    iget v3, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/htc/app/mf/MfMainActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 2471
    .local v0, f:Landroid/app/Fragment;
    invoke-direct {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->isPresent(Landroid/app/Fragment;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2468
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 2474
    check-cast v3, Lcom/htc/app/mf/IMfFragment;

    invoke-interface {v3}, Lcom/htc/app/mf/IMfFragment;->onSearchRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 2486
    .end local v0           #f:Landroid/app/Fragment;
    :goto_1
    return v3

    .line 2478
    .restart local v0       #f:Landroid/app/Fragment;
    :cond_2
    invoke-direct {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->getCarouselTabFragment(Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v2

    .line 2479
    .local v2, tab:Landroid/app/Fragment;
    invoke-direct {p0, v2}, Lcom/htc/app/mf/MfMainActivity;->isPresent(Landroid/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2480
    check-cast v2, Lcom/htc/app/mf/IMfFragment;

    .end local v2           #tab:Landroid/app/Fragment;
    invoke-interface {v2}, Lcom/htc/app/mf/IMfFragment;->onSearchRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 2481
    goto :goto_1

    .line 2486
    .end local v0           #f:Landroid/app/Fragment;
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v3

    goto :goto_1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "callback"

    .prologue
    .line 2440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AM onWindowStarting, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 2442
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    check-cast v0, Landroid/app/Fragment;

    invoke-direct {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->isPresent(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2443
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    invoke-interface {v0, p1}, Lcom/htc/app/mf/IMfFragment;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 2445
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method

.method protected onlyHideOffScreenFragment()Z
    .locals 1

    .prologue
    .line 981
    const/4 v0, 0x1

    return v0
.end method

.method public removeOnActivityDispatchKeyListener(Lcom/htc/app/mf/IMfFragment;)V
    .locals 2
    .parameter "imf"

    .prologue
    .line 2294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOnActivityDispatchKeyListener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 2295
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mDispatchKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2296
    return-void
.end method

.method public removeOnActivityKeyDownListener(Lcom/htc/app/mf/IMfFragment;)V
    .locals 2
    .parameter "imf"

    .prologue
    .line 2299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOnActivityKeyDownListener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 2300
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mKeyDownListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2301
    return-void
.end method

.method public removeOnActivityKeyUpListener(Lcom/htc/app/mf/IMfFragment;)V
    .locals 2
    .parameter "imf"

    .prologue
    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOnActivityKeyUpListener, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 2305
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mKeyUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2306
    return-void
.end method

.method protected resetAll()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2033
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    if-nez v4, :cond_0

    .line 2095
    :goto_0
    return-void

    .line 2039
    :cond_0
    const/4 v2, 0x0

    .line 2041
    .local v2, havePopped:Z
    :goto_1
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v4

    if-eqz v4, :cond_1

    .line 2042
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->popBackStack()V

    .line 2043
    const/4 v2, 0x1

    goto :goto_1

    .line 2046
    :cond_1
    if-eqz v2, :cond_2

    .line 2047
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 2050
    :cond_2
    iput v7, p0, Lcom/htc/app/mf/MfMainActivity;->mUsingBSIndex:I

    .line 2054
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 2056
    .local v1, ft:Landroid/app/FragmentTransaction;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 2057
    invoke-direct {p0, v3}, Lcom/htc/app/mf/MfMainActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 2058
    .local v0, f:Landroid/app/Fragment;
    if-nez v0, :cond_3

    .line 2056
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2061
    :cond_3
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_3

    .line 2064
    .end local v0           #f:Landroid/app/Fragment;
    :cond_4
    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lcom/htc/app/mf/MfMainActivity;->commitFt(Landroid/app/FragmentTransaction;Z)V

    .line 2066
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2069
    iget-object v4, p0, Lcom/htc/app/mf/MfMainActivity;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2072
    iput-object v6, p0, Lcom/htc/app/mf/MfMainActivity;->mInitFgtNames:[Ljava/lang/String;

    .line 2073
    iput-object v6, p0, Lcom/htc/app/mf/MfMainActivity;->mInitFgtArgs:[Landroid/os/Bundle;

    .line 2075
    iput-object v6, p0, Lcom/htc/app/mf/MfMainActivity;->mLandRects:[Lcom/htc/app/mf/PaneRect;

    .line 2076
    iput-object v6, p0, Lcom/htc/app/mf/MfMainActivity;->mPortRects:[Lcom/htc/app/mf/PaneRect;

    .line 2077
    iput v5, p0, Lcom/htc/app/mf/MfMainActivity;->mLandPaneN:I

    .line 2078
    iput v5, p0, Lcom/htc/app/mf/MfMainActivity;->mPortPaneN:I

    .line 2080
    iput v5, p0, Lcom/htc/app/mf/MfMainActivity;->mL2PShowedPane:I

    .line 2081
    iput v5, p0, Lcom/htc/app/mf/MfMainActivity;->mEntryPane:I

    .line 2084
    iput v5, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    .line 2085
    iput-boolean v5, p0, Lcom/htc/app/mf/MfMainActivity;->mIsPortrait:Z

    .line 2086
    iput-object v6, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRects:[Lcom/htc/app/mf/PaneRect;

    .line 2087
    iput v5, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    .line 2088
    iput-boolean v5, p0, Lcom/htc/app/mf/MfMainActivity;->mIsStarted:Z

    .line 2089
    iput-boolean v5, p0, Lcom/htc/app/mf/MfMainActivity;->mIsAllInitFgtStarted:Z

    .line 2090
    iput-boolean v5, p0, Lcom/htc/app/mf/MfMainActivity;->mIsIgnoringMenuUpdate:Z

    .line 2091
    iput v7, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPane:I

    .line 2094
    iget v4, p0, Lcom/htc/app/mf/MfMainActivity;->mUsingSpec:I

    invoke-virtual {p0, v4}, Lcom/htc/app/mf/MfMainActivity;->setupDefault(I)V

    goto :goto_0
.end method

.method public resetFullScreen()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1917
    const/4 v3, 0x1

    sget-object v4, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    move-object v0, p0

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/mf/MfMainActivity;->resetFullScreenInternal(IIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    .line 1919
    return-void
.end method

.method public resetFullScreenAnimation(II)Landroid/animation/Animator;
    .locals 6
    .parameter "duration"
    .parameter "refresh"

    .prologue
    .line 1933
    const/4 v3, 0x1

    sget-object v4, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/mf/MfMainActivity;->resetFullScreenInternal(IIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public resetFullScreenAnimation(Lcom/htc/app/mf/Animation$ResizeParams;)Landroid/animation/Animator;
    .locals 6
    .parameter "params"

    .prologue
    .line 1940
    iget v1, p1, Lcom/htc/app/mf/Animation$Params;->mDuration:I

    iget v2, p1, Lcom/htc/app/mf/Animation$Params;->mRefresh:I

    iget-boolean v3, p1, Lcom/htc/app/mf/Animation$ResizeParams;->mAutoStart:Z

    iget-object v4, p1, Lcom/htc/app/mf/Animation$ResizeParams;->mResizeTiming:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    iget-boolean v5, p1, Lcom/htc/app/mf/Animation$ResizeParams;->mUseViewCache:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/mf/MfMainActivity;->resetFullScreenInternal(IIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public resetFullScreenAnimation()V
    .locals 6

    .prologue
    .line 1925
    const/16 v1, 0x12c

    const/16 v2, 0xa

    const/4 v3, 0x1

    sget-object v4, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/mf/MfMainActivity;->resetFullScreenInternal(IIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    .line 1927
    return-void
.end method

.method public setEntryFragment(I)V
    .locals 0
    .parameter "entry"

    .prologue
    .line 922
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->illegalIfStarted()V

    .line 923
    iput p1, p0, Lcom/htc/app/mf/MfMainActivity;->mEntryPane:I

    .line 924
    return-void
.end method

.method public setFullScreen(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 1813
    const/4 v4, 0x1

    sget-object v5, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/app/mf/MfMainActivity;->setFullScreenInternal(IIIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    .line 1815
    return-void
.end method

.method public setFullScreenAnimation(III)Landroid/animation/Animator;
    .locals 7
    .parameter "position"
    .parameter "duration"
    .parameter "refresh"

    .prologue
    .line 1830
    const/4 v4, 0x1

    sget-object v5, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/app/mf/MfMainActivity;->setFullScreenInternal(IIIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public setFullScreenAnimation(ILcom/htc/app/mf/Animation$ResizeParams;)Landroid/animation/Animator;
    .locals 7
    .parameter "position"
    .parameter "params"

    .prologue
    .line 1838
    iget v2, p2, Lcom/htc/app/mf/Animation$Params;->mDuration:I

    iget v3, p2, Lcom/htc/app/mf/Animation$Params;->mRefresh:I

    iget-boolean v4, p2, Lcom/htc/app/mf/Animation$ResizeParams;->mAutoStart:Z

    iget-object v5, p2, Lcom/htc/app/mf/Animation$ResizeParams;->mResizeTiming:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    iget-boolean v6, p2, Lcom/htc/app/mf/Animation$ResizeParams;->mUseViewCache:Z

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/app/mf/MfMainActivity;->setFullScreenInternal(IIIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public setFullScreenAnimation(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 1821
    const/16 v2, 0x12c

    const/16 v3, 0xa

    const/4 v4, 0x1

    sget-object v5, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/app/mf/MfMainActivity;->setFullScreenInternal(IIIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    .line 1823
    return-void
.end method

.method public setFullScreenPadding(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 961
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPadding:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 962
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPadding:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 963
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPadding:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 964
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mFullScreenPadding:[I

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 965
    return-void
.end method

.method protected setInitialFragments([Ljava/lang/String;[Landroid/os/Bundle;)V
    .locals 4
    .parameter "fragmentNames"
    .parameter "args"

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->illegalIfStarted()V

    .line 870
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 871
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "names.leng!=args.leng"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 874
    :cond_0
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mInitFgtNames:[Ljava/lang/String;

    .line 875
    array-length v1, p2

    new-array v1, v1, [Landroid/os/Bundle;

    iput-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mInitFgtArgs:[Landroid/os/Bundle;

    .line 877
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 878
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 879
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mInitFgtNames:[Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 881
    :cond_1
    aget-object v1, p2, v0

    if-eqz v1, :cond_2

    .line 882
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mInitFgtArgs:[Landroid/os/Bundle;

    new-instance v2, Landroid/os/Bundle;

    aget-object v3, p2, v0

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v2, v1, v0

    .line 877
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    :cond_3
    return-void
.end method

.method public setLand2PortShowedPane(I)V
    .locals 2
    .parameter "showedPane"

    .prologue
    .line 931
    iget v0, p0, Lcom/htc/app/mf/MfMainActivity;->mLandPaneN:I

    iget v1, p0, Lcom/htc/app/mf/MfMainActivity;->mPortPaneN:I

    invoke-direct {p0, v0, v1, p1}, Lcom/htc/app/mf/MfMainActivity;->checkL2PSetting(III)V

    .line 932
    iput p1, p0, Lcom/htc/app/mf/MfMainActivity;->mL2PShowedPane:I

    .line 933
    return-void
.end method

.method public setMainLayoutWidthHeight(IIII)V
    .locals 1
    .parameter "landWidth"
    .parameter "landHeight"
    .parameter "portWidth"
    .parameter "portHeight"

    .prologue
    .line 946
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/mf/MfMainActivity;->mIsMainWHSet:Z

    .line 948
    iput p1, p0, Lcom/htc/app/mf/MfMainActivity;->mLandWidth:I

    .line 949
    iput p2, p0, Lcom/htc/app/mf/MfMainActivity;->mLandHeight:I

    .line 950
    iput p3, p0, Lcom/htc/app/mf/MfMainActivity;->mPortWidth:I

    .line 951
    iput p4, p0, Lcom/htc/app/mf/MfMainActivity;->mPortHeight:I

    .line 953
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->setCurrentWHStatus()V

    .line 954
    return-void
.end method

.method public setPaneRects([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)V
    .locals 8
    .parameter "landRects"
    .parameter "portRects"

    .prologue
    const/4 v3, 0x0

    .line 894
    const/4 v5, 0x1

    sget-object v6, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/htc/app/mf/MfMainActivity;->setPaneRectsInternal([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;IIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    .line 896
    return-void
.end method

.method public setPaneRectsAnimation([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;)Landroid/animation/Animator;
    .locals 8
    .parameter "landRects"
    .parameter "portRects"

    .prologue
    .line 903
    const/16 v3, 0x12c

    const/16 v4, 0xa

    const/4 v5, 0x1

    sget-object v6, Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;->WithAnimation:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/htc/app/mf/MfMainActivity;->setPaneRectsInternal([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;IIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public setPaneRectsAnimation([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;Lcom/htc/app/mf/Animation$ResizeParams;)Landroid/animation/Animator;
    .locals 8
    .parameter "landRects"
    .parameter "portRects"
    .parameter "params"

    .prologue
    .line 911
    iget v3, p3, Lcom/htc/app/mf/Animation$Params;->mDuration:I

    iget v4, p3, Lcom/htc/app/mf/Animation$Params;->mRefresh:I

    iget-boolean v5, p3, Lcom/htc/app/mf/Animation$ResizeParams;->mAutoStart:Z

    iget-object v6, p3, Lcom/htc/app/mf/Animation$ResizeParams;->mResizeTiming:Lcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;

    iget-boolean v7, p3, Lcom/htc/app/mf/Animation$ResizeParams;->mUseViewCache:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/htc/app/mf/MfMainActivity;->setPaneRectsInternal([Lcom/htc/app/mf/PaneRect;[Lcom/htc/app/mf/PaneRect;IIZLcom/htc/app/mf/Animation$ResizeParams$ResizeTiming;Z)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method protected setupActionBarExt()Lcom/htc/widget/ActionBarExt;
    .locals 2

    .prologue
    .line 768
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v1, :cond_0

    .line 769
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 780
    :goto_0
    return-object v1

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/mf/MfMainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 774
    .local v0, ab:Landroid/app/ActionBar;
    if-nez v0, :cond_1

    .line 775
    const/4 v1, 0x0

    goto :goto_0

    .line 778
    :cond_1
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-direct {v1, p0, v0}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 780
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    goto :goto_0
.end method

.method protected setupDefault(I)V
    .locals 0
    .parameter "spec"

    .prologue
    .line 859
    iput p1, p0, Lcom/htc/app/mf/MfMainActivity;->mUsingSpec:I

    .line 860
    invoke-static {p1, p0}, Lcom/htc/app/mf/MfSpec;->setupDefault(ILcom/htc/app/mf/MfMainActivity;)V

    .line 861
    return-void
.end method

.method protected setupHtcActionBar(II)Lcom/htc/widget/HtcActionBar;
    .locals 1
    .parameter "iconResId"
    .parameter "titleResId"

    .prologue
    .line 787
    const/4 v0, 0x0

    return-object v0
.end method

.method startActionMode(Lcom/htc/app/mf/IMfFragment;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .parameter "imf"
    .parameter "callback"

    .prologue
    .line 2374
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    if-eqz v1, :cond_0

    .line 2375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AM start, old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 2376
    iput-object p1, p0, Lcom/htc/app/mf/MfMainActivity;->mNextActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    .line 2382
    :goto_0
    new-instance v0, Lcom/htc/app/mf/MfMainActivity$ActionModeCallbackWrapper;

    invoke-direct {v0, p0, p2}, Lcom/htc/app/mf/MfMainActivity$ActionModeCallbackWrapper;-><init>(Lcom/htc/app/mf/MfMainActivity;Landroid/view/ActionMode$Callback;)V

    .line 2386
    .local v0, w:Landroid/view/ActionMode$Callback;
    invoke-virtual {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    return-object v1

    .line 2378
    .end local v0           #w:Landroid/view/ActionMode$Callback;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AM start, new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 2379
    iput-object p1, p0, Lcom/htc/app/mf/MfMainActivity;->mActionModeStarter:Lcom/htc/app/mf/IMfFragment;

    goto :goto_0
.end method

.method public startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 7
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "position"

    .prologue
    .line 1126
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/app/mf/MfMainActivity;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V

    .line 1127
    return-void
.end method

.method public startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "position"
    .parameter "reuseId"

    .prologue
    .line 1142
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/app/mf/MfMainActivity;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V

    .line 1143
    return-void
.end method

.method startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V
    .locals 9
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "position"
    .parameter "reuseId"
    .parameter "stackUp"

    .prologue
    const/4 v1, 0x1

    .line 1166
    iget v2, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-gt p4, v2, :cond_0

    if-gez p4, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    iget v2, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    add-int/2addr v2, p4

    iget-object v3, p0, Lcom/htc/app/mf/MfMainActivity;->mPanes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1172
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1175
    :cond_2
    iget v2, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ne p4, v2, :cond_4

    move v8, v1

    .line 1177
    .local v8, shift:Z
    :goto_1
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->useActivityTransition()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ne v2, v1, :cond_5

    if-nez p6, :cond_3

    if-eqz v8, :cond_5

    .line 1179
    :cond_3
    const-string v1, "use window transition in startFragment"

    invoke-static {v1}, Lcom/htc/app/mf/MfLog;->d(Ljava/lang/String;)V

    .line 1181
    new-instance v0, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/app/mf/MfMainActivity$ExecStartFragmentRunner;-><init>(Lcom/htc/app/mf/MfMainActivity;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V

    .line 1184
    .local v0, r:Ljava/lang/Runnable;
    iput-object v0, p0, Lcom/htc/app/mf/MfMainActivity;->mRunningTransition:Ljava/lang/Runnable;

    .line 1186
    iget-object v1, p0, Lcom/htc/app/mf/MfMainActivity;->mAnimator:Lcom/htc/app/mf/Animation;

    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mOnWindowTransitionEndRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, p0, v0, v2}, Lcom/htc/app/mf/Animation;->doWindowEnterTransition(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1175
    .end local v0           #r:Ljava/lang/Runnable;
    .end local v8           #shift:Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 1189
    .restart local v8       #shift:Z
    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/htc/app/mf/MfMainActivity;->execStartFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public startFragment(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 7
    .parameter "fragmentName"
    .parameter "args"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 1121
    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/app/mf/MfMainActivity;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V

    .line 1122
    return-void
.end method

.method public startFragment(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;)V
    .locals 7
    .parameter "fragmentName"
    .parameter "args"
    .parameter "position"
    .parameter "reuseId"

    .prologue
    .line 1134
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/app/mf/MfMainActivity;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V

    .line 1135
    return-void
.end method

.method public startFragmentAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 7
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "position"

    .prologue
    .line 1160
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/app/mf/MfMainActivity;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V

    .line 1161
    return-void
.end method

.method public startFragmentAndStackUp(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 7
    .parameter "fragmentName"
    .parameter "args"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 1152
    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/app/mf/MfMainActivity;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V

    .line 1153
    return-void
.end method

.method protected startUpFragments()V
    .locals 6

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->illegalIfStarted()V

    .line 1014
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/app/mf/MfMainActivity;->mIsStarted:Z

    .line 1016
    iget v3, p0, Lcom/htc/app/mf/MfMainActivity;->mLandPaneN:I

    iget v4, p0, Lcom/htc/app/mf/MfMainActivity;->mPortPaneN:I

    iget v5, p0, Lcom/htc/app/mf/MfMainActivity;->mL2PShowedPane:I

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/app/mf/MfMainActivity;->checkL2PSetting(III)V

    .line 1018
    iget v3, p0, Lcom/htc/app/mf/MfMainActivity;->mLandPaneN:I

    iget v4, p0, Lcom/htc/app/mf/MfMainActivity;->mPortPaneN:I

    if-ge v3, v4, :cond_0

    .line 1019
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "current we don\'t support design that putting more panes in portrait than landscape"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1023
    :cond_0
    iget v3, p0, Lcom/htc/app/mf/MfMainActivity;->mEntryPane:I

    iget v4, p0, Lcom/htc/app/mf/MfMainActivity;->mPortPaneN:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/app/mf/MfMainActivity;->mLandPaneN:I

    if-le v3, v4, :cond_1

    .line 1024
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "entryPane+portPaneN > landPaneN"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1046
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/mf/MfMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1047
    .local v0, conf:Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/htc/app/mf/MfMainActivity;->setCurrentOrientationStatus(Landroid/content/res/Configuration;)V

    .line 1048
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->setCurrentWHStatus()V

    .line 1056
    iget v3, p0, Lcom/htc/app/mf/MfMainActivity;->mEntryPane:I

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/app/mf/MfMainActivity;->mIsPortrait:Z

    if-eqz v3, :cond_2

    .line 1057
    iget v3, p0, Lcom/htc/app/mf/MfMainActivity;->mEntryPane:I

    iput v3, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    .line 1061
    :cond_2
    iget-object v2, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRects:[Lcom/htc/app/mf/PaneRect;

    .line 1063
    .local v2, rects:[Lcom/htc/app/mf/PaneRect;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentHead:I

    if-ge v1, v3, :cond_3

    .line 1064
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/htc/app/mf/MfMainActivity;->addNewPane(Lcom/htc/app/mf/PaneRect;)V

    .line 1063
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1067
    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/htc/app/mf/MfMainActivity;->mCurrentRN:I

    if-ge v1, v3, :cond_4

    .line 1068
    aget-object v3, v2, v1

    invoke-direct {p0, v3}, Lcom/htc/app/mf/MfMainActivity;->addNewPane(Lcom/htc/app/mf/PaneRect;)V

    .line 1067
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1073
    :cond_4
    invoke-direct {p0}, Lcom/htc/app/mf/MfMainActivity;->startUnstartedFragments()V

    .line 1076
    return-void
.end method

.method superOnWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 2458
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
