.class public abstract Lcom/htc/sunny2/common/IterationTask;
.super Ljava/lang/Object;
.source "IterationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mBundle:Landroid/os/Bundle;

.field protected mIdx:I

.field protected mIsFinished:Z

.field private mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    .line 20
    iput-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mBundle:Landroid/os/Bundle;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationTask;->mIsFinished:Z

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/common/IterationTask;->mIdx:I

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTaskIndex()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/sunny2/common/IterationTask;->mIdx:I

    return v0
.end method

.method public isTaskFinished()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/sunny2/common/IterationTask;->mIsFinished:Z

    return v0
.end method

.method public abstract onCancel()V
.end method

.method public abstract onEnd()V
.end method

.method public abstract onIterate()Z
.end method

.method public abstract onSetup()V
.end method

.method public onTaskCancel()V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/htc/sunny2/common/IterationTask;->onCancel()V

    .line 45
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    invoke-interface {v0, p0}, Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;->onTaskCancel(Lcom/htc/sunny2/common/IterationTask;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onTaskEnd()V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/htc/sunny2/common/IterationTask;->onEnd()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationTask;->mIsFinished:Z

    .line 39
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    iget-object v1, p0, Lcom/htc/sunny2/common/IterationTask;->mBundle:Landroid/os/Bundle;

    invoke-interface {v0, v1, p0}, Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;->onTaskEnd(Landroid/os/Bundle;Lcom/htc/sunny2/common/IterationTask;)V

    .line 42
    :cond_0
    return-void
.end method

.method public onTaskIterate()Z
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/htc/sunny2/common/IterationTask;->onIterate()Z

    move-result v0

    return v0
.end method

.method public onTaskSetup()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationTask;->mIsFinished:Z

    .line 26
    invoke-virtual {p0}, Lcom/htc/sunny2/common/IterationTask;->onSetup()V

    .line 27
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    invoke-interface {v0, p0}, Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;->onTaskStart(Lcom/htc/sunny2/common/IterationTask;)V

    .line 30
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/IterationTask;->mIsFinished:Z

    .line 57
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/sunny2/common/IterationTask;->mBundle:Landroid/os/Bundle;

    .line 65
    return-void
.end method

.method public setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V
    .locals 0
    .parameter "taskCallbackListener"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/htc/sunny2/common/IterationTask;->mTaskCallbackListener:Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;

    .line 18
    return-void
.end method

.method public setTaskIndex(I)V
    .locals 0
    .parameter "idx"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/sunny2/common/IterationTask;->mIdx:I

    .line 69
    return-void
.end method
