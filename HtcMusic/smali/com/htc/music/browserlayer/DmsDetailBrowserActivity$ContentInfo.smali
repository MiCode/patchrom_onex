.class public Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;
.super Ljava/lang/Object;
.source "DmsDetailBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;
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

.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2359
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2360
    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mId:Ljava/lang/String;

    .line 2361
    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mName:Ljava/lang/String;

    .line 2362
    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mImgPath:Ljava/lang/String;

    .line 2363
    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mFileType:Ljava/lang/String;

    .line 2364
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mPosition:I

    .line 2365
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "name"

    .prologue
    .line 2367
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2368
    iput-object p2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mId:Ljava/lang/String;

    .line 2369
    iput-object p3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mName:Ljava/lang/String;

    .line 2370
    return-void
.end method

.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "path"
    .parameter "type"
    .parameter "position"

    .prologue
    .line 2372
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2373
    iput-object p2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mId:Ljava/lang/String;

    .line 2374
    iput-object p3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mName:Ljava/lang/String;

    .line 2375
    iput-object p4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mImgPath:Ljava/lang/String;

    .line 2376
    iput-object p5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mFileType:Ljava/lang/String;

    .line 2377
    iput p6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mPosition:I

    .line 2378
    return-void
.end method

.method private GetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private GetPosition()I
    .locals 1

    .prologue
    .line 2427
    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mPosition:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2351
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->GetPosition()I

    move-result v0

    return v0
.end method


# virtual methods
.method public GetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2397
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public GetImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public GetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public IsContainer()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2409
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mFileType:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2415
    :cond_0
    :goto_0
    return v0

    .line 2412
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mFileType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2413
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 2419
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 2420
    return-void
.end method

.method public SetFileType(Ljava/lang/String;)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 2405
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mFileType:Ljava/lang/String;

    .line 2406
    return-void
.end method

.method public SetId(Ljava/lang/String;)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 2401
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mId:Ljava/lang/String;

    .line 2402
    return-void
.end method

.method public SetImgPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 2381
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mImgPath:Ljava/lang/String;

    .line 2382
    return-void
.end method

.method public SetName(Ljava/lang/String;)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 2393
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$ContentInfo;->mName:Ljava/lang/String;

    .line 2394
    return-void
.end method
