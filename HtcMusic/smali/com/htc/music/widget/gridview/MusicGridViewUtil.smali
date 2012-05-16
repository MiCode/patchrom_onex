.class public Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.super Ljava/lang/Object;
.source "MusicGridViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$1;,
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;,
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;,
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;,
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;,
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;,
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;,
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;,
        Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    }
.end annotation


# static fields
.field private static final SELF_TERMINATE_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "[MusicGridViewUtil]"


# instance fields
.field private mChildIdField:I

.field private mChildImagePathField:I

.field private mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

.field private mChildMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

.field private mChildNameField:I

.field private mChildUnknowName:Ljava/lang/String;

.field private mGridViewLayoutOrientation:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInitialHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;

.field private mInitialThread:Landroid/os/HandlerThread;

.field protected mMusicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;

.field private mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

.field private mParentIdField:I

.field private mParentImagePathField:I

.field private mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

.field private mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

.field private mParentNameField:I

.field private mParentUnknowName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V
    .locals 7
    .parameter "parentType"
    .parameter "childType"
    .parameter "activity"

    .prologue
    const v6, 0x7f070050

    const v5, 0x7f07004e

    const v4, 0x7f07004d

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I

    .line 34
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I

    .line 35
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentImagePathField:I

    .line 36
    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentUnknowName:Ljava/lang/String;

    .line 38
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildIdField:I

    .line 39
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildNameField:I

    .line 40
    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildImagePathField:I

    .line 41
    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildUnknowName:Ljava/lang/String;

    .line 43
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mGridViewLayoutOrientation:I

    .line 45
    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 46
    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mInitialThread:Landroid/os/HandlerThread;

    .line 58
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    .line 59
    iput-object p2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    .line 61
    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentUnknowName:Ljava/lang/String;

    .line 74
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 76
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildUnknowName:Ljava/lang/String;

    .line 86
    :cond_1
    :goto_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MusicGridViewUtilWorker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 87
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Landroid/os/Looper;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    .line 89
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    if-nez v1, :cond_2

    .line 90
    const-string v1, "[MusicGridViewUtil]"

    const-string v2, "onCreate()...mNonUiHandler is null!!!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_2
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MusicGridViewInitialWorker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mInitialThread:Landroid/os/HandlerThread;

    .line 95
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mInitialThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mInitialThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mInitialHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;

    .line 97
    return-void

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ARTIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentUnknowName:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_4
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->GENRE_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentUnknowName:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_5
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentUnknowName:Ljava/lang/String;

    goto/16 :goto_0

    .line 77
    :cond_6
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ARTIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 78
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildUnknowName:Ljava/lang/String;

    goto/16 :goto_1

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->GENRE_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 80
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildUnknowName:Ljava/lang/String;

    goto/16 :goto_1

    .line 81
    :cond_8
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iput-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildUnknowName:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method static synthetic access$1000(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Landroid/database/Cursor;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->initParentFieldId(Landroid/database/Cursor;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentImagePathField:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mInitialHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentUnknowName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateAlbumartForGenreArtist(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Landroid/database/Cursor;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->initChildFieldId(Landroid/database/Cursor;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildNameField:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildUnknowName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildImagePathField:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildIdField:I

    return v0
.end method

.method private initChildFieldId(Landroid/database/Cursor;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;)V
    .locals 1
    .parameter "c"
    .parameter "type"

    .prologue
    .line 680
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildIdField:I

    .line 682
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildNameField:I

    .line 683
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildImagePathField:I

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ARTIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildIdField:I

    .line 686
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildNameField:I

    goto :goto_0

    .line 687
    :cond_2
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->GENRE_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 688
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildIdField:I

    .line 689
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildNameField:I

    goto :goto_0

    .line 690
    :cond_3
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildIdField:I

    .line 692
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildNameField:I

    goto :goto_0
.end method

.method private initParentFieldId(Landroid/database/Cursor;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;)V
    .locals 1
    .parameter "c"
    .parameter "type"

    .prologue
    .line 663
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I

    .line 665
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I

    .line 666
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentImagePathField:I

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ARTIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I

    .line 669
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I

    goto :goto_0

    .line 670
    :cond_2
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->GENRE_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 671
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I

    .line 672
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I

    goto :goto_0

    .line 673
    :cond_3
    sget-object v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {p2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I

    .line 675
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I

    goto :goto_0
.end method

.method private updateAlbumartForGenreArtist(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V
    .locals 11
    .parameter "mediaData"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 435
    if-eqz p1, :cond_0

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->needToGetPath:Z
    invoke-static {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->access$000(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    const/4 v4, 0x1

    .line 438
    .local v4, needToNotify:Z
    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mMusicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;

    iget-object v7, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mId:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;->getChildCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 439
    .local v1, cur:Landroid/database/Cursor;
    if-eqz v1, :cond_4

    .line 440
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .local v0, count:I
    if-lez v0, :cond_3

    .line 441
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 442
    const/4 v5, 0x0

    .line 444
    .local v5, path:Ljava/lang/String;
    :try_start_0
    const-string v6, "album_art"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 445
    .local v3, fieldIndex:I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 449
    .end local v3           #fieldIndex:I
    :goto_1
    const-string v6, "[MusicGridViewUtil]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAlbumartForGenreArtist : mediaData.mPath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newPath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    monitor-enter p1

    .line 451
    :try_start_1
    iget-object v6, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mPath:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 452
    :cond_2
    iput-object v5, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mPath:Ljava/lang/String;

    .line 457
    :goto_2
    const/4 v6, 0x0

    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->needToGetPath:Z
    invoke-static {p1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->access$002(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;Z)Z

    .line 458
    const/4 v6, 0x1

    iput-boolean v6, p1, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    .line 459
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    iput v0, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mNumberOfChilds:I

    .line 462
    if-ne v0, v9, :cond_3

    .line 464
    :try_start_2
    const-string v6, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 465
    .restart local v3       #fieldIndex:I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mFirstChildId:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 471
    .end local v3           #fieldIndex:I
    .end local v5           #path:Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 472
    const/4 v1, 0x0

    .line 474
    .end local v0           #count:I
    :cond_4
    if-eqz v4, :cond_5

    .line 475
    iget-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mMusicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;

    iget v7, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mIndex:I

    invoke-interface {v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;->notifyViewItemDataChange(I)V

    .line 477
    :cond_5
    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->needToGetPath:Z
    invoke-static {p1, v10}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->access$002(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;Z)Z

    .line 478
    iput-boolean v9, p1, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->mIsDataReady:Z

    goto :goto_0

    .line 446
    .restart local v0       #count:I
    .restart local v5       #path:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 447
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "[MusicGridViewUtil]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 455
    .end local v2           #e:Ljava/lang/Exception;
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 459
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 466
    :catch_1
    move-exception v2

    .line 467
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "[MusicGridViewUtil]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private updateExpandableGridViewParameters(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .locals 2
    .parameter "globalIndex"
    .parameter "gridView"
    .parameter "expParams"

    .prologue
    .line 270
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ltz v0, :cond_3

    .line 271
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ne v0, p1, :cond_0

    .line 272
    invoke-virtual {p3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    .line 292
    .end local p3
    :goto_0
    return-object p3

    .line 274
    .restart local p3
    :cond_0
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    if-ge p1, v0, :cond_1

    .line 275
    iput p1, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    .line 285
    :goto_1
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mGridViewLayoutOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 286
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    invoke-virtual {p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getNumColumn()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getBestChildInsertIndex(II)I

    move-result v0

    iput v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    .line 290
    :goto_2
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 291
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getCount()I

    move-result v0

    iput v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    goto :goto_0

    .line 276
    :cond_1
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    if-le p1, v0, :cond_2

    .line 277
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    sub-int v0, p1, v0

    iput v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    goto :goto_1

    .line 279
    :cond_2
    const/4 p3, 0x0

    goto :goto_0

    .line 282
    :cond_3
    iput p1, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    goto :goto_1

    .line 288
    :cond_4
    iget v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    invoke-virtual {p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getNumRow()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getBestChildInsertIndex(II)I

    move-result v0

    iput v0, p3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    goto :goto_2
.end method


# virtual methods
.method public deleteChildItem(I)V
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v1

    .line 226
    .local v1, expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    iget-object v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 227
    iget v2, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 228
    iget v2, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v1           #expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "[MusicGridViewUtil]"

    const-string v3, "deleteChildItem : index out of bounds"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteItems(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;)V
    .locals 7
    .parameter "globalIndex"
    .parameter "gridView"

    .prologue
    .line 166
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v1

    .line 167
    .local v1, expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildIndex(I)I

    move-result v2

    .local v2, j:I
    if-ltz v2, :cond_3

    .line 168
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    iget-object v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 170
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    if-eqz v5, :cond_1

    .line 171
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    invoke-virtual {v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 172
    .local v4, msg:Landroid/os/Message;
    const/4 v5, 0x2

    iput v5, v4, Landroid/os/Message;->what:I

    .line 173
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    iget-object v5, v5, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentIndex(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 174
    .local v3, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v3, :cond_0

    .line 175
    const/4 v5, 0x1

    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->needToGetPath:Z
    invoke-static {v3, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->access$002(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;Z)Z

    .line 177
    :cond_0
    iput-object v3, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    invoke-virtual {v5, v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 182
    .end local v3           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    .end local v4           #msg:Landroid/os/Message;
    :cond_1
    iget v5, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 183
    iget v5, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    .line 184
    invoke-virtual {p2, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 196
    .end local v1           #expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .end local v2           #j:I
    :cond_2
    :goto_0
    return-void

    .line 185
    .restart local v1       #expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .restart local v2       #j:I
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentIndex(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 186
    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v5, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->remove(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 187
    iget v5, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    if-lez v5, :cond_2

    .line 188
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    .line 189
    invoke-virtual {p2, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v1           #expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .end local v2           #j:I
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "[MusicGridViewUtil]"

    const-string v6, "deleteItem : index out of bounds"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteParentItem(I)V
    .locals 1
    .parameter "parentIndex"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->remove(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 221
    return-void
.end method

.method public deleteParentItems([ILcom/htc/sunny2/widget/gridview/ExpandableGridView;)V
    .locals 5
    .parameter "list"
    .parameter "gridView"

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 203
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v3, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItemOnlyParent(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    move-result-object v2

    .line 205
    .local v2, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v3, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->remove(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v2           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "[MusicGridViewUtil]"

    const-string v4, "deleteItem : index out of bounds"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 107
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mHandlerThread:Landroid/os/HandlerThread;

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mInitialHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mInitialHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;->quitImmediately:Z

    .line 112
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mInitialHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 113
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mInitialHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mInitialThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mInitialThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 118
    iput-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mInitialThread:Landroid/os/HandlerThread;

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    iget-object v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    iget-object v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    iput-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    iget-object v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 130
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    iget-object v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    iput-object v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 134
    :cond_5
    return-void
.end method

.method public forceUpdateParentAlbumart(I)V
    .locals 4
    .parameter "globalIndex"

    .prologue
    .line 151
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    iget-object v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 153
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 154
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    iget-object v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 155
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v0, :cond_0

    .line 156
    const/4 v2, 0x1

    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->needToGetPath:Z
    invoke-static {v0, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->access$002(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;Z)Z

    .line 158
    :cond_0
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    invoke-virtual {v2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    .end local v0           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public getChildIndex(I)I
    .locals 1
    .parameter "globalIndex"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getChildIndex(I)I

    move-result v0

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getChildItemCount()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getCount()I

    move-result v0

    .line 412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildItemCount(I)I
    .locals 2
    .parameter "globalIndex"

    .prologue
    .line 416
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 418
    .local v0, mediatData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v0, :cond_0

    .line 419
    iget v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mNumberOfChilds:I

    .line 423
    .end local v0           #mediatData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildItemCount(Lcom/htc/sunny2/IMediaData;)I
    .locals 1
    .parameter "parentMediaData"

    .prologue
    .line 427
    instance-of v0, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v0, :cond_0

    .line 428
    check-cast p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .end local p1
    iget v0, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mNumberOfChilds:I

    .line 430
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildMediaDataId(I)Ljava/lang/String;
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    iget-object v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;

    iget-object v0, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getChildMediaDataName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 352
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    iget-object v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;

    .line 353
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;
    if-eqz v0, :cond_0

    .line 354
    iget-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->mName:Ljava/lang/String;

    .line 356
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    return-object v0
.end method

.method public getFirstChildId(I)Ljava/lang/String;
    .locals 2
    .parameter "parentIndex"

    .prologue
    .line 388
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    iget-object v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 389
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v0, :cond_0

    .line 390
    iget-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mFirstChildId:Ljava/lang/String;

    .line 392
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMediaDataName(Lcom/htc/sunny2/IMediaData;)Ljava/lang/String;
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 367
    instance-of v0, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v0, :cond_0

    .line 368
    check-cast p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 372
    :goto_0
    return-object v0

    .line 369
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;

    if-eqz v0, :cond_1

    .line 370
    check-cast p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaData;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 372
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentIndex(I)I
    .locals 1
    .parameter "globalIndex"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getParentIndex(I)I

    move-result p1

    .line 259
    .end local p1
    :cond_0
    return p1
.end method

.method public getParentItemCount()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCountOnlyParent()I

    move-result v0

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentItemDeselectedCount()I
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getDeselectedCount()I

    move-result v0

    .line 617
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentItemIdFieldSelectedList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 627
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v4, :cond_0

    .line 629
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v0

    .local v0, count:I
    if-gtz v0, :cond_1

    .line 641
    .end local v0           #count:I
    :cond_0
    return-object v2

    .line 632
    .restart local v0       #count:I
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 634
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v4, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 635
    .local v3, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 636
    new-instance v4, Ljava/lang/Integer;

    iget-object v5, v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mId:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getParentItemSelectedCount()I
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getSelectedCount()I

    move-result v0

    .line 610
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentItemSelectedList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 645
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v4, :cond_0

    .line 647
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v0

    .local v0, count:I
    if-gtz v0, :cond_1

    .line 659
    .end local v0           #count:I
    :cond_0
    return-object v2

    .line 650
    .restart local v0       #count:I
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 652
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v4, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v3

    check-cast v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 653
    .local v3, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 654
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getParentMediaDataId(I)Ljava/lang/String;
    .locals 2
    .parameter "parentIndex"

    .prologue
    .line 380
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    iget-object v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 381
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v0, :cond_0

    .line 382
    iget-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mId:Ljava/lang/String;

    .line 384
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentMediaDataName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 344
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    iget-object v1, v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 345
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v0, :cond_0

    .line 346
    iget-object v1, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    .line 348
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentMediaDataName(Lcom/htc/sunny2/IMediaData;)Ljava/lang/String;
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 360
    instance-of v0, p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v0, :cond_0

    .line 361
    check-cast p1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentMediaList()Lcom/htc/sunny2/IMediaList;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    return-object v0
.end method

.method public isContainOnlyOneChild(I)Z
    .locals 3
    .parameter "parentIndex"

    .prologue
    const/4 v1, 0x1

    .line 403
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    iget-object v2, v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 404
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mNumberOfChilds:I

    if-ne v2, v1, :cond_0

    .line 405
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGridViewExpanded()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameParentClicked(I)Z
    .locals 1
    .parameter "parentIndex"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetParentItemSelectedCount()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->resetSelectedCount()V

    .line 624
    :cond_0
    return-void
.end method

.method public setAllParentItemDeselected()I
    .locals 3

    .prologue
    .line 596
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v2, :cond_1

    .line 597
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v0

    .line 598
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 599
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->setItemDeselected(I)V

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 601
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getSelectedCount()I

    move-result v2

    .line 603
    .end local v0           #count:I
    .end local v1           #i:I
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setAllParentItemSelected()I
    .locals 3

    .prologue
    .line 585
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v2, :cond_1

    .line 586
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v0

    .line 587
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 588
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->setItemSelected(I)V

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getSelectedCount()I

    move-result v2

    .line 592
    .end local v0           #count:I
    .end local v1           #i:I
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 565
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mMusicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;

    .line 566
    return-void
.end method

.method public switchParentItemSelectedStatus(I)I
    .locals 1
    .parameter "parentIndex"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->switchItemSelectedStatus(I)I

    move-result v0

    .line 581
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateChildMediaList(Landroid/database/Cursor;)V
    .locals 1
    .parameter "childCursor"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    goto :goto_0
.end method

.method public updateExpandableGridView(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;)V
    .locals 6
    .parameter "globalIndex"
    .parameter "gridView"

    .prologue
    .line 310
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v3

    .line 311
    .local v3, oldParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    new-instance v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    invoke-direct {v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;-><init>()V

    .line 312
    .local v2, newParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    iget v4, v3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    iput v4, v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    .line 313
    iget v4, v3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    iput v4, v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    .line 314
    iget v4, v3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    iput v4, v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    .line 315
    iget v4, v3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    iput v4, v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 316
    invoke-direct {p0, p1, p2, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateExpandableGridViewParameters(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    .line 317
    iget v4, v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ltz v4, :cond_1

    iget v0, v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    .line 318
    .local v0, index:I
    :goto_0
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    iget-object v4, v4, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 319
    .local v1, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildViewTitle(Ljava/lang/String;)V

    .line 320
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    iget-object v5, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    invoke-virtual {v4, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->setChildMediaList(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;)V

    .line 321
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v4, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->updateExpGridViewParams(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 322
    iget-object v4, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {p2, v4, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildMediaList(Lcom/htc/sunny2/IMediaList;Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 323
    return-void

    .end local v0           #index:I
    .end local v1           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :cond_1
    move v0, p1

    .line 317
    goto :goto_0
.end method

.method public updateExpandableGridView(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;I)V
    .locals 0
    .parameter "globalIndex"
    .parameter "gridView"
    .parameter "layoutOrientation"

    .prologue
    .line 305
    iput p3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mGridViewLayoutOrientation:I

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateExpandableGridView(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .line 307
    return-void
.end method

.method public updateExpandableGridViewParameters(IILcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .locals 3
    .parameter "parentClickIndex"
    .parameter "parentColumn"
    .parameter "gridView"

    .prologue
    .line 296
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    .line 297
    .local v0, expParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    invoke-virtual {p3, v1, p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getBestChildInsertIndex(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    .line 298
    iget v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mChildMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 299
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->updateExpGridViewParams(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 300
    return-object v0
.end method

.method public updateParentMediaList(Landroid/database/Cursor;)V
    .locals 2
    .parameter "parentCursor"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Lcom/htc/music/widget/gridview/MusicGridViewUtil$1;)V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->updateMediaList(Landroid/database/Cursor;)V

    .line 244
    return-void
.end method

.method public updateParentViewItem()V
    .locals 3

    .prologue
    .line 569
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentImagePathField:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 572
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 573
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mNonUiHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$NonUiHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
