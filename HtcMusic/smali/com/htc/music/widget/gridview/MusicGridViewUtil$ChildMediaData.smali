.class public Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;
.super Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
.source "MusicGridViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildMediaData"
.end annotation


# instance fields
.field protected mId:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;ILandroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter "index"
    .parameter "cursor"

    .prologue
    const/4 v3, -0x1

    .line 775
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {p0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;-><init>()V

    .line 772
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mPath:Ljava/lang/String;

    .line 776
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildNameField:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$600(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 777
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildNameField:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$600(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mName:Ljava/lang/String;

    .line 778
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mName:Ljava/lang/String;

    const-string v2, "<unknown>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 779
    .local v0, unknown:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 780
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildUnknowName:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$700(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mName:Ljava/lang/String;

    .line 783
    .end local v0           #unknown:Z
    :cond_1
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildImagePathField:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$800(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 784
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildImagePathField:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$800(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mPath:Ljava/lang/String;

    .line 786
    :cond_2
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildIdField:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$900(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 787
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildIdField:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$900(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mId:Ljava/lang/String;

    .line 794
    :cond_3
    return-void

    .line 778
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 817
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    .line 798
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isItemDataReady()Z
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x1

    return v0
.end method
