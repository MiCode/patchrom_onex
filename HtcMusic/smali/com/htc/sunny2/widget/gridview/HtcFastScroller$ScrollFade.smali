.class public Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;
.super Ljava/lang/Object;
.source "HtcFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/HtcFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollFade"
.end annotation


# static fields
.field static final ALPHA_MAX:I = 0xd0

.field static final FADE_DURATION:J = 0xc8L


# instance fields
.field mFadeDuration:J

.field mStartTime:J

.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/HtcFastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 995
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->this$0:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAlpha()I
    .locals 9

    .prologue
    const-wide/16 v7, 0xd0

    .line 1009
    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->this$0:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 1010
    const/16 v0, 0xd0

    .line 1019
    :goto_0
    return v0

    .line 1013
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1014
    .local v1, now:J
    iget-wide v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->mStartTime:J

    iget-wide v5, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->mFadeDuration:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1015
    const/4 v0, 0x0

    .local v0, alpha:I
    goto :goto_0

    .line 1017
    .end local v0           #alpha:I
    :cond_1
    iget-wide v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->mStartTime:J

    sub-long v3, v1, v3

    mul-long/2addr v3, v7

    iget-wide v5, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->mFadeDuration:J

    div-long/2addr v3, v5

    sub-long v3, v7, v3

    long-to-int v0, v3

    .restart local v0       #alpha:I
    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->this$0:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 1024
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->startFade()V

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->this$0:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->this$0:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    #getter for: Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mParentSceneNode:Lcom/htc/sunny2/SceneNode;
    invoke-static {v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->access$000(Lcom/htc/sunny2/widget/gridview/HtcFastScroller;)Lcom/htc/sunny2/SceneNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->drawIRT(ILcom/htc/sunny2/SceneNode;)V

    .line 1029
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->getAlpha()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->this$0:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    goto :goto_0
.end method

.method startFade()V
    .locals 2

    .prologue
    .line 1003
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->mFadeDuration:J

    .line 1004
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->mStartTime:J

    .line 1005
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->this$0:Lcom/htc/sunny2/widget/gridview/HtcFastScroller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    .line 1006
    return-void
.end method
