.class public Lcom/android/camera/component/ThumbnailController;
.super Lcom/android/camera/component/AsyncCameraThreadComponent;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/android/camera/IThumbnailImageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;,
        Lcom/android/camera/component/ThumbnailController$DisableAutoUpdateHandle;
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x2

.field static final MSG_CREATE_THUMB_IMAGE:I = 0x1

.field static final NAME:Ljava/lang/String; = "Thumbnail Controller"

.field private static final STATIC_TAG:Ljava/lang/String; = "ThumbnailController"

.field private static final THUMBNAIL_IMAGE_POOL_SIZE:I = 0x5

.field private static final m_ThumbnailImagePool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_CapturingMediaCount:I

.field private final m_DisableAutoUpdateHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/component/ThumbnailController$DisableAutoUpdateHandle;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_IsDeletingMedia:Z

.field private volatile m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;

.field private volatile m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

.field private m_LatestSavedMediaFilePath:Ljava/lang/String;

.field private m_LatestThumbnailImagePathForUI:Ljava/lang/String;

.field private m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 97
    const-string v0, "Thumbnail Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ThumbnailController;)Lcom/android/camera/component/ThumbnailUI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestThumbnailImagePathForUI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ThumbnailController;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/component/ThumbnailController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/io/Path;)Lcom/android/camera/io/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/ThumbnailController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailController;->onMediaCaptureStarted()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestSavedMediaFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/ThumbnailController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestSavedMediaFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/component/ThumbnailController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/component/ThumbnailController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/MediaEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailController;->onMediaSaved(Lcom/android/camera/MediaEventArgs;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/MediaEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/component/ThumbnailController;->onMediaSaveFailed(Lcom/android/camera/MediaEventArgs;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createThumbnailImage(Z)V
    .locals 36
    .parameter "sendBackToUI"

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createThumbnailImage(sendBackToUI = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ") - start"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    move-object/from16 v35, v0

    .line 109
    .local v35, ui:Lcom/android/camera/component/ThumbnailUI;
    if-nez v35, :cond_0

    .line 111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "No ThumbnailUI compoment is linked, cannot create thumbnail image"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual/range {v35 .. v35}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Cancel creating thumbnail image because UI is paused"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 124
    .local v5, imgUri:Landroid/net/Uri;
    sget-object v10, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 129
    .local v10, videoUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasUniqueStorageSlot()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 131
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v29

    .line 132
    .local v29, storageSlot:Lcom/android/camera/io/StorageSlot;
    :goto_1
    const-string v7, "_data LIKE ?"

    .line 133
    .local v7, conditions:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    iget-object v9, v0, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "DCIM"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "%"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    .line 147
    .end local v29           #storageSlot:Lcom/android/camera/io/StorageSlot;
    .local v8, conditionArgs:[Ljava/lang/String;
    :goto_2
    invoke-virtual/range {v35 .. v35}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v17

    .line 148
    .local v17, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v11, "_id"

    aput-object v11, v6, v9

    const/4 v9, 0x1

    const-string v11, "_data"

    aput-object v11, v6, v9

    const/4 v9, 0x2

    const-string v11, "datetaken"

    aput-object v11, v6, v9

    const/4 v9, 0x3

    const-string v11, "mime_type"

    aput-object v11, v6, v9

    const-string v9, "datetaken DESC, _data DESC LIMIT 0,1"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 154
    .local v18, cursorImage:Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 155
    .local v21, lastImagePath:Ljava/lang/String;
    const-wide/16 v22, 0x0

    .line 156
    .local v22, lastImageTime:J
    const/16 v24, 0x0

    .line 159
    .local v24, lastImageType:Ljava/lang/String;
    if-eqz v18, :cond_2

    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-lez v4, :cond_2

    .line 163
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 164
    const-string v4, "_data"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 165
    const-string v4, "datetaken"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 166
    const-string v4, "mime_type"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v24

    .line 182
    :cond_2
    :goto_3
    if-eqz v18, :cond_3

    .line 183
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v4, 0x4

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v11, v4

    const/4 v4, 0x1

    const-string v6, "_data"

    aput-object v6, v11, v4

    const/4 v4, 0x2

    const-string v6, "datetaken"

    aput-object v6, v11, v4

    const/4 v4, 0x3

    const-string v6, "mime_type"

    aput-object v6, v11, v4

    const-string v14, "datetaken DESC LIMIT 0,1"

    move-object v12, v7

    move-object v13, v8

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 193
    .local v19, cursorVideo:Landroid/database/Cursor;
    const/16 v25, 0x0

    .line 194
    .local v25, lastVideoPath:Ljava/lang/String;
    const-wide/16 v26, 0x0

    .line 195
    .local v26, lastVideoTime:J
    const/16 v28, 0x0

    .line 198
    .local v28, lastVideoType:Ljava/lang/String;
    if-eqz v19, :cond_4

    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-lez v4, :cond_4

    .line 202
    :try_start_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    .line 203
    const-string v4, "_data"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 204
    const-string v4, "datetaken"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 205
    const-string v4, "mime_type"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v28

    .line 221
    :cond_4
    :goto_4
    if-eqz v19, :cond_5

    .line 222
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_5
    const/16 v30, 0x0

    .line 229
    .local v30, thumb:Landroid/graphics/Bitmap;
    const/16 v31, 0x0

    .line 233
    .local v31, thumbMIME:Ljava/lang/String;
    if-eqz v21, :cond_f

    .line 235
    if-eqz v25, :cond_e

    .line 237
    cmp-long v4, v22, v26

    if-lez v4, :cond_d

    .line 239
    move-object/from16 v32, v21

    .line 240
    .local v32, thumbPath:Ljava/lang/String;
    move-wide/from16 v33, v22

    .line 266
    .local v33, thumbTime:J
    :goto_5
    if-eqz v32, :cond_6

    .line 268
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "The latest media file is \'"

    const-string v9, "\'"

    move-object/from16 v0, v32

    invoke-static {v4, v6, v0, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 272
    const/4 v4, 0x1

    move-object/from16 v0, v32

    move-wide/from16 v1, v33

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/component/ThumbnailController;->getThumbnailImageFromPool(Ljava/lang/String;JILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v30

    .line 273
    move-object/from16 v31, v24

    .line 314
    :cond_6
    :goto_6
    if-eqz p1, :cond_8

    .line 317
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/ThumbnailController;->m_LatestThumbnailImagePathForUI:Ljava/lang/String;

    .line 318
    const/16 v13, 0x2711

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    aput-object v32, v16, v4

    const/4 v4, 0x1

    aput-object v30, v16, v4

    const/4 v4, 0x2

    aput-object v31, v16, v4

    move-object/from16 v11, p0

    move-object/from16 v12, v35

    invoke-virtual/range {v11 .. v16}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 321
    monitor-enter p0

    .line 323
    :try_start_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    if-nez v4, :cond_7

    .line 324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v6, 0x2712

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 325
    :cond_7
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 328
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "createThumbnailImage() - end"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    .end local v7           #conditions:Ljava/lang/String;
    .end local v8           #conditionArgs:[Ljava/lang/String;
    .end local v17           #cameraActivity:Lcom/android/camera/HTCCamera;
    .end local v18           #cursorImage:Landroid/database/Cursor;
    .end local v19           #cursorVideo:Landroid/database/Cursor;
    .end local v21           #lastImagePath:Ljava/lang/String;
    .end local v22           #lastImageTime:J
    .end local v24           #lastImageType:Ljava/lang/String;
    .end local v25           #lastVideoPath:Ljava/lang/String;
    .end local v26           #lastVideoTime:J
    .end local v28           #lastVideoType:Ljava/lang/String;
    .end local v30           #thumb:Landroid/graphics/Bitmap;
    .end local v31           #thumbMIME:Ljava/lang/String;
    .end local v32           #thumbPath:Ljava/lang/String;
    .end local v33           #thumbTime:J
    :cond_9
    sget-object v29, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    goto/16 :goto_1

    .line 139
    :cond_a
    const-string v7, "_data LIKE ? OR _data LIKE ?"

    .line 140
    .restart local v7       #conditions:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v9

    iget-object v9, v9, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "DCIM"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "%"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    iget-object v9, v9, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "DCIM"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "%"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v4

    .restart local v8       #conditionArgs:[Ljava/lang/String;
    goto/16 :goto_2

    .line 168
    .restart local v17       #cameraActivity:Lcom/android/camera/HTCCamera;
    .restart local v18       #cursorImage:Landroid/database/Cursor;
    .restart local v21       #lastImagePath:Ljava/lang/String;
    .restart local v22       #lastImageTime:J
    .restart local v24       #lastImageType:Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 170
    .local v20, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Exception occurred while querying image file"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    const/16 v21, 0x0

    .line 177
    goto/16 :goto_3

    .line 173
    .end local v20           #ex:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v20

    .line 175
    .local v20, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Exception occurred while querying image file"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 176
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 182
    .end local v20           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v18, :cond_b

    .line 183
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v4

    .line 207
    .restart local v19       #cursorVideo:Landroid/database/Cursor;
    .restart local v25       #lastVideoPath:Ljava/lang/String;
    .restart local v26       #lastVideoTime:J
    .restart local v28       #lastVideoType:Ljava/lang/String;
    :catch_2
    move-exception v20

    .line 209
    .local v20, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Exception occurred while querying video file"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    const/16 v25, 0x0

    .line 216
    goto/16 :goto_4

    .line 212
    .end local v20           #ex:Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v20

    .line 214
    .local v20, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Exception occurred while querying video file"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 215
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 221
    .end local v20           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v19, :cond_c

    .line 222
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v4

    .line 244
    .restart local v30       #thumb:Landroid/graphics/Bitmap;
    .restart local v31       #thumbMIME:Ljava/lang/String;
    :cond_d
    move-object/from16 v32, v25

    .line 245
    .restart local v32       #thumbPath:Ljava/lang/String;
    move-wide/from16 v33, v26

    .restart local v33       #thumbTime:J
    goto/16 :goto_5

    .line 250
    .end local v32           #thumbPath:Ljava/lang/String;
    .end local v33           #thumbTime:J
    :cond_e
    move-object/from16 v32, v21

    .line 251
    .restart local v32       #thumbPath:Ljava/lang/String;
    move-wide/from16 v33, v22

    .restart local v33       #thumbTime:J
    goto/16 :goto_5

    .line 254
    .end local v32           #thumbPath:Ljava/lang/String;
    .end local v33           #thumbTime:J
    :cond_f
    if-eqz v25, :cond_10

    .line 256
    move-object/from16 v32, v25

    .line 257
    .restart local v32       #thumbPath:Ljava/lang/String;
    move-wide/from16 v33, v26

    .restart local v33       #thumbTime:J
    goto/16 :goto_5

    .line 261
    .end local v32           #thumbPath:Ljava/lang/String;
    .end local v33           #thumbTime:J
    :cond_10
    const/16 v32, 0x0

    .line 262
    .restart local v32       #thumbPath:Ljava/lang/String;
    const-wide/16 v33, 0x0

    .restart local v33       #thumbTime:J
    goto/16 :goto_5

    .line 277
    :cond_11
    :try_start_8
    monitor-enter p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 279
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;

    invoke-virtual {v4}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 281
    const-string v4, "ThumbnailController"

    const-string v6, "Use latest recorded video thumbnail image"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_12

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v30

    .line 284
    move-object/from16 v31, v28

    .line 297
    :goto_7
    monitor-exit p0

    goto/16 :goto_6

    :catchall_2
    move-exception v4

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 301
    :catch_4
    move-exception v20

    .line 303
    .restart local v20       #ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v6, "Exception occurred while creating thumbnail image"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    const/16 v32, 0x0

    .line 305
    if-eqz v30, :cond_6

    .line 307
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->recycle()V

    .line 308
    const/16 v30, 0x0

    .line 309
    const/16 v31, 0x0

    goto/16 :goto_6

    .line 288
    .end local v20           #ex:Ljava/lang/Exception;
    :cond_12
    :try_start_b
    const-string v4, "ThumbnailController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Latest recorded video is \'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Lcom/android/camera/io/Path;

    invoke-virtual {v9}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\', but no thumbnail image"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/16 v30, 0x0

    .line 290
    const/16 v31, 0x0

    goto :goto_7

    .line 294
    :cond_13
    const/4 v4, 0x2

    move-object/from16 v0, v32

    move-wide/from16 v1, v33

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/component/ThumbnailController;->getThumbnailImageFromPool(Ljava/lang/String;JILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v30

    .line 295
    move-object/from16 v31, v28

    goto :goto_7

    .line 325
    :catchall_3
    move-exception v4

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v4
.end method

.method private static declared-synchronized getThumbnailImageFromPool(Ljava/lang/String;JILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "filePath"
    .parameter "fileTime"
    .parameter "mediaType"
    .parameter "mimeType"

    .prologue
    const/4 v4, 0x0

    .line 409
    const-class v5, Lcom/android/camera/component/ThumbnailController;

    monitor-enter v5

    if-nez p0, :cond_0

    .line 411
    :try_start_0
    const-string v6, "filePath"

    invoke-static {v6}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :goto_0
    monitor-exit v5

    return-object v4

    .line 416
    :cond_0
    :try_start_1
    sget-object v6, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    .line 418
    .local v3, thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    iget-object v6, v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-wide v6, v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->fileTime:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_1

    .line 420
    sget-object v4, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 421
    sget-object v4, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 422
    iget-object v4, v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 430
    .end local v3           #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    :cond_2
    :try_start_2
    invoke-static {p0, p4}, Lcom/android/camera/imaging/ThumbnailUtility;->createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 437
    .local v2, thumb:Landroid/graphics/Bitmap;
    if-nez v2, :cond_3

    .line 439
    :try_start_3
    const-string v6, "ThumbnailController"

    const-string v7, "No thumbnail image created"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 409
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #thumb:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 432
    .restart local v1       #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 434
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_4
    const-string v6, "ThumbnailController"

    const-string v7, "Exception occurred while creating thumbnail image"

    invoke-static {v6, v7, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 444
    .end local v0           #ex:Ljava/lang/Throwable;
    .restart local v2       #thumb:Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    sget-object v4, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v6, 0x5

    if-lt v4, v6, :cond_4

    .line 446
    sget-object v4, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    .line 447
    .restart local v3       #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    iget-object v4, v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 448
    sget-object v4, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_1

    .line 452
    .end local v3           #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    :cond_4
    new-instance v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap;)V

    .line 453
    .restart local v3       #thumbInfo:Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    sget-object v4, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 456
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto :goto_0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 734
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    const/4 v0, 0x0

    .line 736
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onMediaCaptureStarted()V
    .locals 2

    .prologue
    .line 660
    monitor-enter p0

    .line 662
    :try_start_0
    iget v0, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    .line 663
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 665
    :cond_0
    monitor-exit p0

    .line 666
    return-void

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onMediaSaveFailed(Lcom/android/camera/MediaEventArgs;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 712
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    if-eqz v0, :cond_1

    .line 714
    :cond_0
    monitor-enter p0

    .line 716
    :try_start_0
    iget v0, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    if-nez v0, :cond_2

    .line 718
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Capture media counter is 0"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    monitor-exit p0

    .line 726
    :cond_1
    :goto_0
    return-void

    .line 721
    :cond_2
    iget v0, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    .line 722
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    if-nez v0, :cond_3

    .line 723
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 724
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onMediaSaved(Lcom/android/camera/MediaEventArgs;)V
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 674
    iget-boolean v0, p1, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    if-eqz v0, :cond_0

    .line 676
    monitor-enter p0

    .line 678
    :try_start_0
    iget v0, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    if-lez v0, :cond_1

    .line 679
    iget v0, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/component/ThumbnailController;->m_CapturingMediaCount:I

    .line 682
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 697
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v3, v2, v2, v0}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    .line 704
    :goto_1
    return-void

    .line 681
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Capture media counter is 0"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 699
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onMediaSaved() - Auto-update is disabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    .line 338
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    .line 339
    return-void
.end method

.method public final disableAutoUpdate()Lcom/android/camera/Handle;
    .locals 4

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->threadAccessCheck()V

    .line 349
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "disableAutoUpdate() - Component is not running"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const/4 v0, 0x0

    .line 363
    :goto_0
    return-object v0

    .line 356
    :cond_0
    new-instance v0, Lcom/android/camera/component/ThumbnailController$DisableAutoUpdateHandle;

    invoke-direct {v0}, Lcom/android/camera/component/ThumbnailController$DisableAutoUpdateHandle;-><init>()V

    .line 357
    .local v0, handle:Lcom/android/camera/component/ThumbnailController$DisableAutoUpdateHandle;
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "disableAutoUpdate() - New handle : "

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "disableAutoUpdate() - Handle count : "

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ThumbnailController;->removeAsyncMessages(I)V

    goto :goto_0
.end method

.method public final enableAutoUpdate(Lcom/android/camera/Handle;)V
    .locals 5
    .parameter "handle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 373
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->threadAccessCheck()V

    .line 374
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    if-nez p1, :cond_2

    .line 383
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_2
    instance-of v0, p1, Lcom/android/camera/component/ThumbnailController$DisableAutoUpdateHandle;

    if-nez v0, :cond_3

    .line 388
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 395
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableAutoUpdate() - Handle count : "

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 400
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v4, v3, v3, v0}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 465
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 481
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 470
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_0

    .line 474
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ThumbnailController;->removeAsyncMessages(I)V

    .line 477
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ThumbnailController;->createThumbnailImage(Z)V

    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 492
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 512
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 515
    :goto_0
    return-void

    .line 497
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->isWorkerThreadRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v6, 0x64

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;J)Z

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_DisableAutoUpdateHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 505
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_0

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Auto-update is disabled"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 524
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    .line 527
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 530
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->deletingLatestMediaEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailController$1;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 545
    iget-object v1, v0, Lcom/android/camera/CameraThread;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailController$2;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 559
    iget-object v1, v0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailController$3;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 570
    iget-object v1, v0, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailController$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailController$4;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 577
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, v0, Lcom/android/camera/CameraThread;->recordingFailedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailController$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailController$5;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 587
    iget-object v1, v0, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailController$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailController$6;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 596
    :cond_0
    iget-object v1, v0, Lcom/android/camera/CameraThread;->videoThumbnailCreatedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ThumbnailController$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ThumbnailController$7;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 628
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/ThumbnailController$8;

    iget-object v3, v0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/ThumbnailController$8;-><init>(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/ThumbnailController$9;

    iget-object v3, v0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/ThumbnailController$9;-><init>(Lcom/android/camera/component/ThumbnailController;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    return-void
.end method

.method link(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0
    .parameter "ui"

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    .line 652
    return-void
.end method

.method public final updateThumbnailImageDirectly(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)Z
    .locals 9
    .parameter "mediaInfo"
    .parameter "thumb"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 746
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->threadAccessCheck()V

    .line 747
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "updateThumbnailImageDirectly() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_0
    :goto_0
    return v3

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "updateThumbnailImageDirectly()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    if-nez v0, :cond_3

    .line 759
    :cond_2
    const/4 p2, 0x0

    .line 760
    const/4 v6, 0x0

    .line 761
    .local v6, filePath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 771
    .local v7, mimeType:Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-eqz v0, :cond_5

    .line 772
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    const/16 v2, 0x2711

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v6, v5, v3

    aput-object p2, v5, v8

    const/4 v0, 0x2

    aput-object v7, v5, v0

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move v3, v8

    .line 782
    goto :goto_0

    .line 765
    .end local v6           #filePath:Ljava/lang/String;
    .end local v7           #mimeType:Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_4

    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 766
    :goto_2
    invoke-virtual {p1}, Lcom/android/camera/MediaInfo;->getFullPath()Ljava/lang/String;

    move-result-object v6

    .line 767
    .restart local v6       #filePath:Ljava/lang/String;
    iget-object v7, p1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .restart local v7       #mimeType:Ljava/lang/String;
    goto :goto_1

    .line 765
    .end local v6           #filePath:Ljava/lang/String;
    .end local v7           #mimeType:Ljava/lang/String;
    :cond_4
    const/4 p2, 0x0

    goto :goto_2

    .line 775
    .restart local v6       #filePath:Ljava/lang/String;
    .restart local v7       #mimeType:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "updateThumbnailImageDirectly() - No UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    if-eqz p2, :cond_0

    .line 777
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
