.class Lcom/htc/music/LandingPageActivity$BaseItem;
.super Ljava/lang/Object;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseItem"
.end annotation


# instance fields
.field private mArtPath:Ljava/lang/String;

.field mId:I

.field private mPrimaryText:Ljava/lang/String;

.field private mSecondaryText:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1458
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1459
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mId:I

    .line 1460
    iput-object v1, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    .line 1461
    iput-object v1, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    .line 1462
    iput-object v1, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mArtPath:Ljava/lang/String;

    .line 1463
    return-void
.end method

.method static synthetic access$4100(Lcom/htc/music/LandingPageActivity$BaseItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1451
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$BaseItem;->getId()I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1451
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$BaseItem;->getPrimaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1451
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$BaseItem;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1451
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity$BaseItem;->getArtPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mArtPath:Ljava/lang/String;

    return-object v0
.end method

.method private getId()I
    .locals 1

    .prologue
    .line 1482
    iget v0, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mId:I

    return v0
.end method

.method private getPrimaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    return-object v0
.end method

.method private getSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected setArtPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 1478
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mArtPath:Ljava/lang/String;

    .line 1479
    return-void
.end method

.method protected setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1466
    iput p1, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mId:I

    .line 1467
    return-void
.end method

.method protected setPrimaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    .line 1471
    return-void
.end method

.method protected setSecondaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1474
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    .line 1475
    return-void
.end method
