.class public Lcom/android/camera/AutoUploader;
.super Ljava/lang/Object;
.source "AutoUploader.java"


# static fields
.field private static final AUTO_UPLOAD_ALBUM:Ljava/lang/String; = "AUTO_UPLOAD_ALBUM"

.field private static final AUTO_UPLOAD_COMPOMENT_NAME:Ljava/lang/String; = "AUTO_UPLOAD_COMPOMENT_NAME"

.field private static final TAG:Ljava/lang/String; = "AutoUploader"

.field private static mAutoUploadAccount_type:Ljava/lang/String;

.field private static mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

.field private static mAutoUploadAlbumId:Ljava/lang/String;

.field private static mAutoUploadAlbumName:Ljava/lang/String;

.field private static mAutoUploadAlbumPrivacy:Ljava/lang/String;

.field private static mAutoUploadComponentName:Landroid/content/ComponentName;

.field private static mAutoUploadFrequence:Ljava/lang/String;

.field private static mAutoUploadService:Ljava/lang/String;

.field private static mAutoUploadServiceLabel:Ljava/lang/String;

.field private static mAutoUploadServiceTitle:Ljava/lang/String;

.field private static mIsAutoUploadInited:Z

.field private static mService:Ljava/lang/String;


# instance fields
.field public mAutoUploadUri:Landroid/net/Uri;

.field private mHTCCamera:Lcom/android/camera/HTCCamera;

.field private mHourOfDay:I

.field private mMinOfHour:I

.field private mUIHandler:Landroid/os/Handler;

.field private mUploaded:Z

.field protected final triggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/trigger/TriggerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    const-string v0, "Off"

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mService:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/AutoUploader;->mIsAutoUploadInited:Z

    .line 51
    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    .line 56
    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumId:Ljava/lang/String;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumName:Ljava/lang/String;

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumPrivacy:Ljava/lang/String;

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAccount_type:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;Landroid/os/Handler;)V
    .locals 2
    .parameter "activity"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 41
    iput-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 42
    iput-object v1, p0, Lcom/android/camera/AutoUploader;->mUIHandler:Landroid/os/Handler;

    .line 53
    iput v0, p0, Lcom/android/camera/AutoUploader;->mHourOfDay:I

    .line 54
    iput v0, p0, Lcom/android/camera/AutoUploader;->mMinOfHour:I

    .line 62
    iput-boolean v0, p0, Lcom/android/camera/AutoUploader;->mUploaded:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/AutoUploader;->triggers:Ljava/util/ArrayList;

    .line 74
    iput-object p1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 75
    iput-object p2, p0, Lcom/android/camera/AutoUploader;->mUIHandler:Landroid/os/Handler;

    .line 76
    invoke-direct {p0}, Lcom/android/camera/AutoUploader;->setupEventHandlers()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/AutoUploader;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/camera/AutoUploader;->mIsAutoUploadInited:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    sput-boolean p0, Lcom/android/camera/AutoUploader;->mIsAutoUploadInited:Z

    return p0
.end method

.method private setupEventHandlers()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 506
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->triggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/AutoUploader$6;

    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/AutoUploader$6;-><init>(Lcom/android/camera/AutoUploader;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->triggers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/AutoUploader$7;

    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/AutoUploader$7;-><init>(Lcom/android/camera/AutoUploader;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->resetToDefaultEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/AutoUploader$8;

    invoke-direct {v1, p0}, Lcom/android/camera/AutoUploader$8;-><init>(Lcom/android/camera/AutoUploader;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 538
    return-void
.end method


# virtual methods
.method public ShowAutoUploadSetting()V
    .locals 5

    .prologue
    .line 101
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.MediaAutoUploadSetting"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const-string v2, "immediately"

    sput-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    .line 105
    :cond_0
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowAutoUploadSetting UPLOAD_FREQUENCY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "UPLOAD_FREQUENCY"

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    const-string v3, "Off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    :cond_1
    const-string v2, "AUTO_UPLOAD"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    const-string v2, ""

    sput-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 112
    const-string v2, "AutoUploader"

    const-string v3, "ShowAutoUploadSetting AUTO_UPLOAD:false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    const-string v2, "SERVICE_LABEL"

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowAutoUploadSetting SERVICE_LABEL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/Global$REQUEST_CODE;->REQUEST_AUTO_UPLOAD_SETTING:Lcom/android/camera/Global$REQUEST_CODE;

    invoke-virtual {v3}, Lcom/android/camera/Global$REQUEST_CODE;->ordinal()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/HTCCamera;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    return-void

    .line 115
    :cond_2
    const-string v2, "AUTO_UPLOAD"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string v2, "AutoUploader"

    const-string v3, "ShowAutoUploadSetting AUTO_UPLOAD:true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "ALBUM_NAME"

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v3}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowAutoUploadSetting ALBUM_NAME:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v4}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, RE:Ljava/lang/RuntimeException;
    const-string v2, "AutoUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowAutoUploadSetting RE:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public handleAutoUploadSettingResult(Landroid/content/Intent;)V
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 352
    const-string v1, "AUTO_UPLOAD"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 353
    .local v0, enable:Z
    if-eqz v0, :cond_7

    .line 355
    const-string v1, "On"

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 356
    const-string v1, "SERVICE_LABEL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 357
    const-string v1, "SERVICE_TITLE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    .line 358
    const-string v1, "SERVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mService:Ljava/lang/String;

    .line 359
    const-string v1, "SERVICE_COMPONENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    .line 360
    const-string v1, "service_account_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAccount_type:Ljava/lang/String;

    .line 361
    const-string v1, "ALBUM"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/data/Album;

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    .line 364
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v1, :cond_2

    .line 366
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumId:Ljava/lang/String;

    .line 369
    :cond_0
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 370
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumName:Ljava/lang/String;

    .line 372
    :cond_1
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Album;->getPrivacy()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 373
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1}, Lcom/htc/opensense/social/data/Album;->getPrivacy()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumPrivacy:Ljava/lang/String;

    .line 375
    :cond_2
    const-string v1, "UPLOAD_FREQUENCY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    .line 377
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    const-string v2, "immediately"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 400
    :cond_3
    :goto_0
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_SERVICE_LABEL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_SERVICE_TITLE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_FREQUENCE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_ALBUMID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_ALBUMNAME:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQUEST_AUTO_UPLOAD_SETTING: PREF_AUTO_UPLOAD_ALBUMPRIVACY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumPrivacy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 411
    const-string v1, "AutoUploader"

    const-string v2, "mAutoUploadService is null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v1, "Off"

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 415
    :cond_4
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 417
    const-string v1, "AutoUploader"

    const-string v2, "mAutoUploadServiceLabel is null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 421
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/AutoUploader;->setAutoUploadToPreference()V

    .line 423
    return-void

    .line 381
    :cond_6
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    const-string v2, "wifi_only"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_0

    .line 386
    :cond_7
    const-string v1, "Off"

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 387
    const-string v1, "Off"

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 388
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    .line 389
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    .line 390
    iput v2, p0, Lcom/android/camera/AutoUploader;->mHourOfDay:I

    .line 391
    iput v2, p0, Lcom/android/camera/AutoUploader;->mMinOfHour:I

    .line 392
    sput-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    .line 393
    sput-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    .line 394
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumId:Ljava/lang/String;

    .line 395
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumName:Ljava/lang/String;

    .line 396
    const-string v1, ""

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbumPrivacy:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public loadAutoUploadSettings()V
    .locals 4

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-nez v1, :cond_1

    .line 177
    const-string v1, "AutoUploader"

    const-string v2, "loadAutoUploadSettings: mHTCCamera = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_auto_upload"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 183
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    const-string v1, "Off"

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_auto_upload_label"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_auto_upload_service_title"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_auto_upload_account_type"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAccount_type:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_auto_upload_component_name"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, str:Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 194
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_auto_upload_frequence"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    .line 198
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-nez v1, :cond_4

    .line 199
    new-instance v1, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v1}, Lcom/htc/opensense/social/data/Album;-><init>()V

    sput-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    .line 201
    :cond_4
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_auto_upload_album_id"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 205
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_auto_upload_album_id"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense/social/data/Album;->setAlbumId(Ljava/lang/String;)V

    .line 206
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_auto_upload_album_name"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense/social/data/Album;->setName(Ljava/lang/String;)V

    .line 207
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_auto_upload_album_privacy"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense/social/data/Album;->setPrivacy(Ljava/lang/String;)V

    .line 216
    :goto_1
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 217
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadService ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_5
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 220
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadServiceLabel ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_6
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 223
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadServiceTitle ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_7
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_8

    .line 226
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadComponentName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_8
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAccount_type:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 229
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadAccount_type ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAccount_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_2
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v1, :cond_0

    .line 235
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadAlbum.getAlbumId() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v3}, Lcom/htc/opensense/social/data/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadAlbum.getName() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v3}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadAlbum.getPrivacy ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v3}, Lcom/htc/opensense/social/data/Album;->getPrivacy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :cond_9
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/opensense/social/data/Album;->setAlbumId(Ljava/lang/String;)V

    .line 212
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/opensense/social/data/Album;->setName(Ljava/lang/String;)V

    .line 213
    sget-object v1, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/opensense/social/data/Album;->setPrivacy(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 231
    :cond_a
    const-string v1, "AutoUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadAutoUploadSettings, mAutoUploadAccount_type ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/AutoUploader;->mAutoUploadAccount_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    .line 87
    sput-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    .line 88
    iput-object v0, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 89
    return-void
.end method

.method public setAutoUploadToPreference()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-nez v0, :cond_0

    .line 137
    const-string v0, "AutoUploader"

    const-string v1, "setAutoUploadToPreference: mHTCCamera = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_service_title"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_frequence"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_label"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_account_type"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAccount_type:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_component_name"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 159
    :goto_1
    sget-object v0, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_album_id"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_album_name"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_album_privacy"

    const-string v2, "null"

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_component_name"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_album_id"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_album_name"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_auto_upload_album_privacy"

    sget-object v2, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Album;->getPrivacy()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public setParent(Lcom/android/camera/HTCCamera;)V
    .locals 2
    .parameter "actParent"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v0, "AutoUploader"

    const-string v1, "setParent HTCCamera"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSaveDone()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 322
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/camera/AutoUploader;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/AutoUploader$5;

    invoke-direct {v1, p0}, Lcom/android/camera/AutoUploader$5;-><init>(Lcom/android/camera/AutoUploader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    :cond_1
    return-void

    .line 322
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public showAutoUploadDialog()V
    .locals 7

    .prologue
    .line 248
    new-instance v3, Lcom/android/camera/AutoUploader$1;

    invoke-direct {v3, p0}, Lcom/android/camera/AutoUploader$1;-><init>(Lcom/android/camera/AutoUploader;)V

    .line 257
    .local v3, positive_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/camera/AutoUploader$2;

    invoke-direct {v2, p0}, Lcom/android/camera/AutoUploader$2;-><init>(Lcom/android/camera/AutoUploader;)V

    .line 266
    .local v2, negative_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/camera/AutoUploader$3;

    invoke-direct {v1, p0}, Lcom/android/camera/AutoUploader$3;-><init>(Lcom/android/camera/AutoUploader;)V

    .line 276
    .local v1, mCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Lcom/android/camera/rotate/RotateDialog$Builder;

    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a00af

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0054

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x2040008

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x2040007

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v0

    .line 284
    .local v0, AutoUploadDialog:Landroid/app/Dialog;
    iget-object v4, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4, v0}, Lcom/android/camera/HTCCamera;->showDialog(Landroid/app/Dialog;)Z

    .line 287
    iget-object v4, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_first_time_launch"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 288
    return-void
.end method

.method public showOKDialog()V
    .locals 4

    .prologue
    .line 291
    new-instance v1, Lcom/android/camera/AutoUploader$4;

    invoke-direct {v1, p0}, Lcom/android/camera/AutoUploader$4;-><init>(Lcom/android/camera/AutoUploader;)V

    .line 298
    .local v1, positive_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/camera/rotate/RotateDialog$Builder;

    iget-object v3, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a00af

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0055

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v2

    const v3, 0x2040009

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v0

    .line 304
    .local v0, OKDialog:Landroid/app/Dialog;
    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2, v0}, Lcom/android/camera/HTCCamera;->showDialog(Landroid/app/Dialog;)Z

    .line 305
    return-void
.end method

.method public triggerAutoUpload()V
    .locals 8

    .prologue
    .line 433
    const-string v5, "AutoUploader"

    const-string v6, "triggerAutoUpload"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportAutoUpload()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadService:Ljava/lang/String;

    const-string v6, "Off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v5, v6, :cond_0

    .line 442
    iget-object v6, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    monitor-enter v6

    .line 445
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 446
    monitor-exit v6

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v2, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 449
    .local v2, autoUploadUri:Landroid/net/Uri;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/camera/AutoUploader;->mAutoUploadUri:Landroid/net/Uri;

    .line 451
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content://media/external/video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 456
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 457
    .local v1, autoUploadService:Landroid/content/Intent;
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v4, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 461
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.htc.providers.uploads"

    const-string v7, "com.htc.providers.uploads.AutoUploadService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 467
    const-string v5, "frequency"

    sget-object v6, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v5, "service_title"

    sget-object v6, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string v5, "upload_service_component"

    sget-object v6, Lcom/android/camera/AutoUploader;->mAutoUploadComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 470
    const-string v5, "get_album"

    sget-object v6, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 471
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 474
    if-eqz v3, :cond_2

    .line 475
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_STREAM:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_2
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_AUTO_UPLOAD_FREQUENCY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoUploader;->mAutoUploadFrequence:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_AUTO_UPLOAD_SERVICE_TITLE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoUploader;->mAutoUploadServiceTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v5}, Lcom/htc/opensense/social/data/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 481
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_AUTO_UPLOAD_GET_ALBUM albumId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v7}, Lcom/htc/opensense/social/data/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_3
    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v5}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 484
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_AUTO_UPLOAD_GET_ALBUM name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v7}, Lcom/htc/opensense/social/data/Album;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_4
    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v5}, Lcom/htc/opensense/social/data/Album;->getPrivacy()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 487
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXTRA_AUTO_UPLOAD_GET_ALBUM privacy:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/AutoUploader;->mAutoUploadAlbum:Lcom/htc/opensense/social/data/Album;

    invoke-virtual {v7}, Lcom/htc/opensense/social/data/Album;->getPrivacy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/android/camera/AutoUploader;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5, v1}, Lcom/android/camera/HTCCamera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 493
    .local v0, SE:Ljava/lang/SecurityException;
    const-string v5, "AutoUploader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startService SE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    .end local v0           #SE:Ljava/lang/SecurityException;
    .end local v1           #autoUploadService:Landroid/content/Intent;
    .end local v2           #autoUploadUri:Landroid/net/Uri;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
