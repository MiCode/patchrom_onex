.class public Lcom/htc/sunny2/common/Timer;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/Timer$Listener;
    }
.end annotation


# static fields
.field public static ObjectRecycler:Lcom/htc/sunny2/ObjectRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/ObjectRecycler",
            "<",
            "Lcom/htc/sunny2/common/Timer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private byFrame:Z

.field private frameDuration:I

.field private listener:Lcom/htc/sunny2/common/Timer$Listener;

.field private timeMillisDuration:J

.field private timerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/htc/sunny2/ObjectRecycler;

    const-string v1, "Timer"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/ObjectRecycler;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/sunny2/common/Timer;->ObjectRecycler:Lcom/htc/sunny2/ObjectRecycler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "host"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    .line 28
    iput v1, p0, Lcom/htc/sunny2/common/Timer;->timerId:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/Timer;->byFrame:Z

    .line 30
    iput v1, p0, Lcom/htc/sunny2/common/Timer;->frameDuration:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/Timer;->timeMillisDuration:J

    .line 39
    return-void
.end method

.method public static Obtain(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/common/Timer;
    .locals 2
    .parameter "host"
    .parameter "name"

    .prologue
    .line 117
    sget-object v1, Lcom/htc/sunny2/common/Timer;->ObjectRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v1}, Lcom/htc/sunny2/ObjectRecycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/common/Timer;

    .line 118
    .local v0, object:Lcom/htc/sunny2/common/Timer;
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/htc/sunny2/common/Timer;

    .end local v0           #object:Lcom/htc/sunny2/common/Timer;
    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/common/Timer;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .restart local v0       #object:Lcom/htc/sunny2/common/Timer;
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/htc/sunny2/common/Timer;->reset(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static Recycle(Lcom/htc/sunny2/common/Timer;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/common/Timer;->free()V

    .line 130
    sget-object v0, Lcom/htc/sunny2/common/Timer;->ObjectRecycler:Lcom/htc/sunny2/ObjectRecycler;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/ObjectRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    .line 60
    iput v1, p0, Lcom/htc/sunny2/common/Timer;->timerId:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/Timer;->byFrame:Z

    .line 62
    iput v1, p0, Lcom/htc/sunny2/common/Timer;->frameDuration:I

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/common/Timer;->timeMillisDuration:J

    .line 64
    return-void
.end method

.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 2
    .parameter "cancelReason"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    iget v1, p0, Lcom/htc/sunny2/common/Timer;->timerId:I

    invoke-interface {v0, v1, p1}, Lcom/htc/sunny2/common/Timer$Listener;->onTimerCancelledIRT(ILcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    .line 101
    :cond_0
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 5
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v0, 0x0

    .line 71
    iget-boolean v1, p0, Lcom/htc/sunny2/common/Timer;->byFrame:Z

    if-eqz v1, :cond_1

    .line 73
    iget v1, p0, Lcom/htc/sunny2/RenderThreadAction;->firstFrameIndex:I

    iget v2, p0, Lcom/htc/sunny2/common/Timer;->frameDuration:I

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    iget v2, p0, Lcom/htc/sunny2/common/Timer;->timerId:I

    invoke-interface {v1, v2}, Lcom/htc/sunny2/common/Timer$Listener;->onTimerIRT(I)V

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    iget-wide v1, p0, Lcom/htc/sunny2/RenderThreadAction;->firstFrameTimeMillis:J

    iget-wide v3, p0, Lcom/htc/sunny2/common/Timer;->timeMillisDuration:J

    add-long/2addr v1, v3

    cmp-long v1, p2, v1

    if-ltz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    iget v2, p0, Lcom/htc/sunny2/common/Timer;->timerId:I

    invoke-interface {v1, v2}, Lcom/htc/sunny2/common/Timer$Listener;->onTimerIRT(I)V

    goto :goto_0

    .line 92
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRemovedIRT()V
    .locals 0

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/htc/sunny2/common/Timer;->clear()V

    .line 106
    invoke-virtual {p0}, Lcom/htc/sunny2/common/Timer;->free()V

    .line 107
    invoke-static {p0}, Lcom/htc/sunny2/common/Timer;->Recycle(Lcom/htc/sunny2/common/Timer;)V

    .line 108
    return-void
.end method

.method public setupByFrame(Lcom/htc/sunny2/common/Timer$Listener;II)V
    .locals 1
    .parameter "listener"
    .parameter "timerId"
    .parameter "frameDuration"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    .line 44
    iput p2, p0, Lcom/htc/sunny2/common/Timer;->timerId:I

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/Timer;->byFrame:Z

    .line 46
    iput p3, p0, Lcom/htc/sunny2/common/Timer;->frameDuration:I

    .line 47
    return-void
.end method

.method public setupByTimeMillis(Lcom/htc/sunny2/common/Timer$Listener;IJ)V
    .locals 1
    .parameter "listener"
    .parameter "timerId"
    .parameter "timeMillisDuration"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/sunny2/common/Timer;->listener:Lcom/htc/sunny2/common/Timer$Listener;

    .line 52
    iput p2, p0, Lcom/htc/sunny2/common/Timer;->timerId:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/Timer;->byFrame:Z

    .line 54
    iput-wide p3, p0, Lcom/htc/sunny2/common/Timer;->timeMillisDuration:J

    .line 55
    return-void
.end method
