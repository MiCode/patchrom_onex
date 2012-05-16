.class public abstract Lcom/htc/sunny2/widget/gridview/GridViewPreparator;
.super Lcom/htc/sunny2/Preparator;
.source "GridViewPreparator.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "host"
    .parameter "name"

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/Preparator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    return-void
.end method


# virtual methods
.method public abstract iterate(J)V
.end method

.method public abstract notifyDataItemChanged(III)V
.end method

.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 18
    return-void
.end method

.method public onProcessPreparationIRT(J)Z
    .locals 1
    .parameter "limitedTimeMillis"

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/gridview/GridViewPreparator;->iterate(J)V

    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public abstract setColumnNumber(I)V
.end method
