.class public Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$TicketAuthenticator;,
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# instance fields
.field private customAuth:Landroid/os/MessageQueue$TicketAuthenticator;

.field private defaultAuth:Landroid/os/MessageQueue$TicketAuthenticator;

.field private expressNo:J

.field private logLevel:I

.field private mBlocked:Z

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:I

.field mQuitAllowed:Z

.field private mQuiting:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 38
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 53
    const-string v2, "MessageQueue"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput v0, p0, Landroid/os/MessageQueue;->logLevel:I

    .line 417
    new-instance v0, Landroid/os/MessageQueue$1;

    invoke-direct {v0, p0}, Landroid/os/MessageQueue$1;-><init>(Landroid/os/MessageQueue;)V

    iput-object v0, p0, Landroid/os/MessageQueue;->defaultAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    .line 103
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeInit()V

    .line 104
    return-void

    .line 53
    :cond_0
    const-string v0, "MessageQueue"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private describeMessage(Landroid/os/Message;)Ljava/lang/String;
    .locals 3
    .parameter "msg"

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Landroid/os/Message;->when:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVIP(Landroid/os/Message;Z)Z
    .locals 7
    .parameter "msg"
    .parameter "debugEnabled"

    .prologue
    .line 444
    iget-object v3, p0, Landroid/os/MessageQueue;->defaultAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    invoke-interface {v3, p1, p2}, Landroid/os/MessageQueue$TicketAuthenticator;->isVIP(Landroid/os/Message;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 445
    const/4 v0, 0x1

    .line 458
    :cond_0
    :goto_0
    return v0

    .line 447
    :cond_1
    iget-object v3, p0, Landroid/os/MessageQueue;->customAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    if-eqz v3, :cond_3

    .line 448
    const-wide/16 v1, 0x0

    .line 449
    .local v1, startToCustomEval:J
    if-eqz p2, :cond_2

    .line 450
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 452
    :cond_2
    iget-object v3, p0, Landroid/os/MessageQueue;->customAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    invoke-interface {v3, p1, p2}, Landroid/os/MessageQueue$TicketAuthenticator;->isVIP(Landroid/os/Message;Z)Z

    move-result v0

    .line 453
    .local v0, ret:Z
    if-eqz p2, :cond_0

    .line 454
    const-string v3, "MessageQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] CUSTOM EFFORT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/os/MessageQueue;->customAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    .end local v0           #ret:Z
    .end local v1           #startToCustomEval:J
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit()V
.end method

.method private native nativePollOnce(II)V
.end method

.method private native nativeWake(I)V
.end method


# virtual methods
.method public final addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final enqueueMessage(Landroid/os/Message;J)Z
    .locals 13
    .parameter "msg"
    .parameter "when"

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 192
    new-instance v9, Landroid/util/AndroidRuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " This message is already in use."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 195
    :cond_0
    iget-object v9, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v9, :cond_1

    iget-boolean v9, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v9, :cond_1

    .line 196
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Main thread not allowed to quit"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 199
    :cond_1
    monitor-enter p0

    .line 200
    :try_start_0
    iget-boolean v9, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v9, :cond_2

    .line 201
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sending message to a Handler on a dead thread"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v9, "MessageQueue"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    const/4 v9, 0x0

    monitor-exit p0

    .line 285
    .end local v2           #e:Ljava/lang/RuntimeException;
    :goto_0
    return v9

    .line 205
    :cond_2
    iget-object v9, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v9, :cond_3

    .line 206
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/os/MessageQueue;->mQuiting:Z

    .line 209
    :cond_3
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 211
    iget-object v6, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 212
    .local v6, p:Landroid/os/Message;
    if-eqz v6, :cond_4

    const-wide/16 v9, 0x0

    cmp-long v9, p2, v9

    if-eqz v9, :cond_4

    iget-wide v9, v6, Landroid/os/Message;->when:J

    cmp-long v9, p2, v9

    if-gez v9, :cond_5

    .line 213
    :cond_4
    iput-object v6, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 214
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 215
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 271
    .local v3, needWake:Z
    :goto_1
    iget v9, p0, Landroid/os/MessageQueue;->logLevel:I

    const/4 v10, 0x2

    if-gt v9, v10, :cond_10

    .line 272
    const-string v9, "MessageQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] ----- START ----- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v8, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 274
    .local v8, x:Landroid/os/Message;
    :goto_2
    if-eqz v8, :cond_f

    .line 275
    const-string v9, "MessageQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]     "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v8}, Landroid/os/MessageQueue;->describeMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v8, v8, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 217
    .end local v3           #needWake:Z
    .end local v8           #x:Landroid/os/Message;
    :cond_5
    const/4 v7, 0x0

    .line 219
    .local v7, prev:Landroid/os/Message;
    const-wide/16 v4, 0x0

    .line 220
    .local v4, now:J
    const/4 v0, 0x0

    .line 221
    .local v0, acc:Z
    iget-wide v9, p1, Landroid/os/Message;->expressNo:J

    iget-wide v11, p0, Landroid/os/MessageQueue;->expressNo:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_6

    .line 222
    iget-wide v9, p1, Landroid/os/Message;->expressNo:J

    iput-wide v9, p0, Landroid/os/MessageQueue;->expressNo:J

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 224
    iget-wide v9, p0, Landroid/os/MessageQueue;->expressNo:J

    cmp-long v9, v4, v9

    if-gez v9, :cond_8

    const/4 v0, 0x1

    .line 226
    :cond_6
    :goto_3
    if-eqz v0, :cond_c

    .line 227
    iget v9, p0, Landroid/os/MessageQueue;->logLevel:I

    const/4 v10, 0x3

    if-gt v9, v10, :cond_9

    const/4 v1, 0x1

    .line 228
    .local v1, debugEnabled:Z
    :goto_4
    invoke-direct {p0, p1, v1}, Landroid/os/MessageQueue;->isVIP(Landroid/os/Message;Z)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 229
    iget-wide v9, p0, Landroid/os/MessageQueue;->expressNo:J

    iput-wide v9, p1, Landroid/os/Message;->expressNo:J

    .line 230
    if-eqz v1, :cond_7

    .line 231
    const-string v9, "MessageQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] INSERT "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->describeMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_7
    :goto_5
    if-eqz v6, :cond_b

    .line 240
    invoke-direct {p0, v6, v1}, Landroid/os/MessageQueue;->isVIP(Landroid/os/Message;Z)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 241
    move-object v7, v6

    .line 242
    iget-object v6, v6, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_5

    .line 224
    .end local v1           #debugEnabled:Z
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 227
    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    .line 234
    .restart local v1       #debugEnabled:Z
    :cond_a
    const-wide/16 v9, -0x1

    iput-wide v9, p1, Landroid/os/Message;->expressNo:J

    .line 235
    if-eqz v1, :cond_7

    .line 236
    const-string v9, "MessageQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] APPEND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, p1}, Landroid/os/MessageQueue;->describeMessage(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 281
    .end local v0           #acc:Z
    .end local v1           #debugEnabled:Z
    .end local v4           #now:J
    .end local v6           #p:Landroid/os/Message;
    .end local v7           #prev:Landroid/os/Message;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 247
    .restart local v0       #acc:Z
    .restart local v1       #debugEnabled:Z
    .restart local v4       #now:J
    .restart local v6       #p:Landroid/os/Message;
    .restart local v7       #prev:Landroid/os/Message;
    :cond_b
    if-eqz v1, :cond_c

    .line 248
    :try_start_1
    const-string v9, "MessageQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] EFFORT "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v4

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v1           #debugEnabled:Z
    :cond_c
    :goto_6
    if-eqz v6, :cond_d

    iget-wide v9, v6, Landroid/os/Message;->when:J

    cmp-long v9, v9, p2

    if-gtz v9, :cond_d

    .line 253
    move-object v7, v6

    .line 254
    iget-object v6, v6, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_6

    .line 257
    :cond_d
    if-eqz v0, :cond_e

    if-nez v7, :cond_e

    .line 258
    iput-object v6, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 259
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 260
    iget-boolean v3, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .restart local v3       #needWake:Z
    goto/16 :goto_1

    .line 263
    .end local v3           #needWake:Z
    :cond_e
    iget-object v9, v7, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v9, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 264
    iput-object p1, v7, Landroid/os/Message;->next:Landroid/os/Message;

    .line 265
    const/4 v3, 0x0

    .restart local v3       #needWake:Z
    goto/16 :goto_1

    .line 278
    .end local v0           #acc:Z
    .end local v4           #now:J
    .end local v7           #prev:Landroid/os/Message;
    .restart local v8       #x:Landroid/os/Message;
    :cond_f
    const-string v9, "MessageQueue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] ----- END ----- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v8           #x:Landroid/os/Message;
    :cond_10
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    if-eqz v3, :cond_11

    .line 283
    iget v9, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v9}, Landroid/os/MessageQueue;->nativeWake(I)V

    .line 285
    :cond_11
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method final next()Landroid/os/Message;
    .locals 15

    .prologue
    .line 116
    const/4 v7, -0x1

    .line 117
    .local v7, pendingIdleHandlerCount:I
    const/4 v4, 0x0

    .line 120
    .local v4, nextPollTimeoutMillis:I
    :goto_0
    if-eqz v4, :cond_0

    .line 121
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 123
    :cond_0
    iget v11, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v11, v4}, Landroid/os/MessageQueue;->nativePollOnce(II)V

    .line 125
    monitor-enter p0

    .line 127
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 128
    .local v5, now:J
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 129
    .local v3, msg:Landroid/os/Message;
    if-eqz v3, :cond_3

    .line 130
    iget-wide v9, v3, Landroid/os/Message;->when:J

    .line 131
    .local v9, when:J
    cmp-long v11, v5, v9

    if-ltz v11, :cond_1

    .line 132
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 133
    iget-object v11, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v11, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 134
    const/4 v11, 0x0

    iput-object v11, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 136
    invoke-virtual {v3}, Landroid/os/Message;->markInUse()V

    .line 137
    monitor-exit p0

    return-object v3

    .line 139
    :cond_1
    sub-long v11, v9, v5

    const-wide/32 v13, 0x7fffffff

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v4, v11

    .line 146
    .end local v9           #when:J
    :goto_1
    if-gez v7, :cond_2

    .line 147
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 149
    :cond_2
    if-nez v7, :cond_4

    .line 151
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 152
    monitor-exit p0

    goto :goto_0

    .line 159
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #now:J
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 142
    .restart local v3       #msg:Landroid/os/Message;
    .restart local v5       #now:J
    :cond_3
    const/4 v4, -0x1

    goto :goto_1

    .line 155
    :cond_4
    :try_start_1
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v11, :cond_5

    .line 156
    const/4 v11, 0x4

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-array v11, v11, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 158
    :cond_5
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v12, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 159
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v7, :cond_7

    .line 164
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v1, v11, v0

    .line 165
    .local v1, idler:Landroid/os/MessageQueue$IdleHandler;
    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v12, 0x0

    aput-object v12, v11, v0

    .line 167
    const/4 v2, 0x0

    .line 169
    .local v2, keep:Z
    :try_start_2
    invoke-interface {v1}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 174
    :goto_3
    if-nez v2, :cond_6

    .line 175
    monitor-enter p0

    .line 176
    :try_start_3
    iget-object v11, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 177
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 163
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 170
    :catch_0
    move-exception v8

    .line 171
    .local v8, t:Ljava/lang/Throwable;
    const-string v11, "MessageQueue"

    const-string v12, "IdleHandler threw exception"

    invoke-static {v11, v12, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 177
    .end local v8           #t:Ljava/lang/Throwable;
    :catchall_1
    move-exception v11

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 182
    .end local v1           #idler:Landroid/os/MessageQueue$IdleHandler;
    .end local v2           #keep:Z
    :cond_7
    const/4 v7, 0x0

    .line 186
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public registerCustomAuthenticator(Landroid/os/MessageQueue$TicketAuthenticator;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 441
    iput-object p1, p0, Landroid/os/MessageQueue;->customAuth:Landroid/os/MessageQueue$TicketAuthenticator;

    .line 442
    return-void
.end method

.method final removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "object"

    .prologue
    .line 361
    monitor-enter p0

    .line 362
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 366
    .local v2, p:Landroid/os/Message;
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_1

    .line 367
    :cond_0
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 368
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 369
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 370
    move-object v2, v0

    .line 371
    goto :goto_0

    .line 374
    .end local v0           #n:Landroid/os/Message;
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    .line 375
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 376
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_3

    .line 377
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_3

    .line 378
    :cond_2
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 379
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 380
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 386
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 384
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_3
    move-object v2, v0

    .line 385
    goto :goto_1

    .line 386
    .end local v0           #n:Landroid/os/Message;
    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    return-void
.end method

.method public final removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    monitor-exit p0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "r"
    .parameter "object"

    .prologue
    .line 327
    if-nez p2, :cond_0

    .line 358
    :goto_0
    return-void

    .line 331
    :cond_0
    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 336
    .local v2, p:Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_2

    .line 337
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 338
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 339
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 340
    move-object v2, v0

    .line 341
    goto :goto_1

    .line 344
    .end local v0           #n:Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 345
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 346
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 347
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_4

    .line 349
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 350
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 351
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 357
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 355
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 356
    goto :goto_2

    .line 357
    .end local v0           #n:Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final removeMessages(Landroid/os/Handler;ILjava/lang/Object;Z)Z
    .locals 6
    .parameter "h"
    .parameter "what"
    .parameter "object"
    .parameter "doRemove"

    .prologue
    const/4 v4, 0x1

    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 292
    .local v3, p:Landroid/os/Message;
    const/4 v0, 0x0

    .line 296
    .local v0, found:Z
    :goto_0
    if-eqz v3, :cond_3

    iget-object v5, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v5, p1, :cond_3

    iget v5, v3, Landroid/os/Message;->what:I

    if-ne v5, p2, :cond_3

    if-eqz p3, :cond_0

    iget-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v5, p3, :cond_3

    .line 297
    :cond_0
    if-nez p4, :cond_1

    monitor-exit p0

    .line 322
    :goto_1
    return v4

    .line 298
    :cond_1
    const/4 v0, 0x1

    .line 299
    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 300
    .local v1, n:Landroid/os/Message;
    iput-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 301
    invoke-virtual {v3}, Landroid/os/Message;->recycle()V

    .line 302
    move-object v3, v1

    .line 303
    goto :goto_0

    .line 312
    :cond_2
    const/4 v0, 0x1

    .line 313
    iget-object v2, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 314
    .local v2, nn:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 315
    iput-object v2, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 306
    .end local v1           #n:Landroid/os/Message;
    .end local v2           #nn:Landroid/os/Message;
    :cond_3
    :goto_2
    if-eqz v3, :cond_6

    .line 307
    iget-object v1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 308
    .restart local v1       #n:Landroid/os/Message;
    if-eqz v1, :cond_5

    .line 309
    iget-object v5, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v5, p1, :cond_5

    iget v5, v1, Landroid/os/Message;->what:I

    if-ne v5, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v5, p3, :cond_5

    .line 311
    :cond_4
    if-nez p4, :cond_2

    monitor-exit p0

    goto :goto_1

    .line 323
    .end local v0           #found:Z
    .end local v1           #n:Landroid/os/Message;
    .end local v3           #p:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 319
    .restart local v0       #found:Z
    .restart local v1       #n:Landroid/os/Message;
    .restart local v3       #p:Landroid/os/Message;
    :cond_5
    move-object v3, v1

    .line 320
    goto :goto_2

    .line 322
    .end local v1           #n:Landroid/os/Message;
    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v0

    goto :goto_1
.end method
