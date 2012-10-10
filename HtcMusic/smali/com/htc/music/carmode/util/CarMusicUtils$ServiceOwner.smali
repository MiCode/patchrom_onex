.class Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;
.super Ljava/lang/Object;
.source "CarMusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/util/CarMusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceOwner"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "id"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 331
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object v0, p0, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;->mId:Ljava/lang/String;

    .line 329
    iput-object v0, p0, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;->mContext:Landroid/content/Context;

    .line 332
    iput-object p1, p0, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;->mId:Ljava/lang/String;

    .line 333
    iput-object p2, p0, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;->mContext:Landroid/content/Context;

    .line 334
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 338
    instance-of v0, p1, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;->mId:Ljava/lang/String;

    check-cast p1, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;

    .end local p1
    iget-object v1, p1, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
