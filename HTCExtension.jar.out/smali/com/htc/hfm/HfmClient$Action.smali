.class Lcom/htc/hfm/HfmClient$Action;
.super Ljava/lang/Object;
.source "HfmClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/hfm/HfmClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Action"
.end annotation


# instance fields
.field private actionCode:I

.field private arg0:Lcom/htc/hfm/Speech;

.field private arg1:[Lcom/htc/hfm/Speech;

.field private arg2:[Lcom/htc/hfm/Speech;

.field private arg3:Z

.field private arg4:I

.field private arg5:Ljava/lang/String;


# direct methods
.method private constructor <init>(I)V
    .locals 7
    .parameter "actionCode"

    .prologue
    const/4 v2, 0x0

    .line 213
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/hfm/HfmClient$Action;-><init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZI)V

    .line 214
    return-void
.end method

.method synthetic constructor <init>(ILcom/htc/hfm/HfmClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/htc/hfm/HfmClient$Action;-><init>(I)V

    return-void
.end method

.method private constructor <init>(ILcom/htc/hfm/Speech;I)V
    .locals 7
    .parameter "actionCode"
    .parameter "arg0"
    .parameter "arg4"

    .prologue
    const/4 v3, 0x0

    .line 220
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/hfm/HfmClient$Action;-><init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZI)V

    .line 221
    return-void
.end method

.method synthetic constructor <init>(ILcom/htc/hfm/Speech;ILcom/htc/hfm/HfmClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/hfm/HfmClient$Action;-><init>(ILcom/htc/hfm/Speech;I)V

    return-void
.end method

.method private constructor <init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;Z)V
    .locals 7
    .parameter "actionCode"
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg3"

    .prologue
    .line 226
    const/4 v4, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/htc/hfm/HfmClient$Action;-><init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZI)V

    .line 227
    return-void
.end method

.method private constructor <init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZI)V
    .locals 0
    .parameter "actionCode"
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 231
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput p1, p0, Lcom/htc/hfm/HfmClient$Action;->actionCode:I

    .line 233
    iput-object p2, p0, Lcom/htc/hfm/HfmClient$Action;->arg0:Lcom/htc/hfm/Speech;

    .line 234
    iput-object p3, p0, Lcom/htc/hfm/HfmClient$Action;->arg1:[Lcom/htc/hfm/Speech;

    .line 235
    iput-object p4, p0, Lcom/htc/hfm/HfmClient$Action;->arg2:[Lcom/htc/hfm/Speech;

    .line 236
    iput-boolean p5, p0, Lcom/htc/hfm/HfmClient$Action;->arg3:Z

    .line 237
    iput p6, p0, Lcom/htc/hfm/HfmClient$Action;->arg4:I

    .line 238
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "actionCode"
    .parameter "arg5"

    .prologue
    .line 215
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput p1, p0, Lcom/htc/hfm/HfmClient$Action;->actionCode:I

    .line 217
    iput-object p2, p0, Lcom/htc/hfm/HfmClient$Action;->arg5:Ljava/lang/String;

    .line 218
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/htc/hfm/HfmClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/htc/hfm/HfmClient$Action;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(I[Lcom/htc/hfm/Speech;Z)V
    .locals 7
    .parameter "actionCode"
    .parameter "arg1"
    .parameter "arg3"

    .prologue
    const/4 v2, 0x0

    .line 223
    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, v2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/hfm/HfmClient$Action;-><init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZI)V

    .line 224
    return-void
.end method

.method synthetic constructor <init>(I[Lcom/htc/hfm/Speech;ZLcom/htc/hfm/HfmClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/hfm/HfmClient$Action;-><init>(I[Lcom/htc/hfm/Speech;Z)V

    return-void
.end method

.method private constructor <init>(I[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;Z)V
    .locals 7
    .parameter "actionCode"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 229
    const/4 v2, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/htc/hfm/HfmClient$Action;-><init>(ILcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZI)V

    .line 230
    return-void
.end method

.method synthetic constructor <init>(I[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;ZLcom/htc/hfm/HfmClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/hfm/HfmClient$Action;-><init>(I[Lcom/htc/hfm/Speech;[Lcom/htc/hfm/Speech;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/hfm/HfmClient$Action;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 204
    iget v0, p0, Lcom/htc/hfm/HfmClient$Action;->actionCode:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/hfm/HfmClient$Action;)[Lcom/htc/hfm/Speech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$Action;->arg1:[Lcom/htc/hfm/Speech;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/hfm/HfmClient$Action;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/htc/hfm/HfmClient$Action;->arg3:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/hfm/HfmClient$Action;)[Lcom/htc/hfm/Speech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$Action;->arg2:[Lcom/htc/hfm/Speech;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/hfm/HfmClient$Action;)Lcom/htc/hfm/Speech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$Action;->arg0:Lcom/htc/hfm/Speech;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/hfm/HfmClient$Action;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 204
    iget v0, p0, Lcom/htc/hfm/HfmClient$Action;->arg4:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/hfm/HfmClient$Action;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/hfm/HfmClient$Action;->arg5:Ljava/lang/String;

    return-object v0
.end method
