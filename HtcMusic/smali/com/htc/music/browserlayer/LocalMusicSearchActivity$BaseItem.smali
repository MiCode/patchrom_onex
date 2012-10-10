.class Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
.super Ljava/lang/Object;
.source "LocalMusicSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
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

    .line 818
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 819
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mId:J

    .line 820
    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    .line 821
    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    .line 822
    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mArtPath:Ljava/lang/String;

    .line 823
    return-void
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getSecondaryText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getArtPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getArtPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mArtPath:Ljava/lang/String;

    return-object v0
.end method

.method private getId()J
    .locals 2

    .prologue
    .line 842
    iget-wide v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mId:J

    return-wide v0
.end method

.method private getPrimaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    return-object v0
.end method

.method private getSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected setArtPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 838
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mArtPath:Ljava/lang/String;

    .line 839
    return-void
.end method

.method protected setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 826
    iput-wide p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mId:J

    .line 827
    return-void
.end method

.method protected setPrimaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 830
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mPrimaryText:Ljava/lang/String;

    .line 831
    return-void
.end method

.method protected setSecondaryText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 834
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->mSecondaryText:Ljava/lang/String;

    .line 835
    return-void
.end method
