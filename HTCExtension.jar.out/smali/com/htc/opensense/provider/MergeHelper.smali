.class public Lcom/htc/opensense/provider/MergeHelper;
.super Ljava/lang/Object;
.source "MergeHelper.java"


# static fields
.field private static final BATCH_LIMIT:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/htc/opensense/provider/MergeHelper;


# instance fields
.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/htc/opensense/provider/MergeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/provider/MergeHelper;->LOG_TAG:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/provider/MergeHelper;->sInstance:Lcom/htc/opensense/provider/MergeHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/provider/MergeHelper;->mResolver:Landroid/content/ContentResolver;

    .line 39
    return-void
.end method

.method private addDeleteNotExistGroupOperation(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter "accountName"
    .parameter "accountType"
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p2, p3, p4, p5}, Lcom/htc/opensense/provider/SocialContract$Group;->buildUriWithTimestampNotIn(Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 405
    .local v0, targetUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method private addDeleteNotExistUserGroupOperation(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter "accountName"
    .parameter "accountType"
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p2, p3, p4, p5}, Lcom/htc/opensense/provider/SocialContract$UserGroup;->buildUriWithTimestampNotIn(Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 414
    .local v0, targetUri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    return-void
.end method

.method private addDeleteStreamOperations(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter "targetUri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    sget-object v0, Lcom/htc/opensense/provider/MergeHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "addInsertOperation, values is null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/htc/opensense/provider/MergeHelper;->getNotInSelection(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addInsertGroupOperation(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter "accountName"
    .parameter "accountType"
    .parameter "groupName"
    .parameter "groupId"
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 374
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "group_account_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v1, "group_account_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v1, "group_gname"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v1, "group_gid"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v1, "group_timestamp"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 379
    sget-object v1, Lcom/htc/opensense/provider/SocialContract$Group;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    return-void
.end method

.method private addInsertOrMergeSyncCursorsOperation(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 3
    .parameter
    .parameter "accountName"
    .parameter "accountType"
    .parameter "streamType"
    .parameter "startTime"
    .parameter "endTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 335
    .local v0, cursorsValue:Landroid/content/ContentValues;
    const-string v1, "cursors_account_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v1, "cursors_account_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v1, "cursors_stream_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v1, "cursors_start_time"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 339
    const-string v1, "cursors_end_time"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 341
    sget-object v1, Lcom/htc/opensense/provider/SocialContract$SyncCursors;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    return-void
.end method

.method private addInsertStreamOperations(Ljava/util/ArrayList;Landroid/content/ContentValues;)V
    .locals 2
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-nez p2, :cond_0

    .line 305
    sget-object v0, Lcom/htc/opensense/provider/MergeHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "addInsertOperation, values is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_0
    return-void

    .line 308
    :cond_0
    sget-object v0, Lcom/htc/opensense/provider/SocialContract$Stream;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addInsertUserGroupOperation(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 7
    .parameter
    .parameter "accountName"
    .parameter "accountType"
    .parameter "groupId"
    .parameter "userIds"
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object v0, p5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 388
    .local v3, userId:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 389
    .local v4, value:Landroid/content/ContentValues;
    const-string v5, "usergroup_account_name"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v5, "usergroup_account_type"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v5, "usergroup_gid"

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v5, "usergroup_uid"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v5, "usergroup_timestamp"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 394
    sget-object v5, Lcom/htc/opensense/provider/SocialContract$UserGroup;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v3           #userId:Ljava/lang/String;
    .end local v4           #value:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private applyBatchAndReset(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "authorities"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/provider/MergeHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 424
    sget-object v1, Lcom/htc/opensense/provider/MergeHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyBatchAndReset completed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ops successfully."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 432
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/htc/opensense/provider/MergeHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "applyBatchAndReset failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 427
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 428
    .local v0, e:Landroid/content/OperationApplicationException;
    sget-object v1, Lcom/htc/opensense/provider/MergeHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "applyBatchAndReset failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 429
    .end local v0           #e:Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v0

    .line 430
    .local v0, e:Ljava/lang/NullPointerException;
    sget-object v1, Lcom/htc/opensense/provider/MergeHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "applyBatchAndReset failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private generateWhereClause(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "what"
    .parameter "ids"

    .prologue
    .line 195
    if-eqz p2, :cond_0

    array-length v5, p2

    if-nez v5, :cond_1

    .line 196
    :cond_0
    const-string v5, ""

    .line 208
    :goto_0
    return-object v5

    .line 198
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v5, " in ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 202
    .local v3, id:Ljava/lang/String;
    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 205
    .end local v3           #id:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 206
    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/opensense/provider/MergeHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    sget-object v0, Lcom/htc/opensense/provider/MergeHelper;->sInstance:Lcom/htc/opensense/provider/MergeHelper;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/htc/opensense/provider/MergeHelper;

    invoke-direct {v0, p0}, Lcom/htc/opensense/provider/MergeHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/opensense/provider/MergeHelper;->sInstance:Lcom/htc/opensense/provider/MergeHelper;

    .line 45
    :cond_0
    sget-object v0, Lcom/htc/opensense/provider/MergeHelper;->sInstance:Lcom/htc/opensense/provider/MergeHelper;

    return-object v0
.end method

.method private getNotInSelection(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    :cond_0
    sget-object v3, Lcom/htc/opensense/provider/MergeHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getNotInSelection, values is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v3, 0x0

    .line 366
    :goto_0
    return-object v3

    .line 352
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v1, selectionBuilder:Ljava/lang/StringBuilder;
    const-string v3, "stream_post_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v3, " NOT IN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 358
    .local v2, value:Landroid/content/ContentValues;
    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v3, "stream_post_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 363
    .end local v2           #value:Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 364
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public deleteAllFromDb(Ljava/lang/String;)V
    .locals 6
    .parameter "accountType"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v0, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Lcom/htc/opensense/provider/SocialContract$Stream;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "stream_account_type=?"

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v1, Lcom/htc/opensense/provider/SocialContract$SyncCursors;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "cursors_account_type=?"

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v1, Lcom/htc/opensense/provider/SocialContract$Group;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "group_account_type=?"

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v1, Lcom/htc/opensense/provider/SocialContract$UserGroup;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "usergroup_account_type=?"

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 257
    const-string v1, "com.htc.opensense.social"

    invoke-direct {p0, v1, v0}, Lcom/htc/opensense/provider/MergeHelper;->applyBatchAndReset(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/provider/MergeHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/opensense/provider/SocialContract$Stream;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 260
    return-void
.end method

.method public deleteAllFromDb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    .local v2, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-static {v0, v7}, Lcom/htc/opensense/provider/SocialContract$Stream;->buildUriWithAccountTypesAndNames(Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object v3

    .line 271
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v3, Lcom/htc/opensense/provider/SocialContract$SyncCursors;->CONTENT_URI:Landroid/net/Uri;

    .line 275
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "cursors_account_type=? AND cursors_account_name=?"

    new-array v6, v9, [Ljava/lang/String;

    aput-object p1, v6, v7

    aput-object p2, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-static {p2, p1}, Lcom/htc/opensense/provider/SocialContract$Group;->buildUriWithAccNameAccType(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 284
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v3, Lcom/htc/opensense/provider/SocialContract$UserGroup;->CONTENT_URI:Landroid/net/Uri;

    .line 288
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "usergroup_account_type=? AND usergroup_account_name=?"

    new-array v6, v9, [Ljava/lang/String;

    aput-object p1, v6, v7

    aput-object p2, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 296
    const-string v4, "com.htc.opensense.social"

    invoke-direct {p0, v4, v1}, Lcom/htc/opensense/provider/MergeHelper;->applyBatchAndReset(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 298
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense/provider/MergeHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/opensense/provider/SocialContract$Stream;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 299
    return-void
.end method

.method public deleteStreamFromDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "accountType"
    .parameter "accountName"
    .parameter "what"
    .parameter "ids"

    .prologue
    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    .local v2, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/htc/opensense/provider/SocialContract$Stream;->buildUriWithAccountTypesAndNames(Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object v3

    .line 220
    .local v3, uri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 224
    const-string v4, "com.htc.opensense.social"

    invoke-direct {p0, v4, v1}, Lcom/htc/opensense/provider/MergeHelper;->applyBatchAndReset(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 226
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense/provider/MergeHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/opensense/provider/SocialContract$Stream;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 227
    return-void
.end method

.method public generateUsersGroupBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "container"
    .parameter "groupId"
    .parameter "groupName"
    .parameter "userIds"

    .prologue
    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v0, nameIdBundle:Landroid/os/Bundle;
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 143
    return-object p1
.end method

.method public insertStreamToDb(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    :cond_0
    sget-object v3, Lcom/htc/opensense/provider/MergeHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "insertToDB , values is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 57
    .local v2, value:Landroid/content/ContentValues;
    invoke-direct {p0, v1, v2}, Lcom/htc/opensense/provider/MergeHelper;->addInsertStreamOperations(Ljava/util/ArrayList;Landroid/content/ContentValues;)V

    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_2

    .line 59
    const-string v3, "com.htc.opensense.social"

    invoke-direct {p0, v3, v1}, Lcom/htc/opensense/provider/MergeHelper;->applyBatchAndReset(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 63
    .end local v2           #value:Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 64
    const-string v3, "com.htc.opensense.social"

    invoke-direct {p0, v3, v1}, Lcom/htc/opensense/provider/MergeHelper;->applyBatchAndReset(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 67
    :cond_4
    iget-object v3, p0, Lcom/htc/opensense/provider/MergeHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/opensense/provider/SocialContract$Stream;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public mergeGroupToDb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 24
    .parameter "accountName"
    .parameter "accountType"
    .parameter "usersGroups"

    .prologue
    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v21

    .line 109
    .local v21, gidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 113
    .local v7, markupTimestamp:J
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 114
    .local v6, gid:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v23

    .line 115
    .local v23, nameIdBundle:Landroid/os/Bundle;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 116
    .local v5, gName:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .local v14, userIds:[Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 118
    invoke-direct/range {v1 .. v8}, Lcom/htc/opensense/provider/MergeHelper;->addInsertGroupOperation(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v9, p0

    move-object v10, v2

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v6

    move-wide v15, v7

    .line 120
    invoke-direct/range {v9 .. v16}, Lcom/htc/opensense/provider/MergeHelper;->addInsertUserGroupOperation(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 122
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_0

    .line 123
    const-string v1, "com.htc.opensense.social"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/provider/MergeHelper;->applyBatchAndReset(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .end local v5           #gName:Ljava/lang/String;
    .end local v6           #gid:Ljava/lang/String;
    .end local v14           #userIds:[Ljava/lang/String;
    .end local v23           #nameIdBundle:Landroid/os/Bundle;
    :cond_1
    move-object/from16 v15, p0

    move-object/from16 v16, v2

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-wide/from16 v19, v7

    .line 127
    invoke-direct/range {v15 .. v20}, Lcom/htc/opensense/provider/MergeHelper;->addDeleteNotExistGroupOperation(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v15, p0

    move-object/from16 v16, v2

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-wide/from16 v19, v7

    .line 129
    invoke-direct/range {v15 .. v20}, Lcom/htc/opensense/provider/MergeHelper;->addDeleteNotExistUserGroupOperation(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    .line 131
    const-string v1, "com.htc.opensense.social"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense/provider/MergeHelper;->applyBatchAndReset(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/MergeHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/opensense/provider/SocialContract$Group;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense/provider/MergeHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/htc/opensense/provider/SocialContract$UserGroup;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 135
    return-void
.end method

.method public mergeStreamToDb(JJLjava/util/List;I)V
    .locals 17
    .parameter "endTime"
    .parameter "startTime"
    .parameter
    .parameter "syncStreamType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p5, values:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    :cond_0
    sget-object v4, Lcom/htc/opensense/provider/MergeHelper;->LOG_TAG:Ljava/lang/String;

    const-string v5, "mergeToDB , values is null or empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 76
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "stream_account_type"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, accountType:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "stream_account_name"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, accountName:Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-wide/from16 v4, p3

    move-wide/from16 v6, p1

    move/from16 v8, p6

    .line 81
    invoke-static/range {v2 .. v8}, Lcom/htc/opensense/provider/SocialContract$Stream;->buildUriWithAccountTypeAndNameBetween(Ljava/lang/String;Ljava/lang/String;JJI)Landroid/net/Uri;

    move-result-object v15

    .line 85
    .local v15, streamUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/opensense/provider/MergeHelper;->addDeleteStreamOperations(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/util/List;)V

    .line 88
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentValues;

    .line 89
    .local v16, value:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/htc/opensense/provider/MergeHelper;->addInsertStreamOperations(Ljava/util/ArrayList;Landroid/content/ContentValues;)V

    .line 90
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_2

    .line 91
    const-string v4, "com.htc.opensense.social"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/htc/opensense/provider/MergeHelper;->applyBatchAndReset(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .end local v16           #value:Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v4, p0

    move-object v5, v14

    move-object v6, v3

    move-object v7, v2

    move/from16 v8, p6

    move-wide/from16 v9, p3

    move-wide/from16 v11, p1

    .line 96
    invoke-direct/range {v4 .. v12}, Lcom/htc/opensense/provider/MergeHelper;->addInsertOrMergeSyncCursorsOperation(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 99
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 100
    const-string v4, "com.htc.opensense.social"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/htc/opensense/provider/MergeHelper;->applyBatchAndReset(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 103
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense/provider/MergeHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/htc/opensense/provider/SocialContract$Stream;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0
.end method

.method public updateStreamType(Ljava/lang/String;Ljava/lang/String;IIZ)I
    .locals 10
    .parameter "accountType"
    .parameter "accountName"
    .parameter "streamType"
    .parameter "TypeToUpdate"
    .parameter "set"

    .prologue
    .line 148
    const-string v5, "content://com.htc.opensense.social"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 150
    .local v0, base_content_uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "raw"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 153
    .local v1, rawUri:Landroid/net/Uri;
    if-eqz p5, :cond_0

    .line 154
    const-string v3, "%s=(%s | %d)"

    .line 159
    .local v3, setString:Ljava/lang/String;
    :goto_0
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE %s SET "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE %s=%s AND %s=%s AND (%s & %d)=%d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "stream"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "stream_type"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "stream_type"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "stream_account_type"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "stream_account_name"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "stream_type"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xa

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, sql:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/opensense/provider/MergeHelper;->mResolver:Landroid/content/ContentResolver;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v6, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 166
    .local v2, ret:I
    iget-object v5, p0, Lcom/htc/opensense/provider/MergeHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/opensense/provider/SocialContract$Stream;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 167
    return v2

    .line 156
    .end local v2           #ret:I
    .end local v3           #setString:Ljava/lang/String;
    .end local v4           #sql:Ljava/lang/String;
    :cond_0
    const-string v3, "%s=(%s & (~%d))"

    .restart local v3       #setString:Ljava/lang/String;
    goto :goto_0
.end method

.method public updateStreamType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IZ)I
    .locals 10
    .parameter "accountType"
    .parameter "accountName"
    .parameter "what"
    .parameter "ids"
    .parameter "TypeToUpdate"
    .parameter "set"

    .prologue
    .line 172
    const-string v5, "content://com.htc.opensense.social"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 174
    .local v0, base_content_uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "raw"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 176
    .local v1, rawUri:Landroid/net/Uri;
    if-eqz p6, :cond_0

    .line 177
    const-string v3, "%s=(%s | %d)"

    .line 182
    .local v3, setString:Ljava/lang/String;
    :goto_0
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE %s SET "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE %s=%s AND %s=%s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p3, p4}, Lcom/htc/opensense/provider/MergeHelper;->generateWhereClause(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "stream"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "stream_type"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "stream_type"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "stream_account_type"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "stream_account_name"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, sql:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/opensense/provider/MergeHelper;->mResolver:Landroid/content/ContentResolver;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v6, v4, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 190
    .local v2, ret:I
    iget-object v5, p0, Lcom/htc/opensense/provider/MergeHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/htc/opensense/provider/SocialContract$Stream;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 191
    return v2

    .line 179
    .end local v2           #ret:I
    .end local v3           #setString:Ljava/lang/String;
    .end local v4           #sql:Ljava/lang/String;
    :cond_0
    const-string v3, "%s=(%s & (~%d))"

    .restart local v3       #setString:Ljava/lang/String;
    goto :goto_0
.end method
