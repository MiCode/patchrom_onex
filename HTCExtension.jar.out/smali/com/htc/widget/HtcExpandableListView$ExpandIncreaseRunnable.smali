.class Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;
.super Ljava/lang/Object;
.source "HtcExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandIncreaseRunnable"
.end annotation


# static fields
.field private static final MOVE_MODE:I = 0x1

.field private static final STOP_MODE:I


# instance fields
.field private mDistanceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightMovedDistance:I

.field private mHideViewCount:I

.field private mIndex:I

.field private mInit:Z

.field private mMode:I

.field private mPosition:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/htc/widget/HtcExpandableListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HtcExpandableListView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2072
    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2077
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mPosition:I

    .line 2078
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    .line 2079
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mHideViewCount:I

    .line 2080
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mMode:I

    .line 2081
    iput-boolean v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mInit:Z

    .line 2082
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mStartTime:J

    .line 2083
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mIndex:I

    .line 2084
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mHeightMovedDistance:I

    .line 2085
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HtcExpandableListView;Lcom/htc/widget/HtcExpandableListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2072
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;-><init>(Lcom/htc/widget/HtcExpandableListView;)V

    return-void
.end method

.method private end()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2108
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 2111
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/HtcExpandableListView;->access$900(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/htc/widget/HtcExpandableListView;->setHardwareLayerEnabled(Ljava/util/ArrayList;Z)V
    invoke-static {v0, v1, v2}, Lcom/htc/widget/HtcExpandableListView;->access$1000(Lcom/htc/widget/HtcExpandableListView;Ljava/util/ArrayList;Z)V

    .line 2112
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #calls: Lcom/htc/widget/HtcExpandableListView;->recoverChildren()V
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$1100(Lcom/htc/widget/HtcExpandableListView;)V

    .line 2114
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #setter for: Lcom/htc/widget/HtcExpandableListView;->mShouldDrawFakeDivider:Z
    invoke-static {v0, v2}, Lcom/htc/widget/HtcExpandableListView;->access$1202(Lcom/htc/widget/HtcExpandableListView;Z)Z

    .line 2115
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListView;->invalidate()V

    .line 2117
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mMode:I

    .line 2118
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$1300(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector;->unSetHideViewFlag()V

    .line 2119
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$900(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2120
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$1400(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2121
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2122
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2123
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$1500(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2124
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$1600(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2125
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, v1, Lcom/htc/widget/HtcExpandableListView;->mResetFooterHeight:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 2126
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iput-boolean v2, v0, Lcom/htc/widget/HtcAbsListView;->mAnimationRunning:Z

    .line 2127
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mAnimationListener:Lcom/htc/widget/HtcExpandableListView$AnimationListener;

    if-eqz v0, :cond_1

    .line 2128
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mAnimationListener:Lcom/htc/widget/HtcExpandableListView$AnimationListener;

    invoke-interface {v0}, Lcom/htc/widget/HtcExpandableListView$AnimationListener;->onAnimationEnd()V

    .line 2130
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$1700(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2131
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$1700(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mPosition:I

    invoke-interface {v0, v1}, Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 2133
    :cond_2
    return-void
.end method

.method private getTargetDistance()I
    .locals 8

    .prologue
    .line 2199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2200
    .local v0, now:J
    const/4 v2, 0x0

    .line 2202
    .local v2, targetDistance:I
    iget-wide v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 2203
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2207
    :goto_0
    return v2

    .line 2205
    :cond_0
    iget-wide v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mStartTime:J

    sub-long v4, v0, v3

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mIndex:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    div-long v3, v4, v6

    long-to-int v2, v3

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 2137
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$1300(Lcom/htc/widget/HtcExpandableListView;)Lcom/htc/widget/HtcExpandableListConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListConnector;->unSetHideViewFlag()V

    .line 2138
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$900(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mHideViewCount:I

    .line 2139
    iget v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mHideViewCount:I

    if-nez v0, :cond_0

    .line 2140
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->end()V

    .line 2154
    :goto_0
    return-void

    .line 2144
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mHideViewCount:I

    if-ge v6, v0, :cond_1

    .line 2145
    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewHeightList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$1400(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2144
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2148
    :cond_1
    iput v5, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mMode:I

    .line 2149
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mHideViewCount:I

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mDuration:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mStartTime:J

    #calls: Lcom/htc/widget/HtcExpandableListView;->setIncreaseDuration(ILjava/util/ArrayList;JZ)I
    invoke-static/range {v0 .. v5}, Lcom/htc/widget/HtcExpandableListView;->access$1800(Lcom/htc/widget/HtcExpandableListView;ILjava/util/ArrayList;JZ)I

    .line 2150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mStartTime:J

    .line 2151
    iput v7, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mIndex:I

    .line 2152
    iput v7, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mHeightMovedDistance:I

    .line 2153
    iput-boolean v5, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mInit:Z

    goto :goto_0
.end method

.method private nextView()V
    .locals 4

    .prologue
    .line 2157
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/widget/HtcExpandableListView;->access$900(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewHeightList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/HtcExpandableListView;->access$1400(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lcom/htc/widget/HtcExpandableListView;->setIncreaseViewHeight(Landroid/view/View;I)V
    invoke-static {v2, v0, v1}, Lcom/htc/widget/HtcExpandableListView;->access$1900(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;I)V

    .line 2158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mStartTime:J

    .line 2159
    iget v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mIndex:I

    .line 2161
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mHeightMovedDistance:I

    .line 2162
    iget v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mIndex:I

    iget v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mHideViewCount:I

    if-lt v0, v1, :cond_0

    .line 2163
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->end()V

    .line 2168
    :goto_0
    return-void

    .line 2166
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2176
    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mMode:I

    if-nez v2, :cond_1

    .line 2195
    :cond_0
    :goto_0
    return-void

    .line 2178
    :cond_1
    iget-boolean v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mInit:Z

    if-nez v2, :cond_2

    .line 2179
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->init()V

    .line 2180
    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mHideViewCount:I

    if-eqz v2, :cond_0

    .line 2184
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->getTargetDistance()I

    move-result v1

    .line 2186
    .local v1, targetDistance:I
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mDistanceList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 2187
    invoke-direct {p0}, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->nextView()V

    goto :goto_0

    .line 2191
    :cond_3
    iget v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mHeightMovedDistance:I

    sub-int v0, v1, v2

    .line 2192
    .local v0, step:I
    iput v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mHeightMovedDistance:I

    .line 2193
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/widget/HtcExpandableListView;->access$900(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    #calls: Lcom/htc/widget/HtcExpandableListView;->increaseViewHeight(Landroid/view/View;I)V
    invoke-static {v3, v2, v0}, Lcom/htc/widget/HtcExpandableListView;->access$2000(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;I)V

    .line 2194
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start(I)V
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 2092
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mStartTime:J

    .line 2094
    iput p1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mPosition:I

    .line 2095
    iput v2, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mMode:I

    .line 2096
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->mInit:Z

    .line 2098
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iput-boolean v2, v0, Lcom/htc/widget/HtcExpandableListView;->mShouldDrawArrowDown:Z

    .line 2099
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    #getter for: Lcom/htc/widget/HtcExpandableListView;->mAnimatedViewList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/widget/HtcExpandableListView;->access$900(Lcom/htc/widget/HtcExpandableListView;)Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/htc/widget/HtcExpandableListView;->setHardwareLayerEnabled(Ljava/util/ArrayList;Z)V
    invoke-static {v0, v1, v2}, Lcom/htc/widget/HtcExpandableListView;->access$1000(Lcom/htc/widget/HtcExpandableListView;Ljava/util/ArrayList;Z)V

    .line 2101
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mExpandMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 2103
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView$ExpandIncreaseRunnable;->this$0:Lcom/htc/widget/HtcExpandableListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 2104
    return-void
.end method
