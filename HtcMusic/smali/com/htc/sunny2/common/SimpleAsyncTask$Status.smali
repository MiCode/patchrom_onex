.class public final enum Lcom/htc/sunny2/common/SimpleAsyncTask$Status;
.super Ljava/lang/Enum;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunny2/common/SimpleAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

.field public static final enum FINISHED:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

.field public static final enum PENDING:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

.field public static final enum RUNNING:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;->PENDING:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    new-instance v0, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;->RUNNING:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    new-instance v0, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;->FINISHED:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    sget-object v1, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;->PENDING:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;->RUNNING:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;->FINISHED:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;->$VALUES:[Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunny2/common/SimpleAsyncTask$Status;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    const-class v0, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunny2/common/SimpleAsyncTask$Status;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;->$VALUES:[Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    invoke-virtual {v0}, [Lcom/htc/sunny2/common/SimpleAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    return-object v0
.end method
