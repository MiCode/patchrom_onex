.class Lcom/htc/app/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private checked:Z

.field private isRecentFile:Z

.field private mAccountId:Ljava/lang/String;

.field private mCloudId:J

.field private mCloudPath:Ljava/lang/String;

.field private mCloudShareLink:Ljava/lang/String;

.field private mCouldLastModified:J

.field private mFile:Ljava/io/File;

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mIsCloudItem:Z

.field private mIsFavorite:Z

.field private mIsFolder:Z

.field private mItemDataSourceType:I

.field private mLocalLastModified:J

.field private mLocalPath:Ljava/lang/String;

.field private mProgress:I

.field private mSyncState:Z


# direct methods
.method private constructor <init>(ZJLjava/lang/String;Ljava/lang/String;JIZJ)V
    .locals 3
    .parameter "isCloudItem"
    .parameter "cloudId"
    .parameter "fileName"
    .parameter "path"
    .parameter "lastModified"
    .parameter "itemType"
    .parameter "isDirectory"
    .parameter "fileSize"

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/ItemInfo;->TAG:Ljava/lang/String;

    .line 15
    const/4 v0, -0x3

    iput v0, p0, Lcom/htc/app/ItemInfo;->mItemDataSourceType:I

    .line 16
    iput-boolean v2, p0, Lcom/htc/app/ItemInfo;->isRecentFile:Z

    .line 17
    iput-boolean v2, p0, Lcom/htc/app/ItemInfo;->mIsCloudItem:Z

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/ItemInfo;->mFileName:Ljava/lang/String;

    .line 24
    iput v2, p0, Lcom/htc/app/ItemInfo;->mProgress:I

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/ItemInfo;->mFileSize:J

    .line 26
    iput-boolean v2, p0, Lcom/htc/app/ItemInfo;->mIsFavorite:Z

    .line 406
    iput-boolean v2, p0, Lcom/htc/app/ItemInfo;->mSyncState:Z

    .line 164
    iput-boolean v2, p0, Lcom/htc/app/ItemInfo;->checked:Z

    .line 165
    iput-boolean p1, p0, Lcom/htc/app/ItemInfo;->mIsCloudItem:Z

    .line 166
    iput-wide p2, p0, Lcom/htc/app/ItemInfo;->mCloudId:J

    .line 167
    iput-object p4, p0, Lcom/htc/app/ItemInfo;->mFileName:Ljava/lang/String;

    .line 168
    iput-boolean p9, p0, Lcom/htc/app/ItemInfo;->mIsFolder:Z

    .line 169
    iput-wide p10, p0, Lcom/htc/app/ItemInfo;->mFileSize:J

    .line 170
    invoke-virtual {p0, p5}, Lcom/htc/app/ItemInfo;->setAbsolutePath(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, p6, p7}, Lcom/htc/app/ItemInfo;->setLastModified(J)V

    .line 172
    iput p8, p0, Lcom/htc/app/ItemInfo;->mItemDataSourceType:I

    .line 173
    return-void
.end method

.method public static getCloudInstance(JLjava/lang/String;Ljava/lang/String;JIZ)Lcom/htc/app/ItemInfo;
    .locals 12
    .parameter "cloudId"
    .parameter "fileName"
    .parameter "path"
    .parameter "lastModified"
    .parameter "itemType"
    .parameter "isDirectory"

    .prologue
    .line 182
    const/4 v1, 0x1

    .line 183
    .local v1, isCloudItem:Z
    new-instance v0, Lcom/htc/app/ItemInfo;

    const-wide/16 v10, 0x0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v11}, Lcom/htc/app/ItemInfo;-><init>(ZJLjava/lang/String;Ljava/lang/String;JIZJ)V

    return-object v0
.end method

.method public static getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;
    .locals 12
    .parameter "file"

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, isCloudItem:Z
    const-wide/16 v2, -0x1

    .line 212
    .local v2, cloudId:J
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, fileName:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    .line 214
    .local v9, isDirectory:Z
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 215
    .local v6, lastModified:J
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, path:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 217
    .local v10, fileSize:J
    const/4 v8, -0x3

    .line 218
    .local v8, itemType:I
    new-instance v0, Lcom/htc/app/ItemInfo;

    invoke-direct/range {v0 .. v11}, Lcom/htc/app/ItemInfo;-><init>(ZJLjava/lang/String;Ljava/lang/String;JIZJ)V

    return-object v0
.end method

.method public static getLocalFileInstance(Ljava/lang/String;)Lcom/htc/app/ItemInfo;
    .locals 2
    .parameter "path"

    .prologue
    .line 228
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/htc/app/ItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/ItemInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getLocalGroupTypeInstance(Ljava/lang/String;)Lcom/htc/app/ItemInfo;
    .locals 12
    .parameter "groupTypeName"

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, isCloudItem:Z
    const/4 v9, 0x1

    .line 195
    .local v9, isDirectory:Z
    const-wide/16 v2, -0x1

    .line 196
    .local v2, cloudId:J
    move-object v4, p0

    .line 197
    .local v4, fileName:Ljava/lang/String;
    move-object v5, p0

    .line 198
    .local v5, path:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 199
    .local v6, lastModified:J
    const/4 v8, -0x3

    .line 200
    .local v8, itemType:I
    new-instance v0, Lcom/htc/app/ItemInfo;

    const-wide/16 v10, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/htc/app/ItemInfo;-><init>(ZJLjava/lang/String;Ljava/lang/String;JIZJ)V

    return-object v0
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 375
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/app/ItemInfo;->isCloudItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/htc/app/ItemInfo;->getCloudPath()Ljava/lang/String;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/ItemInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/app/ItemInfo;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudId()J
    .locals 2

    .prologue
    .line 301
    iget-wide v0, p0, Lcom/htc/app/ItemInfo;->mCloudId:J

    return-wide v0
.end method

.method public getCloudPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/app/ItemInfo;->mCloudPath:Ljava/lang/String;

    return-object v0
.end method

.method getCloudShareLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/app/ItemInfo;->mCloudShareLink:Ljava/lang/String;

    return-object v0
.end method

.method public getCouldLastModified()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/htc/app/ItemInfo;->mCouldLastModified:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/app/ItemInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/htc/app/ItemInfo;->mFileSize:J

    return-wide v0
.end method

.method public getItemDataSourceType()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/htc/app/ItemInfo;->mItemDataSourceType:I

    return v0
.end method

.method public getItemTextPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/htc/app/ItemInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, textPath:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/htc/app/ItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 439
    :cond_0
    return-object v0
.end method

.method public getLocalLastModified()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/htc/app/ItemInfo;->mLocalLastModified:J

    return-wide v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/app/ItemInfo;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/htc/app/ItemInfo;->mProgress:I

    return v0
.end method

.method public getSyncState()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/htc/app/ItemInfo;->mSyncState:Z

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/htc/app/ItemInfo;->checked:Z

    return v0
.end method

.method public isCloudItem()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/htc/app/ItemInfo;->mIsCloudItem:Z

    return v0
.end method

.method isFavorite()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/htc/app/ItemInfo;->mIsFavorite:Z

    return v0
.end method

.method public isFolder()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/htc/app/ItemInfo;->mIsFolder:Z

    return v0
.end method

.method public isRecentFile()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/htc/app/ItemInfo;->isRecentFile:Z

    return v0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/htc/app/ItemInfo;->isCloudItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-wide v0, p0, Lcom/htc/app/ItemInfo;->mCouldLastModified:J

    .line 331
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/app/ItemInfo;->mLocalLastModified:J

    goto :goto_0
.end method

.method public setAbsolutePath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/htc/app/ItemInfo;->isCloudItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iput-object p1, p0, Lcom/htc/app/ItemInfo;->mCloudPath:Ljava/lang/String;

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    iput-object p1, p0, Lcom/htc/app/ItemInfo;->mLocalPath:Ljava/lang/String;

    goto :goto_0
.end method

.method setAccountId(Ljava/lang/String;)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/app/ItemInfo;->mAccountId:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/htc/app/ItemInfo;->checked:Z

    .line 248
    return-void
.end method

.method public setCloudPath(Ljava/lang/String;)V
    .locals 0
    .parameter "cloudPath"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/htc/app/ItemInfo;->mCloudPath:Ljava/lang/String;

    .line 320
    return-void
.end method

.method setCloudShareLink(Ljava/lang/String;)V
    .locals 0
    .parameter "cloudShareLink"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/app/ItemInfo;->mCloudShareLink:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setCouldLastModified(J)V
    .locals 0
    .parameter "couldLastModified"

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/htc/app/ItemInfo;->mCouldLastModified:J

    .line 142
    return-void
.end method

.method setFavorite(Z)V
    .locals 0
    .parameter "isFavorite"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/htc/app/ItemInfo;->mIsFavorite:Z

    .line 52
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/htc/app/ItemInfo;->mFileName:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/htc/app/ItemInfo;->mFileSize:J

    .line 70
    return-void
.end method

.method public setIsCloudItem(Z)V
    .locals 0
    .parameter "isCloudItem"

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/htc/app/ItemInfo;->mIsCloudItem:Z

    .line 293
    return-void
.end method

.method public setIsFolder(Z)V
    .locals 0
    .parameter "isFolder"

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/htc/app/ItemInfo;->mIsFolder:Z

    .line 266
    return-void
.end method

.method public setItemDataSourceType(I)V
    .locals 0
    .parameter "dataSourceType"

    .prologue
    .line 87
    iput p1, p0, Lcom/htc/app/ItemInfo;->mItemDataSourceType:I

    .line 88
    return-void
.end method

.method public setLastModified(J)V
    .locals 1
    .parameter "lastModified"

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/htc/app/ItemInfo;->isCloudItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iput-wide p1, p0, Lcom/htc/app/ItemInfo;->mCouldLastModified:J

    .line 348
    :goto_0
    return-void

    .line 345
    :cond_0
    iput-wide p1, p0, Lcom/htc/app/ItemInfo;->mLocalLastModified:J

    goto :goto_0
.end method

.method public setLocalLastModified(J)V
    .locals 0
    .parameter "localLastModified"

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/htc/app/ItemInfo;->mLocalLastModified:J

    .line 160
    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0
    .parameter "localPath"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/htc/app/ItemInfo;->mLocalPath:Ljava/lang/String;

    .line 404
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 105
    iput p1, p0, Lcom/htc/app/ItemInfo;->mProgress:I

    .line 106
    return-void
.end method

.method public setRecentFile(Z)V
    .locals 0
    .parameter "isRecentFile"

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/htc/app/ItemInfo;->isRecentFile:Z

    .line 284
    return-void
.end method

.method public setSyncState(Z)V
    .locals 0
    .parameter "syncState"

    .prologue
    .line 423
    iput-boolean p1, p0, Lcom/htc/app/ItemInfo;->mSyncState:Z

    .line 424
    return-void
.end method
