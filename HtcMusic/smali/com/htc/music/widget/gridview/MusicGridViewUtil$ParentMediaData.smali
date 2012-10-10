.class public Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
.super Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
.source "MusicGridViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParentMediaData"
.end annotation


# instance fields
.field protected mFirstChildId:Ljava/lang/String;

.field protected mId:Ljava/lang/String;

.field protected mIndex:I

.field protected mName:Ljava/lang/String;

.field protected mNumberOfChilds:I

.field protected mPath:Ljava/lang/String;

.field private needToGetPath:Z

.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;ILandroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter "index"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1126
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {p0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;-><init>()V

    .line 1119
    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mPath:Ljava/lang/String;

    .line 1121
    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mFirstChildId:Ljava/lang/String;

    .line 1122
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mNumberOfChilds:I

    .line 1124
    iput-boolean v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->needToGetPath:Z

    .line 1127
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1300(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    .line 1128
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    const-string v4, "<unknown>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v0, v2

    .line 1129
    .local v0, unknown:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1130
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentUnknowName:Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1600(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    .line 1132
    :cond_1
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mId:Ljava/lang/String;

    .line 1133
    iput p2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mIndex:I

    .line 1134
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentImagePathField:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1400(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1135
    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentImagePathField:I
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1400(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mPath:Ljava/lang/String;

    .line 1136
    iput-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->needToGetPath:Z

    .line 1137
    iput-boolean v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    .line 1143
    :cond_2
    return-void

    .end local v0           #unknown:Z
    :cond_3
    move v0, v1

    .line 1128
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1116
    iget-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->needToGetPath:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1116
    iput-boolean p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->needToGetPath:Z

    return p1
.end method


# virtual methods
.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1151
    monitor-enter p0

    .line 1152
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->needToGetPath:Z

    if-eqz v1, :cond_0

    .line 1153
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1700(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1700(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1155
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1156
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1157
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;
    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1700(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1160
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mPath:Ljava/lang/String;

    monitor-exit p0

    return-object v1

    .line 1161
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1165
    monitor-enter p0

    .line 1166
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mPath:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 1167
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 1177
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    .line 1147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isItemDataReady()Z
    .locals 1

    .prologue
    .line 1171
    monitor-enter p0

    .line 1172
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    monitor-exit p0

    return v0

    .line 1173
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
