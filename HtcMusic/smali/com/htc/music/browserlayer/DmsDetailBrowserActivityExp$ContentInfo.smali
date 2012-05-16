.class public Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
.super Ljava/lang/Object;
.source "DmsDetailBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentInfo"
.end annotation


# instance fields
.field private mFileType:Ljava/lang/String;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mId:Ljava/lang/String;

.field private mImgPath:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPosition:I

.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2246
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2247
    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mId:Ljava/lang/String;

    .line 2248
    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mName:Ljava/lang/String;

    .line 2249
    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mImgPath:Ljava/lang/String;

    .line 2250
    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mFileType:Ljava/lang/String;

    .line 2251
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mPosition:I

    .line 2252
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "name"

    .prologue
    .line 2254
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2255
    iput-object p2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mId:Ljava/lang/String;

    .line 2256
    iput-object p3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mName:Ljava/lang/String;

    .line 2257
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "path"
    .parameter "type"
    .parameter "position"

    .prologue
    .line 2259
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2260
    iput-object p2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mId:Ljava/lang/String;

    .line 2261
    iput-object p3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mName:Ljava/lang/String;

    .line 2262
    iput-object p4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mImgPath:Ljava/lang/String;

    .line 2263
    iput-object p5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mFileType:Ljava/lang/String;

    .line 2264
    iput p6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mPosition:I

    .line 2265
    return-void
.end method

.method private GetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private GetPosition()I
    .locals 1

    .prologue
    .line 2314
    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mPosition:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2238
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetPosition()I

    move-result v0

    return v0
.end method


# virtual methods
.method public GetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2284
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public GetImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public IsContainer()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2296
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mFileType:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2302
    :cond_0
    :goto_0
    return v0

    .line 2299
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mFileType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2300
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 2306
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 2307
    return-void
.end method

.method public SetFileType(Ljava/lang/String;)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 2292
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mFileType:Ljava/lang/String;

    .line 2293
    return-void
.end method

.method public SetId(Ljava/lang/String;)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 2288
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mId:Ljava/lang/String;

    .line 2289
    return-void
.end method

.method public SetImgPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 2268
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mImgPath:Ljava/lang/String;

    .line 2269
    return-void
.end method

.method public SetName(Ljava/lang/String;)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 2280
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->mName:Ljava/lang/String;

    .line 2281
    return-void
.end method
