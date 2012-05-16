.class public Lcom/htc/sunny2/ObjectRecycler;
.super Ljava/lang/Object;
.source "ObjectRecycler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final locker:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private recycledObjects:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 22
    .local p0, this:Lcom/htc/sunny2/ObjectRecycler;,"Lcom/htc/sunny2/ObjectRecycler<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "ObjectRecycler"

    iput-object v0, p0, Lcom/htc/sunny2/ObjectRecycler;->name:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/ObjectRecycler;->recycledObjects:Lcom/htc/sunny2/Queue;

    .line 16
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/ObjectRecycler;->locker:Ljava/lang/Integer;

    .line 23
    iput-object p1, p0, Lcom/htc/sunny2/ObjectRecycler;->name:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/htc/sunny2/Queue;

    invoke-direct {v0, p1}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny2/ObjectRecycler;->recycledObjects:Lcom/htc/sunny2/Queue;

    .line 25
    return-void
.end method


# virtual methods
.method public obtain()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lcom/htc/sunny2/ObjectRecycler;,"Lcom/htc/sunny2/ObjectRecycler<TT;>;"
    const/4 v0, 0x0

    .line 34
    .local v0, object:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lcom/htc/sunny2/ObjectRecycler;->locker:Ljava/lang/Integer;

    monitor-enter v2

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/ObjectRecycler;->recycledObjects:Lcom/htc/sunny2/Queue;

    invoke-virtual {v1}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 37
    monitor-exit v2

    .line 39
    return-object v0

    .line 37
    .end local v0           #object:Ljava/lang/Object;,"TT;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lcom/htc/sunny2/ObjectRecycler;,"Lcom/htc/sunny2/ObjectRecycler<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/ObjectRecycler;->locker:Ljava/lang/Integer;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/ObjectRecycler;->recycledObjects:Lcom/htc/sunny2/Queue;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/htc/sunny2/ObjectRecycler;->name:Ljava/lang/String;

    const-string v2, "recycledObjects.add() NG"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
