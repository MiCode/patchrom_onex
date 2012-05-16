.class Lcom/htc/sunny2/widget/MediaListView$SetMediaList;
.super Ljava/lang/Object;
.source "MediaListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/MediaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetMediaList"
.end annotation


# instance fields
.field isProcess:Z

.field mediaList:Lcom/htc/sunny2/IMediaList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/IMediaList",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->isProcess:Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->mediaList:Lcom/htc/sunny2/IMediaList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/widget/MediaListView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;-><init>()V

    return-void
.end method


# virtual methods
.method set(Lcom/htc/sunny2/IMediaList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/IMediaList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, list:Lcom/htc/sunny2/IMediaList;,"Lcom/htc/sunny2/IMediaList<*>;"
    iput-object p1, p0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->mediaList:Lcom/htc/sunny2/IMediaList;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/MediaListView$SetMediaList;->isProcess:Z

    .line 105
    return-void
.end method
