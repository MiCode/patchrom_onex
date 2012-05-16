.class public Lcom/htc/sunny2/SunnyContext;
.super Ljava/lang/Object;
.source "SunnyContext.java"


# static fields
.field public static LTAG:Ljava/lang/String;

.field private static Locker:Ljava/lang/Object;

.field private static ReferenceCount:I


# instance fields
.field private sunnyContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "SunnyContext"

    sput-object v0, Lcom/htc/sunny2/SunnyContext;->LTAG:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/sunny2/SunnyContext;->Locker:Ljava/lang/Object;

    .line 14
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/SunnyContext;->ReferenceCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/SunnyContext;->sunnyContext:I

    .line 26
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 58
    sget-object v1, Lcom/htc/sunny2/SunnyContext;->Locker:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget v0, p0, Lcom/htc/sunny2/SunnyContext;->sunnyContext:I

    if-nez v0, :cond_0

    .line 64
    monitor-exit v1

    .line 80
    :goto_0
    return-void

    .line 69
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/SunnyContext;->sunnyContext:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->DestroyContext(I)V

    .line 71
    sget v0, Lcom/htc/sunny2/SunnyContext;->ReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/htc/sunny2/SunnyContext;->ReferenceCount:I

    .line 75
    sget v0, Lcom/htc/sunny2/SunnyContext;->ReferenceCount:I

    if-nez v0, :cond_1

    .line 77
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyEnvironment;->release()V

    .line 79
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

.method public getSunnyContext()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/htc/sunny2/SunnyContext;->sunnyContext:I

    return v0
.end method

.method public getSunnyEnvironment()I
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v0

    return v0
.end method

.method public init(IIII)Z
    .locals 10
    .parameter "rBytes"
    .parameter "gBytes"
    .parameter "bBytes"
    .parameter "aBytes"

    .prologue
    const/4 v8, 0x0

    .line 30
    sget-object v9, Lcom/htc/sunny2/SunnyContext;->Locker:Ljava/lang/Object;

    monitor-enter v9

    .line 34
    :try_start_0
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v0

    .line 38
    .local v0, env:I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Lcom/htc/sunny2/Sunny2;->CreateContext(IIIIIIII)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/SunnyContext;->sunnyContext:I

    .line 40
    iget v1, p0, Lcom/htc/sunny2/SunnyContext;->sunnyContext:I

    if-nez v1, :cond_1

    .line 42
    sget-object v1, Lcom/htc/sunny2/SunnyContext;->LTAG:Ljava/lang/String;

    const-string v2, "Create Context NG"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    sget v1, Lcom/htc/sunny2/SunnyContext;->ReferenceCount:I

    if-nez v1, :cond_0

    .line 45
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/SunnyEnvironment;->release()V

    .line 47
    :cond_0
    monitor-exit v9

    move v1, v8

    .line 52
    :goto_0
    return v1

    .line 50
    :cond_1
    sget v1, Lcom/htc/sunny2/SunnyContext;->ReferenceCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/htc/sunny2/SunnyContext;->ReferenceCount:I

    .line 52
    const/4 v1, 0x1

    monitor-exit v9

    goto :goto_0

    .line 53
    .end local v0           #env:I
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeFromCurrentThread()V
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/htc/sunny2/SunnyContext;->sunnyContext:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->Context_RemoveFromCurrentThread(I)V

    .line 108
    return-void
.end method

.method public runOnCurrentThread()Z
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/htc/sunny2/SunnyContext;->sunnyContext:I

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->Context_RunOnCurrentThread(I)Z

    move-result v0

    return v0
.end method
