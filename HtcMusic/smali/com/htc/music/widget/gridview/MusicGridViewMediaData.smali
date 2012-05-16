.class public Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
.super Ljava/lang/Object;
.source "MusicGridViewMediaData.java"

# interfaces
.implements Lcom/htc/sunny2/IMediaData;


# instance fields
.field protected mIsDataReady:Z

.field protected mIsReadyToDecode:Z

.field private mIsSelected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsSelected:Z

    .line 13
    iput-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    .line 14
    iput-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsReadyToDecode:Z

    return-void
.end method


# virtual methods
.method public getDateModified()J
    .locals 2

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 88
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/htc/sunny2/IMediaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 78
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public isItemDataReady()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    return v0
.end method

.method public isReadyToDecode()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsReadyToDecode:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsSelected:Z

    return v0
.end method

.method public setReadyToDecode(Z)V
    .locals 0
    .parameter "isReady"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsReadyToDecode:Z

    .line 111
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "bSelected"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsSelected:Z

    .line 94
    return-void
.end method
