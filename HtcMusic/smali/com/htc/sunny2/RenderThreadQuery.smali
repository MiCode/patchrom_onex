.class public abstract Lcom/htc/sunny2/RenderThreadQuery;
.super Lcom/htc/sunny2/RenderThreadTask;
.source "RenderThreadQuery.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "host"
    .parameter "name"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadTask;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public abstract onProcessQuery()V
.end method
