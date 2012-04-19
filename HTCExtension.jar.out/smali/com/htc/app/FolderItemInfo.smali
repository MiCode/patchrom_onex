.class Lcom/htc/app/FolderItemInfo;
.super Lcom/htc/widget/MoreExpandableItemInfo;
.source "FolderItemInfo.java"


# static fields
.field private static id:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isFolder:Z

.field private isRecentFile:Z

.field private mAccountId:Ljava/lang/String;

.field private mCheckBox:Lcom/htc/widget/HtcCheckBox;

.field private mChecked:Z

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudId:J

.field private mCloudPath:Ljava/lang/String;

.field private mCloudShareLink:Ljava/lang/String;

.field private mCouldLastModified:J

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mIsCloudItem:Z

.field private mIsNothing:Z

.field private mItemDataSourceType:I

.field private mLocalLastModified:J

.field private mLocalPath:Ljava/lang/String;

.field private mProgress:I

.field private mRadioButton:Lcom/htc/widget/HtcRadioButton;

.field private mSyncState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    sput v0, Lcom/htc/app/FolderItemInfo;->id:I

    return-void
.end method

.method public constructor <init>(ZJLjava/lang/String;Ljava/lang/String;JIZZ)V
    .locals 3
    .parameter "isCloudItem"
    .parameter "cloudId"
    .parameter "fileName"
    .parameter "path"
    .parameter "lastModified"
    .parameter "itemType"
    .parameter "isDirectory"
    .parameter "isNothing"

    .prologue
    const/4 v2, 0x0

    .line 313
    sget v0, Lcom/htc/app/FolderItemInfo;->id:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, p9}, Lcom/htc/widget/MoreExpandableItemInfo;-><init>(JZ)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FolderItemInfo;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FolderItemInfo;->mChildren:Ljava/util/List;

    .line 22
    const/4 v0, -0x3

    iput v0, p0, Lcom/htc/app/FolderItemInfo;->mItemDataSourceType:I

    .line 23
    iput-boolean v2, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    .line 25
    iput-boolean v2, p0, Lcom/htc/app/FolderItemInfo;->isRecentFile:Z

    .line 26
    iput-boolean v2, p0, Lcom/htc/app/FolderItemInfo;->mIsCloudItem:Z

    .line 32
    iput v2, p0, Lcom/htc/app/FolderItemInfo;->mProgress:I

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/FolderItemInfo;->mFileSize:J

    .line 538
    iput-boolean v2, p0, Lcom/htc/app/FolderItemInfo;->mSyncState:Z

    .line 314
    iput-boolean p1, p0, Lcom/htc/app/FolderItemInfo;->mIsCloudItem:Z

    .line 315
    iput-wide p2, p0, Lcom/htc/app/FolderItemInfo;->mCloudId:J

    .line 316
    iput-object p4, p0, Lcom/htc/app/FolderItemInfo;->mFileName:Ljava/lang/String;

    .line 317
    iput-boolean p9, p0, Lcom/htc/app/FolderItemInfo;->isFolder:Z

    .line 318
    invoke-virtual {p0, p5}, Lcom/htc/app/FolderItemInfo;->setAbsolutePath(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0, p6, p7}, Lcom/htc/app/FolderItemInfo;->setLastModified(J)V

    .line 320
    iput p8, p0, Lcom/htc/app/FolderItemInfo;->mItemDataSourceType:I

    .line 321
    iput-boolean p10, p0, Lcom/htc/app/FolderItemInfo;->mIsNothing:Z

    .line 322
    return-void
.end method

.method public static getCloudInstance(JLjava/lang/String;Ljava/lang/String;JIZ)Lcom/htc/app/FolderItemInfo;
    .locals 11
    .parameter "cloudId"
    .parameter "fileName"
    .parameter "path"
    .parameter "lastModified"
    .parameter "itemType"
    .parameter "isDirectory"

    .prologue
    .line 331
    const/4 v1, 0x1

    .line 332
    .local v1, isCloudItem:Z
    const/4 v10, 0x0

    .line 333
    .local v10, isNothing:Z
    new-instance v0, Lcom/htc/app/FolderItemInfo;

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/htc/app/FolderItemInfo;-><init>(ZJLjava/lang/String;Ljava/lang/String;JIZZ)V

    .line 335
    .local v0, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    return-object v0
.end method

.method public static getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/FolderItemInfo;
    .locals 11
    .parameter "file"

    .prologue
    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, isCloudItem:Z
    const-wide/16 v2, -0x1

    .line 346
    .local v2, cloudId:J
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, fileName:Ljava/lang/String;
    const/4 v8, -0x3

    .line 348
    .local v8, itemType:I
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, path:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 350
    .local v6, lastModified:J
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    .line 351
    .local v9, isDirectory:Z
    const/4 v10, 0x0

    .line 352
    .local v10, isNothing:Z
    new-instance v0, Lcom/htc/app/FolderItemInfo;

    invoke-direct/range {v0 .. v10}, Lcom/htc/app/FolderItemInfo;-><init>(ZJLjava/lang/String;Ljava/lang/String;JIZZ)V

    .line 354
    .local v0, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    return-object v0
.end method

.method public static getLocalFileInstance(Ljava/lang/String;)Lcom/htc/app/FolderItemInfo;
    .locals 2
    .parameter "path"

    .prologue
    .line 382
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/htc/app/FolderItemInfo;->getLocalFileInstance(Ljava/io/File;)Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getLocalInstance(Ljava/lang/String;Ljava/io/File;)Lcom/htc/app/FolderItemInfo;
    .locals 11
    .parameter "itemName"
    .parameter "file"

    .prologue
    .line 364
    const/4 v1, 0x0

    .line 365
    .local v1, isCloudItem:Z
    const/4 v10, 0x0

    .line 366
    .local v10, isNothing:Z
    const-wide/16 v2, -0x1

    .line 367
    .local v2, cloudId:J
    const/4 v8, -0x3

    .line 368
    .local v8, itemType:I
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, path:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 370
    .local v6, lastModified:J
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    .line 371
    .local v9, isDirectory:Z
    new-instance v0, Lcom/htc/app/FolderItemInfo;

    move-object v4, p0

    invoke-direct/range {v0 .. v10}, Lcom/htc/app/FolderItemInfo;-><init>(ZJLjava/lang/String;Ljava/lang/String;JIZZ)V

    .line 373
    .local v0, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    return-object v0
.end method

.method public static getNothingInstance(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/htc/app/FolderItemInfo;
    .locals 11
    .parameter "itemName"
    .parameter "itemPath"
    .parameter "itemType"
    .parameter "isCloudItem"

    .prologue
    .line 393
    const-wide/16 v2, -0x1

    .line 394
    .local v2, cloudId:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, absolutePath:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 396
    .local v6, lastModified:J
    const/4 v10, 0x1

    .line 397
    .local v10, isNothing:Z
    const/4 v9, 0x0

    .line 398
    .local v9, isDirectory:Z
    new-instance v0, Lcom/htc/app/FolderItemInfo;

    move v1, p3

    move-object v4, p0

    move v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/htc/app/FolderItemInfo;-><init>(ZJLjava/lang/String;Ljava/lang/String;JIZZ)V

    .line 401
    .local v0, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "that"

    .prologue
    .line 491
    instance-of v3, p1, Lcom/htc/app/FolderItemInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 492
    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 493
    .local v0, p:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, thisPath:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, thatPath:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 497
    .end local v0           #p:Lcom/htc/app/FolderItemInfo;
    .end local v1           #thatPath:Ljava/lang/String;
    .end local v2           #thisPath:Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 462
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->isCloudItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getCloudPath()Ljava/lang/String;

    move-result-object v0

    .line 467
    :goto_0
    return-object v0

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method getCheckBox()Lcom/htc/widget/HtcCheckBox;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v1, p0, Lcom/htc/app/FolderItemInfo;->mChildren:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mChildren:Ljava/util/List;

    .line 114
    :cond_0
    return-object v0
.end method

.method public getCloudId()J
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/htc/app/FolderItemInfo;->mCloudId:J

    return-wide v0
.end method

.method public getCloudPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mCloudPath:Ljava/lang/String;

    return-object v0
.end method

.method getCloudShareLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mCloudShareLink:Ljava/lang/String;

    return-object v0
.end method

.method public getCouldLastModified()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/htc/app/FolderItemInfo;->mCouldLastModified:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/htc/app/FolderItemInfo;->mFileSize:J

    return-wide v0
.end method

.method public getItemDataSourceType()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/htc/app/FolderItemInfo;->mItemDataSourceType:I

    return v0
.end method

.method public getItemTextPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, textPath:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/htc/app/FolderItemInfo;->mItemDataSourceType:I

    invoke-static {v3}, Lcom/htc/app/FilePickerUtil;->getDataSourceTypeText(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    return-object v0
.end method

.method public getLocalLastModified()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/htc/app/FolderItemInfo;->mLocalLastModified:J

    return-wide v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/htc/app/FolderItemInfo;->mProgress:I

    return v0
.end method

.method getRadioButton()Lcom/htc/widget/HtcRadioButton;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    return-object v0
.end method

.method public getSyncState()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->mSyncState:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->lastModified()J

    move-result-wide v1

    long-to-int v0, v1

    .line 508
    .local v0, i:I
    add-int/lit8 v1, v0, 0x29

    mul-int/lit8 v1, v1, 0x29

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    return v0
.end method

.method public isCloudItem()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->mIsCloudItem:Z

    return v0
.end method

.method public isFolder()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->isFolder:Z

    return v0
.end method

.method public isNothing()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->mIsNothing:Z

    return v0
.end method

.method public isRecentFile()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/htc/app/FolderItemInfo;->isRecentFile:Z

    return v0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->isCloudItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-wide v0, p0, Lcom/htc/app/FolderItemInfo;->mCouldLastModified:J

    .line 272
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/htc/app/FolderItemInfo;->mLocalLastModified:J

    goto :goto_0
.end method

.method public setAbsolutePath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->isCloudItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mCloudPath:Ljava/lang/String;

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mLocalPath:Ljava/lang/String;

    goto :goto_0
.end method

.method setAccountId(Ljava/lang/String;)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mAccountId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method setCheckBox(Lcom/htc/widget/HtcCheckBox;)V
    .locals 0
    .parameter "checkBox"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 56
    return-void
.end method

.method setCheckBoxChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    .line 441
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 444
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    .line 429
    return-void
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, children:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v2, p0, Lcom/htc/app/FolderItemInfo;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 122
    if-eqz p1, :cond_0

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 124
    .local v0, childItem:Lcom/htc/app/FolderItemInfo;
    iget-object v2, p0, Lcom/htc/app/FolderItemInfo;->mChildren:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    .end local v0           #childItem:Lcom/htc/app/FolderItemInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public setChildrenChecked()V
    .locals 3

    .prologue
    .line 135
    iget-object v2, p0, Lcom/htc/app/FolderItemInfo;->mChildren:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/htc/app/FolderItemInfo;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 137
    .local v0, childItem:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/htc/app/FolderItemInfo;->setChecked(Z)V

    goto :goto_0

    .line 140
    .end local v0           #childItem:Lcom/htc/app/FolderItemInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public setCloudPath(Ljava/lang/String;)V
    .locals 0
    .parameter "cloudPath"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mCloudPath:Ljava/lang/String;

    .line 261
    return-void
.end method

.method setCloudShareLink(Ljava/lang/String;)V
    .locals 0
    .parameter "cloudShareLink"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mCloudShareLink:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setCouldLastModified(J)V
    .locals 0
    .parameter "couldLastModified"

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/htc/app/FolderItemInfo;->mCouldLastModified:J

    .line 185
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mFileName:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/htc/app/FolderItemInfo;->mFileSize:J

    .line 94
    return-void
.end method

.method public setItemDataSourceType(I)V
    .locals 0
    .parameter "itemType"

    .prologue
    .line 157
    iput p1, p0, Lcom/htc/app/FolderItemInfo;->mItemDataSourceType:I

    .line 158
    return-void
.end method

.method public setLastModified(J)V
    .locals 1
    .parameter "lastModified"

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/htc/app/FolderItemInfo;->isCloudItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iput-wide p1, p0, Lcom/htc/app/FolderItemInfo;->mCouldLastModified:J

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    iput-wide p1, p0, Lcom/htc/app/FolderItemInfo;->mLocalLastModified:J

    goto :goto_0
.end method

.method public setLocalLastModified(J)V
    .locals 0
    .parameter "localLastModified"

    .prologue
    .line 202
    iput-wide p1, p0, Lcom/htc/app/FolderItemInfo;->mLocalLastModified:J

    .line 203
    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0
    .parameter "localPath"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mLocalPath:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "mProgress"

    .prologue
    .line 166
    iput p1, p0, Lcom/htc/app/FolderItemInfo;->mProgress:I

    .line 167
    return-void
.end method

.method setRadioButton(Lcom/htc/widget/HtcRadioButton;)V
    .locals 0
    .parameter "radioButton"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/app/FolderItemInfo;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    .line 66
    return-void
.end method

.method setRadioButtonChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/htc/app/FolderItemInfo;->mChecked:Z

    .line 433
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/htc/app/FolderItemInfo;->mRadioButton:Lcom/htc/widget/HtcRadioButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    .line 437
    :cond_0
    return-void
.end method

.method public setRecentFile(Z)V
    .locals 0
    .parameter "isRecentFile"

    .prologue
    .line 535
    iput-boolean p1, p0, Lcom/htc/app/FolderItemInfo;->isRecentFile:Z

    .line 536
    return-void
.end method

.method public setSyncState(Z)V
    .locals 0
    .parameter "syncState"

    .prologue
    .line 555
    iput-boolean p1, p0, Lcom/htc/app/FolderItemInfo;->mSyncState:Z

    .line 556
    return-void
.end method
