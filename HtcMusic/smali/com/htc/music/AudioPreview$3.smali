.class Lcom/htc/music/AudioPreview$3;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastSeekEventTime:J

.field private mProgressPos:I

.field final synthetic this$0:Lcom/htc/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/htc/music/AudioPreview;)V
    .locals 1
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 595
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/AudioPreview$3;->mProgressPos:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 606
    if-nez p3, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget v2, p0, Lcom/htc/music/AudioPreview$3;->mProgressPos:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mDuration:I
    invoke-static {v4}, Lcom/htc/music/AudioPreview;->access$1200(Lcom/htc/music/AudioPreview;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fa999999999999aL

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    iget v2, p0, Lcom/htc/music/AudioPreview$3;->mProgressPos:I

    if-gez v2, :cond_0

    .line 615
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 616
    .local v0, now:J
    iget-wide v2, p0, Lcom/htc/music/AudioPreview$3;->mLastSeekEventTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 617
    iget-object v2, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v2}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/htc/music/AudioPreview$PreviewPlayer;->seekTo(I)V

    .line 619
    iput p2, p0, Lcom/htc/music/AudioPreview$3;->mProgressPos:I

    .line 620
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/music/AudioPreview$3;->mLastSeekEventTime:J

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 599
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/AudioPreview$3;->mLastSeekEventTime:J

    .line 601
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/AudioPreview$3;->mProgressPos:I

    .line 603
    iget-object v0, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    const/4 v1, 0x1

    #setter for: Lcom/htc/music/AudioPreview;->mSeeking:Z
    invoke-static {v0, v1}, Lcom/htc/music/AudioPreview;->access$1102(Lcom/htc/music/AudioPreview;Z)Z

    .line 604
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7
    .parameter "bar"

    .prologue
    .line 624
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 625
    .local v0, progress:I
    iget v1, p0, Lcom/htc/music/AudioPreview$3;->mProgressPos:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mDuration:I
    invoke-static {v3}, Lcom/htc/music/AudioPreview;->access$1200(Lcom/htc/music/AudioPreview;)I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fa999999999999aL

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mPlayer:Lcom/htc/music/AudioPreview$PreviewPlayer;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$600(Lcom/htc/music/AudioPreview;)Lcom/htc/music/AudioPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/music/AudioPreview$PreviewPlayer;->seekTo(I)V

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/AudioPreview;->mSeeking:Z
    invoke-static {v1, v2}, Lcom/htc/music/AudioPreview;->access$1102(Lcom/htc/music/AudioPreview;Z)Z

    .line 630
    iget-object v1, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    #getter for: Lcom/htc/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/AudioPreview;->access$1600(Lcom/htc/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/htc/music/AudioPreview$ProgressRefresher;

    iget-object v3, p0, Lcom/htc/music/AudioPreview$3;->this$0:Lcom/htc/music/AudioPreview;

    invoke-direct {v2, v3}, Lcom/htc/music/AudioPreview$ProgressRefresher;-><init>(Lcom/htc/music/AudioPreview;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 631
    return-void
.end method
