.class public Lcom/android/camera/MediaEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "MediaEventArgs.java"


# instance fields
.field public final captureID:J

.field public final contentUri:Landroid/net/Uri;

.field public final deleteFailedReason:Lcom/android/camera/MediaDeletionFailedReason;

.field public final filePath:Lcom/android/camera/io/Path;

.field public final format:Lcom/android/camera/io/FileFormat;

.field public final isLastMedia:Z

.field public final saveFailedReason:Lcom/android/camera/MediaSaveFailedReason;


# direct methods
.method public constructor <init>(JLandroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;Z)V
    .locals 8
    .parameter "captureID"
    .parameter "contentUri"
    .parameter "filePath"
    .parameter "format"
    .parameter "isLastMedia"

    .prologue
    .line 27
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/MediaSaveFailedReason;)V

    .line 28
    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/MediaSaveFailedReason;)V
    .locals 1
    .parameter "captureID"
    .parameter "contentUri"
    .parameter "filePath"
    .parameter "format"
    .parameter "isLastMedia"
    .parameter "saveFailedReason"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/android/camera/MediaEventArgs;->captureID:J

    .line 32
    iput-object p3, p0, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/MediaEventArgs;->deleteFailedReason:Lcom/android/camera/MediaDeletionFailedReason;

    .line 34
    iput-object p5, p0, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    .line 35
    iput-object p4, p0, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    .line 36
    iput-boolean p6, p0, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    .line 37
    iput-object p7, p0, Lcom/android/camera/MediaEventArgs;->saveFailedReason:Lcom/android/camera/MediaSaveFailedReason;

    .line 38
    return-void
.end method

.method public constructor <init>(JLandroid/net/Uri;ZLcom/android/camera/MediaDeletionFailedReason;)V
    .locals 1
    .parameter "captureID"
    .parameter "contentUri"
    .parameter "isLastMedia"
    .parameter "deleteFailedReason"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/android/camera/MediaEventArgs;->captureID:J

    .line 42
    iput-object p3, p0, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    .line 43
    iput-object p5, p0, Lcom/android/camera/MediaEventArgs;->deleteFailedReason:Lcom/android/camera/MediaDeletionFailedReason;

    .line 44
    iput-object v0, p0, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    .line 45
    iput-object v0, p0, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    .line 46
    iput-boolean p4, p0, Lcom/android/camera/MediaEventArgs;->isLastMedia:Z

    .line 47
    iput-object v0, p0, Lcom/android/camera/MediaEventArgs;->saveFailedReason:Lcom/android/camera/MediaSaveFailedReason;

    .line 48
    return-void
.end method


# virtual methods
.method public final isSuccessful()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/MediaEventArgs;->saveFailedReason:Lcom/android/camera/MediaSaveFailedReason;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/MediaEventArgs;->deleteFailedReason:Lcom/android/camera/MediaDeletionFailedReason;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
