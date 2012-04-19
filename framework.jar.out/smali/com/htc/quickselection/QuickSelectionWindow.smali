.class public Lcom/htc/quickselection/QuickSelectionWindow;
.super Ljava/lang/Object;
.source "QuickSelectionWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/quickselection/QuickSelectionWindow$ActionMap;,
        Lcom/htc/quickselection/QuickSelectionWindow$ActionList;,
        Lcom/htc/quickselection/QuickSelectionWindow$Action;
    }
.end annotation


# static fields
.field static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "QuickSelect"

.field private static final TOKEN_DATA:I = 0x1

.field static final TRACE_LAUNCH:Z = false

.field static final TRACE_TAG:Ljava/lang/String; = "quickselection"


# instance fields
.field private mActionPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mActionRecycled:I

.field private mActions:Lcom/htc/quickselection/QuickSelectionWindow$ActionMap;

.field private mAnchor:Landroid/graphics/Rect;

.field private mArrowDown:Landroid/widget/ImageView;

.field private mArrowUp:Landroid/widget/ImageView;

.field private mContent:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDismissed:Z

.field private mFooter:Landroid/view/View;

.field private mFooterDisambig:Landroid/view/View;

.field private mHasData:Z

.field private mHasValidSocial:Z

.field private mHeader:Landroid/view/View;

.field private mHtcContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastAction:Lcom/htc/quickselection/CheckableImageView;

.field private mMakePrimary:Z

.field private mMode:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRect:Landroid/graphics/Rect;

.field private mRequestedY:I

.field private mResolveList:Landroid/widget/ListView;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSetPrimaryCheckBox:Landroid/widget/CheckBox;

.field private mShadowHoriz:I

.field private mShadowTouch:I

.field private mShadowVert:I

.field private mShowing:Z

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackAnim:Landroid/view/animation/Animation;

.field private mTrackScroll:Landroid/widget/HorizontalScrollView;

.field private mWasDownArrow:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowRecycled:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 349
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mRect:Landroid/graphics/Rect;

    .line 169
    iput-boolean v5, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mDismissed:Z

    .line 173
    iput-boolean v5, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mShowing:Z

    .line 207
    iput-boolean v5, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mHasValidSocial:Z

    .line 209
    iput-boolean v5, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mHasData:Z

    .line 211
    iput-boolean v5, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mMakePrimary:Z

    .line 245
    iput v5, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mWindowRecycled:I

    .line 247
    iput v5, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mActionRecycled:I

    .line 261
    new-instance v3, Lcom/htc/quickselection/QuickSelectionWindow$ActionMap;

    invoke-direct {v3, p0, v6}, Lcom/htc/quickselection/QuickSelectionWindow$ActionMap;-><init>(Lcom/htc/quickselection/QuickSelectionWindow;Lcom/htc/quickselection/QuickSelectionWindow$1;)V

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mActions:Lcom/htc/quickselection/QuickSelectionWindow$ActionMap;

    .line 273
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mActionPool:Ljava/util/LinkedList;

    .line 913
    iput-boolean v5, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mWasDownArrow:Z

    .line 351
    iput-object p1, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mContext:Landroid/content/Context;

    .line 355
    :try_start_0
    const-string v3, "com.htc"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mHtcContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 368
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mHtcContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 382
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x2090076

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    .line 384
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mHtcContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 386
    .local v1, ll:Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 388
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 390
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, p0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 398
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x20200ea

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mArrowUp:Landroid/widget/ImageView;

    .line 400
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x2020093

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mArrowDown:Landroid/widget/ImageView;

    .line 408
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 410
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x20501cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mShadowHoriz:I

    .line 412
    const v3, 0x20501ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mShadowVert:I

    .line 414
    const v3, 0x20501cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mShadowTouch:I

    .line 418
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mScreenWidth:I

    .line 420
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mScreenHeight:I

    .line 424
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x2020169

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    .line 426
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x2020168

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mTrackScroll:Landroid/widget/HorizontalScrollView;

    .line 428
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 432
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x2020165

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mHeader:Landroid/view/View;

    .line 434
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x202016a

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mFooter:Landroid/view/View;

    .line 436
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x202016b

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mFooterDisambig:Landroid/view/View;

    .line 438
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mResolveList:Landroid/widget/ListView;

    .line 440
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const v4, 0x1020001

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    .line 444
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 450
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mHtcContext:Landroid/content/Context;

    const v4, 0x20a000e

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mTrackAnim:Landroid/view/animation/Animation;

    .line 452
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mTrackAnim:Landroid/view/animation/Animation;

    new-instance v4, Lcom/htc/quickselection/QuickSelectionWindow$1;

    invoke-direct {v4, p0}, Lcom/htc/quickselection/QuickSelectionWindow$1;-><init>(Lcom/htc/quickselection/QuickSelectionWindow;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 471
    return-void

    .line 357
    .end local v1           #ll:Landroid/widget/FrameLayout;
    .end local v2           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "QuickSelect"

    const-string v4, "com.htc not found!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mHtcContext:Landroid/content/Context;

    goto/16 :goto_0
.end method

.method private dismissInternal()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 877
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mShowing:Z

    .line 879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mDismissed:Z

    .line 893
    iget-object v0, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mHeader:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 899
    return-void
.end method

.method private inflateAction(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 3
    .parameter "icon"
    .parameter "listener"

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/htc/quickselection/QuickSelectionWindow;->obtainView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/quickselection/CheckableImageView;

    .line 487
    .local v1, view:Lcom/htc/quickselection/CheckableImageView;
    const/4 v0, 0x0

    .line 533
    .local v0, isActionSet:Z
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/quickselection/CheckableImageView;->setChecked(Z)V

    .line 537
    invoke-virtual {v1, p1}, Lcom/htc/quickselection/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 539
    if-nez p2, :cond_0

    .end local p0
    :goto_0
    invoke-virtual {v1, p0}, Lcom/htc/quickselection/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    return-object v1

    .restart local p0
    :cond_0
    move-object p0, p2

    .line 539
    goto :goto_0
.end method

.method private declared-synchronized obtainView()Landroid/view/View;
    .locals 5

    .prologue
    .line 1058
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mActionPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1060
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1062
    iget-object v1, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090078

    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1066
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1058
    .end local v0           #view:Landroid/view/View;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized releaseView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1037
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mActionPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 1039
    iget v0, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mActionRecycled:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mActionRecycled:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    monitor-exit p0

    return-void

    .line 1037
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetTrack()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 983
    iput-object v4, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mLastAction:Lcom/htc/quickselection/CheckableImageView;

    .line 991
    iget-object v0, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mActions:Lcom/htc/quickselection/QuickSelectionWindow$ActionMap;

    invoke-virtual {v0}, Lcom/htc/quickselection/QuickSelectionWindow$ActionMap;->clear()V

    .line 997
    :goto_0
    iget-object v0, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 999
    iget-object v0, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/quickselection/QuickSelectionWindow;->releaseView(Landroid/view/View;)V

    .line 1001
    iget-object v0, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mTrackScroll:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 1009
    iput-boolean v2, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mWasDownArrow:Z

    .line 1015
    iput-boolean v2, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mMakePrimary:Z

    .line 1017
    iget-object v0, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mSetPrimaryCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1021
    invoke-direct {p0, v2, v4}, Lcom/htc/quickselection/QuickSelectionWindow;->setResolveVisible(ZLcom/htc/quickselection/CheckableImageView;)V

    .line 1023
    return-void
.end method

.method private setResolveVisible(ZLcom/htc/quickselection/CheckableImageView;)V
    .locals 7
    .parameter "visible"
    .parameter "actionView"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 929
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mFooterDisambig:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 933
    .local v0, visibleNow:Z
    :goto_0
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mLastAction:Lcom/htc/quickselection/CheckableImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mLastAction:Lcom/htc/quickselection/CheckableImageView;

    invoke-virtual {v3, v2}, Lcom/htc/quickselection/CheckableImageView;->setChecked(Z)V

    .line 935
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Lcom/htc/quickselection/CheckableImageView;->setChecked(Z)V

    .line 937
    :cond_1
    iput-object p2, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mLastAction:Lcom/htc/quickselection/CheckableImageView;

    .line 943
    if-ne p1, v0, :cond_3

    .line 969
    :goto_1
    return-void

    .end local v0           #visibleNow:Z
    :cond_2
    move v0, v2

    .line 929
    goto :goto_0

    .line 947
    .restart local v0       #visibleNow:Z
    :cond_3
    iget-object v6, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mFooter:Landroid/view/View;

    if-eqz p1, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 949
    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mFooterDisambig:Landroid/view/View;

    if-eqz p1, :cond_4

    move v4, v2

    :cond_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 953
    if-eqz p1, :cond_8

    .line 957
    iget-boolean v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mWasDownArrow:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    iput-boolean v2, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mWasDownArrow:Z

    .line 959
    iget-object v1, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v3, v2

    .line 947
    goto :goto_2

    .line 965
    :cond_8
    iget-object v1, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mArrowDown:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mWasDownArrow:Z

    if-eqz v3, :cond_9

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_9
    move v2, v5

    goto :goto_3
.end method

.method private showArrow(II)V
    .locals 8
    .parameter "whichArrow"
    .parameter "requestedX"

    .prologue
    const v6, 0x20200ea

    .line 802
    if-ne p1, v6, :cond_0

    iget-object v5, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mArrowUp:Landroid/widget/ImageView;

    .line 804
    .local v5, showArrow:Landroid/view/View;
    :goto_0
    if-ne p1, v6, :cond_1

    iget-object v2, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mArrowDown:Landroid/widget/ImageView;

    .line 808
    .local v2, hideArrow:Landroid/view/View;
    :goto_1
    iget-object v6, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 810
    .local v0, arrowWidth:I
    shr-int/lit8 v1, v0, 0x1

    .line 812
    .local v1, half_arrorWidth:I
    iget v6, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mShadowHoriz:I

    shr-int/lit8 v3, v6, 0x1

    .line 816
    .local v3, left_right:I
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 818
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 820
    .local v4, param:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v6, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v6, v3

    sub-int/2addr v6, v1

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v3, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int/2addr v6, v1

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 826
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 827
    return-void

    .line 802
    .end local v0           #arrowWidth:I
    .end local v1           #half_arrorWidth:I
    .end local v2           #hideArrow:Landroid/view/View;
    .end local v3           #left_right:I
    .end local v4           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5           #showArrow:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mArrowDown:Landroid/widget/ImageView;

    goto :goto_0

    .line 804
    .restart local v5       #showArrow:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mArrowUp:Landroid/widget/ImageView;

    goto :goto_1
.end method


# virtual methods
.method public addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Landroid/util/EventLog$List;)V
    .locals 4
    .parameter "tag"
    .parameter "icon"
    .parameter "listener"
    .parameter "commands"

    .prologue
    .line 551
    invoke-direct {p0, p2, p3}, Lcom/htc/quickselection/QuickSelectionWindow;->inflateAction(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    .line 553
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 555
    iget-object v2, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 557
    .local v0, childSize:I
    iget-object v2, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 559
    return-void
.end method

.method public declared-synchronized dismiss()V
    .locals 1

    .prologue
    .line 849
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/quickselection/QuickSelectionWindow;->dismissInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    monitor-exit p0

    return-void

    .line 849
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1097
    iput-boolean p2, p0, Lcom/htc/quickselection/QuickSelectionWindow;->mMakePrimary:Z

    .line 1099
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1077
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1089
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1107
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1117
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 1127
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1137
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 1257
    const-string v0, "MARKLIAO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[QuickSelectionWindow::onTouch] >> v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    instance-of v0, p1, Lcom/htc/quickselection/CheckableImageView;

    if-eqz v0, :cond_0

    .line 1265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1281
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1291
    :cond_0
    :goto_0
    return v3

    .line 1271
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 1265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/htc/quickselection/QuickSelectionWindow;->resetTrack()V

    .line 567
    return-void
.end method

.method public declared-synchronized show(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "parent"
    .parameter "anchor"

    .prologue
    .line 581
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/quickselection/QuickSelectionWindow;->show(Landroid/view/View;Landroid/graphics/Rect;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    monitor-exit p0

    return-void

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized show(Landroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 16
    .parameter "parent"
    .parameter "anchor"
    .parameter "innerAnimation"

    .prologue
    .line 591
    monitor-enter p0

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mDismissed:Z

    .line 595
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mShowing:Z

    if-nez v13, :cond_0

    .line 597
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mScreenWidth:I

    .line 599
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mScreenHeight:I

    .line 607
    :cond_0
    const/4 v13, 0x2

    new-array v4, v13, [I

    .line 609
    .local v4, offsetOnScreen:[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 617
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v6

    .line 619
    .local v6, parentScrollY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    .line 623
    .local v5, parentScrollX:I
    neg-int v13, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    add-int/2addr v13, v14

    neg-int v14, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 627
    const/4 v13, 0x0

    aget v13, v4, v13

    const/4 v14, 0x1

    aget v14, v4, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v1, v13

    .line 633
    .local v1, cx:F
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v9, v13

    .line 645
    .local v9, ty:F
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mHeader:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 647
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/widget/RelativeLayout;->measure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 665
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v10

    .line 667
    .local v10, width:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v3

    .line 675
    .local v3, height:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 677
    if-eqz p3, :cond_1

    .line 679
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const v14, 0x203010f

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 683
    :cond_1
    const v8, 0x2020093

    .line 689
    .local v8, showArrow:I
    float-to-int v13, v1

    shr-int/lit8 v14, v10, 0x1

    sub-int v11, v13, v14

    .line 691
    .local v11, x:I
    float-to-int v13, v9

    sub-int v12, v13, v3

    .line 693
    .local v12, y:I
    if-gez v12, :cond_3

    .line 695
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v12, v13, 0x5

    .line 697
    if-eqz p3, :cond_2

    .line 699
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const v14, 0x2030110

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 701
    :cond_2
    const v8, 0x20200ea

    .line 703
    add-int v13, v12, v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mScreenHeight:I

    if-le v13, v14, :cond_3

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    shr-int/lit8 v14, v3, 0x1

    sub-int v12, v13, v14

    .line 711
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 713
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13, v11, v12, v10, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 741
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->isClippingEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mScreenWidth:I

    sub-int/2addr v14, v10

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 747
    .local v7, px:I
    :goto_2
    int-to-float v13, v7

    sub-float v13, v1, v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13}, Lcom/htc/quickselection/QuickSelectionWindow;->showArrow(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 791
    monitor-exit p0

    return-void

    .line 657
    .end local v3           #height:I
    .end local v7           #px:I
    .end local v8           #showArrow:I
    .end local v10           #width:I
    .end local v11           #x:I
    .end local v12           #y:I
    :catch_0
    move-exception v2

    .line 659
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    const-string v13, "MARKLIAO"

    const-string/jumbo v14, "measure error!"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 591
    .end local v1           #cx:F
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #offsetOnScreen:[I
    .end local v5           #parentScrollX:I
    .end local v6           #parentScrollY:I
    .end local v9           #ty:F
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 719
    .restart local v1       #cx:F
    .restart local v3       #height:I
    .restart local v4       #offsetOnScreen:[I
    .restart local v5       #parentScrollX:I
    .restart local v6       #parentScrollY:I
    .restart local v8       #showArrow:I
    .restart local v9       #ty:F
    .restart local v10       #width:I
    .restart local v11       #x:I
    .restart local v12       #y:I
    :cond_5
    const/4 v13, 0x1

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mShowing:Z

    .line 725
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13, v10}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 727
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 729
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v11, v12}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 733
    if-eqz p3, :cond_4

    .line 735
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/quickselection/QuickSelectionWindow;->mTrackAnim:Landroid/view/animation/Animation;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_6
    move v7, v11

    .line 741
    goto :goto_2
.end method
