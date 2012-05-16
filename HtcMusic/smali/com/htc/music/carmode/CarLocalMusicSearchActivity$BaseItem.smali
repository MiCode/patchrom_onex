.class Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
.super Ljava/lang/Object;
.source "CarLocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseItem"
.end annotation


# instance fields
.field private mArtPath:Ljava/lang/String;

.field mId:J

.field private mPrimaryText:Ljava/lang/String;

.field private mSecondaryText:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 892
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 893
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mId:J

    .line 894
    iput-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    .line 895
    iput-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    .line 896
    iput-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mArtPath:Ljava/lang/String;

    .line 897
    return-void
.end method

.method static synthetic access$3600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 885
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getArtPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mArtPath:Ljava/lang/String;

    return-object v0
.end method

.method private getId()J
    .locals 2

    .prologue
    .line 916
    iget-wide v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mId:J

    return-wide v0
.end method

.method private getPrimaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    return-object v0
.end method

.method private getSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected setArtPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 912
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mArtPath:Ljava/lang/String;

    .line 913
    return-void
.end method

.method protected setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 900
    iput-wide p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mId:J

    .line 901
    return-void
.end method

.method protected setPrimaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 904
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    .line 905
    return-void
.end method

.method protected setSecondaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 908
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    .line 909
    return-void
.end method
