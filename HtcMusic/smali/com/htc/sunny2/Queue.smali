.class public Lcom/htc/sunny2/Queue;
.super Ljava/lang/Object;
.source "Queue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/Queue$ItemComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private addIndex:I

.field private buffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private bufferIncrementSize:I

.field private name:Ljava/lang/String;

.field private pollIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "queueName"

    .prologue
    .local p0, this:Lcom/htc/sunny2/Queue;,"Lcom/htc/sunny2/Queue<TT;>;"
    const/4 v1, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "sunnyQueue"

    iput-object v0, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    .line 24
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/sunny2/Queue;->bufferIncrementSize:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    .line 28
    iput v1, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    .line 29
    iput v1, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    .line 36
    iput-object p1, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private extendBuffer(I)Z
    .locals 13
    .parameter "newBufferSize"

    .prologue
    .local p0, this:Lcom/htc/sunny2/Queue;,"Lcom/htc/sunny2/Queue<TT;>;"
    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 63
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extendBuffer() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-gtz p1, :cond_0

    .line 69
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newBufferSize NG "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return v8

    .line 73
    :cond_0
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v9, v9

    if-lt v9, p1, :cond_1

    .line 75
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newBufferSize NG "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_1
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget-object v10, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v10, v10

    if-ge v9, v10, :cond_2

    iget v9, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    iget-object v10, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v10, v10

    if-lt v9, v10, :cond_3

    .line 81
    :cond_2
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extendBuffer() NG "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_3
    const/4 v4, 0x0

    .line 92
    .local v4, newBuffer:[Ljava/lang/Object;,"[TT;"
    :try_start_0
    new-array v4, p1, [Ljava/lang/Object;

    .end local v4           #newBuffer:[Ljava/lang/Object;,"[TT;"
    check-cast v4, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .restart local v4       #newBuffer:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x0

    .local v2, i:I
    array-length v6, v4

    .local v6, s:I
    :goto_1
    if-ge v2, v6, :cond_4

    .line 102
    aput-object v12, v4, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    .end local v2           #i:I
    .end local v4           #newBuffer:[Ljava/lang/Object;,"[TT;"
    .end local v6           #s:I
    :catch_0
    move-exception v1

    .line 96
    .local v1, ex:Ljava/lang/Exception;
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    const-string v10, "Create new buffer NG."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 107
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #i:I
    .restart local v4       #newBuffer:[Ljava/lang/Object;,"[TT;"
    .restart local v6       #s:I
    :cond_4
    const/4 v3, 0x0

    .line 109
    .local v3, itemsCount:I
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v9, :cond_9

    .line 111
    iget v9, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget v10, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    if-le v9, v10, :cond_5

    .line 113
    iget v9, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget v10, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    sub-int v3, v9, v10

    .line 115
    iget v5, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    .line 116
    .local v5, offset:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_9

    .line 118
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    add-int v10, v5, v2

    aget-object v9, v9, v10

    aput-object v9, v4, v2

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 121
    .end local v5           #offset:I
    :cond_5
    iget v9, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget v10, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    if-ge v9, v10, :cond_7

    .line 123
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v9, v9

    iget v10, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    sub-int v3, v9, v10

    .line 125
    iget v7, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    .line 126
    .local v7, srcOffset:I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_6

    .line 128
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    add-int v10, v7, v2

    aget-object v9, v9, v10

    aput-object v9, v4, v2

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 131
    :cond_6
    move v0, v3

    .line 132
    .local v0, destOffset:I
    iget v9, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    add-int/2addr v3, v9

    .line 134
    const/4 v2, 0x0

    :goto_4
    iget v9, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-ge v2, v9, :cond_9

    .line 136
    add-int v9, v0, v2

    iget-object v10, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aget-object v10, v10, v2

    aput-object v10, v4, v9

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 141
    .end local v0           #destOffset:I
    .end local v7           #srcOffset:I
    :cond_7
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v10, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    aget-object v9, v9, v10

    if-eqz v9, :cond_9

    .line 143
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v9, v9

    iget v10, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    sub-int v3, v9, v10

    .line 145
    iget v7, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    .line 146
    .restart local v7       #srcOffset:I
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_8

    .line 148
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    add-int v10, v7, v2

    aget-object v9, v9, v10

    aput-object v9, v4, v2

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 151
    :cond_8
    move v0, v3

    .line 152
    .restart local v0       #destOffset:I
    iget v9, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    add-int/2addr v3, v9

    .line 154
    const/4 v2, 0x0

    iget v6, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    :goto_6
    if-ge v2, v6, :cond_9

    .line 156
    add-int v9, v0, v2

    iget-object v10, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aget-object v10, v10, v2

    aput-object v10, v4, v9

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 164
    .end local v0           #destOffset:I
    .end local v7           #srcOffset:I
    :cond_9
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v9, :cond_a

    .line 166
    const/4 v2, 0x0

    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v6, v9

    :goto_7
    if-ge v2, v6, :cond_a

    .line 167
    iget-object v9, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aput-object v12, v9, v2

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 172
    :cond_a
    iput-object v4, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    .line 173
    iput v8, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    .line 174
    iput v3, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    .line 176
    const/4 v8, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/sunny2/Queue;,"Lcom/htc/sunny2/Queue<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .line 234
    if-nez p1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    const-string v2, "add() NG - null item"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    return v0

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 245
    iget v1, p0, Lcom/htc/sunny2/Queue;->bufferIncrementSize:I

    invoke-direct {p0, v1}, Lcom/htc/sunny2/Queue;->extendBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    const-string v2, "add() NG - create buffer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Lcom/htc/sunny2/Queue;->bufferIncrementSize:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/htc/sunny2/Queue;->extendBuffer(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    const-string v2, "add() NG - extend buffer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    aput-object p1, v1, v2

    .line 266
    iget v1, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    .line 267
    iget v1, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 269
    iput v0, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    .line 272
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 6

    .prologue
    .local p0, this:Lcom/htc/sunny2/Queue;,"Lcom/htc/sunny2/Queue<TT;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 183
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 185
    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    if-eqz v2, :cond_1

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear() NG "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_4

    .line 194
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear() NG "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_4
    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget v3, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    if-le v2, v3, :cond_5

    .line 202
    iget v0, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    .local v0, i:I
    :goto_1
    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-ge v0, v2, :cond_8

    .line 203
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aput-object v4, v2, v0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    .end local v0           #i:I
    :cond_5
    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    iget v3, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    if-ge v2, v3, :cond_7

    .line 207
    iget v0, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    .restart local v0       #i:I
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v1, v2

    .local v1, s:I
    :goto_2
    if-ge v0, v1, :cond_6

    .line 208
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aput-object v4, v2, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 209
    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-ge v0, v2, :cond_8

    .line 210
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aput-object v4, v2, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 214
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_7
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_8

    .line 216
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v1, v2

    .restart local v1       #s:I
    :goto_4
    if-ge v0, v1, :cond_8

    .line 217
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aput-object v4, v2, v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 223
    .end local v0           #i:I
    .end local v1           #s:I
    :cond_8
    iput v5, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    .line 224
    iput v5, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    goto/16 :goto_0
.end method

.method public find(Lcom/htc/sunny2/Queue$ItemComparator;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/Queue$ItemComparator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/sunny2/Queue;,"Lcom/htc/sunny2/Queue<TT;>;"
    .local p1, itemComparator:Lcom/htc/sunny2/Queue$ItemComparator;,"Lcom/htc/sunny2/Queue$ItemComparator<TT;>;"
    const/4 v1, 0x0

    .line 327
    if-nez p1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-object v1

    .line 334
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 346
    iget v0, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    .line 350
    .local v0, i:I
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Lcom/htc/sunny2/Queue$ItemComparator;->compare(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 352
    iget-object v1, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0

    .line 355
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 356
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v0, v2, :cond_4

    .line 358
    const/4 v0, 0x0

    .line 361
    :cond_4
    iget v2, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-ne v0, v2, :cond_2

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, this:Lcom/htc/sunny2/Queue;,"Lcom/htc/sunny2/Queue<TT;>;"
    iget-object v0, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    aget-object v0, v0, v1

    .line 319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/sunny2/Queue;,"Lcom/htc/sunny2/Queue<TT;>;"
    const/4 v1, 0x0

    .line 279
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 308
    :cond_0
    :goto_0
    return-object v0

    .line 286
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    aget-object v0, v2, v3

    .line 288
    .local v0, out:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_3

    .line 290
    iget v2, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    iget v3, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-eq v2, v3, :cond_2

    .line 292
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "poll() NG - index error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v1

    .line 295
    goto :goto_0

    .line 300
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v3, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    aput-object v1, v2, v3

    .line 302
    iget v1, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    .line 303
    iget v1, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 305
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/sunny2/Queue;,"Lcom/htc/sunny2/Queue<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    .line 374
    if-nez p1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 386
    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget v4, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 393
    iget v1, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    .line 394
    .local v1, i:I
    const/4 v0, 0x0

    .line 398
    .local v0, gotIt:Z
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 400
    add-int/lit8 v2, v1, 0x1

    .line 401
    .local v2, next:I
    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 403
    const/4 v2, 0x0

    .line 406
    :cond_3
    iget v3, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-ne v2, v3, :cond_4

    .line 408
    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 409
    iput v1, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    goto :goto_0

    .line 414
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aget-object v4, v4, v2

    aput-object v4, v3, v1

    .line 415
    move v1, v2

    .line 417
    goto :goto_1

    .line 420
    .end local v2           #next:I
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_6

    .line 422
    const/4 v0, 0x1

    .line 423
    goto :goto_1

    .line 426
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 427
    iget-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v1, v3, :cond_7

    .line 429
    const/4 v1, 0x0

    .line 432
    :cond_7
    iget v3, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    if-ne v1, v3, :cond_2

    goto :goto_0
.end method

.method public swapWith(Lcom/htc/sunny2/Queue;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/Queue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/htc/sunny2/Queue;,"Lcom/htc/sunny2/Queue<TT;>;"
    .local p1, b:Lcom/htc/sunny2/Queue;,"Lcom/htc/sunny2/Queue<TT;>;"
    if-nez p1, :cond_0

    .line 43
    iget-object v3, p0, Lcom/htc/sunny2/Queue;->name:Ljava/lang/String;

    const-string v4, "swap NG"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    .line 48
    .local v1, bufferTemp:[Ljava/lang/Object;,"[TT;"
    iget-object v3, p1, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    .line 49
    iput-object v1, p1, Lcom/htc/sunny2/Queue;->buffer:[Ljava/lang/Object;

    .line 50
    const/4 v1, 0x0

    .line 52
    iget v0, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    .line 53
    .local v0, addIndexTemp:I
    iget v3, p1, Lcom/htc/sunny2/Queue;->addIndex:I

    iput v3, p0, Lcom/htc/sunny2/Queue;->addIndex:I

    .line 54
    iput v0, p1, Lcom/htc/sunny2/Queue;->addIndex:I

    .line 56
    iget v2, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    .line 57
    .local v2, pollIndexTemp:I
    iget v3, p1, Lcom/htc/sunny2/Queue;->pollIndex:I

    iput v3, p0, Lcom/htc/sunny2/Queue;->pollIndex:I

    .line 58
    iput v2, p1, Lcom/htc/sunny2/Queue;->pollIndex:I

    goto :goto_0
.end method
