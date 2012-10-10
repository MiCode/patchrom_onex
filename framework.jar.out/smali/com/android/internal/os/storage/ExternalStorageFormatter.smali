.class public Lcom/android/internal/os/storage/ExternalStorageFormatter;
.super Landroid/app/Service;
.source "ExternalStorageFormatter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final CHECK_MOUNTED_INTERVAL:I = 0x64

.field public static final COMPONENT_NAME:Landroid/content/ComponentName; = null

.field private static final EXTERNAL_STORAGE_IDX:I = 0x1

.field public static final EXTRA_ALWAYS_RESET:Ljava/lang/String; = "com.android.internal.os.storage.EXTRA_ALWAYS_RESET"

.field public static final EXTRA_RESPONSE_STATUS:Ljava/lang/String; = "com.android.internal.os.storage.EXTRA_RESPONSE_STATUS"

.field public static final FORMAT_ALL_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ALL_AND_FACTORY_RESET"

.field public static final FORMAT_ALL_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ALL_ONLY"

.field public static final FORMAT_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

.field public static final FORMAT_INTERNAL_STORAGE_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_INTERNAL_STORAGE_ONLY"

.field public static final FORMAT_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ONLY"

.field private static final HTC_ACTION_FORMAT_ALL:I = 0x2

.field private static final HTC_ACTION_FORMAT_ALL_FACTORY_RESET:I = 0x3

.field private static final HTC_ACTION_FORMAT_INTERNAL_ONLY:I = 0x1

.field private static final HTC_ACTION_NONE:I = 0x0

.field private static final HTC_DEBUG_FORMATTER:Z = false

.field private static final INTERNAL_STORAGE_IDX:I = 0x0

.field private static final LAST_STORAGE_IDX:I = 0x0

.field private static final MAX_MOUNT_TIME:I = 0x64

.field private static final MSG_CHECK_MOUNT_OK:I = 0x15667

.field static final TAG:Ljava/lang/String; = "ExternalStorageFormatter"


# instance fields
.field private htcFormatAction:I

.field private mAlwaysReset:Z

.field private mCurrentStorageResult:I

.field private mFactoryReset:Z

.field private mFormatOnly:Z

.field private mFormatSequence:I

.field private mFormatStoragePath:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReplyData:Landroid/content/Intent;

.field private mResponseStatus:Z

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 60
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 64
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 66
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatOnly:Z

    .line 70
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    .line 74
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    .line 82
    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    .line 101
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    .line 211
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private InitFormatSequence()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 716
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iput v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    .line 729
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    goto :goto_0

    .line 723
    :cond_1
    iput v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatNextStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    return v0
.end method

.method private formatNextStorage()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 736
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    if-ne v2, v1, :cond_1

    .line 759
    :cond_0
    :goto_0
    return v0

    .line 740
    :cond_1
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-eqz v2, :cond_0

    .line 746
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 750
    :cond_2
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-ne v2, v1, :cond_3

    .line 751
    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    .line 754
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    .line 755
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    .line 757
    invoke-direct {p0, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V

    move v0, v1

    .line 759
    goto :goto_0
.end method

.method private getErrorCodeFromIntentData()I
    .locals 4

    .prologue
    const/16 v3, -0x65

    .line 817
    const/4 v0, 0x0

    .line 820
    .local v0, errorCode:I
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.REMOVABLE_STORAGE_STATUS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.REMOVABLE_STORAGE_STATUS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    const/16 v0, -0x66

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.FIXED_STORAGE_STATUS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 828
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.FIXED_STORAGE_STATUS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 829
    const/16 v1, -0x66

    if-ne v0, v1, :cond_2

    .line 830
    const/16 v0, -0x68

    .line 838
    :cond_1
    :goto_0
    return v0

    .line 832
    :cond_2
    const/16 v0, -0x67

    goto :goto_0
.end method

.method private getErrorCodeFromStorageResult(I)I
    .locals 1
    .parameter "storageResultCode"

    .prologue
    .line 806
    if-nez p1, :cond_0

    .line 807
    const/4 v0, 0x0

    .line 811
    :goto_0
    return v0

    .line 808
    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 809
    const/16 v0, -0x64

    goto :goto_0

    .line 811
    :cond_1
    const/16 v0, -0x65

    goto :goto_0
.end method

.method private getFormatStoragePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 684
    :goto_0
    return-object v0

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_0

    .line 668
    :cond_1
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 669
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    .line 684
    :goto_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_0

    .line 671
    :cond_2
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 673
    :cond_3
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-nez v0, :cond_4

    .line 674
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_1

    .line 677
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_1

    .line 681
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_1
.end method

.method private getFormatStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 693
    .local v0, status:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 712
    :goto_0
    return-object v1

    .line 696
    :cond_0
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 697
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 712
    goto :goto_0

    .line 699
    :cond_1
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 701
    :cond_2
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-nez v1, :cond_3

    .line 702
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 705
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 709
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getInternalStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 633
    const/4 v0, 0x0

    .line 634
    .local v0, StoragePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 640
    :goto_0
    return-object v0

    .line 637
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getInternalStorageState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 646
    const/4 v0, 0x0

    .line 648
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    .line 654
    :goto_0
    return-object v0

    .line 651
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemovableStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 608
    const/4 v0, 0x0

    .line 609
    .local v0, StoragePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 615
    :goto_0
    return-object v0

    .line 612
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemovableStorageState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 620
    const/4 v0, 0x0

    .line 622
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 628
    :goto_0
    return-object v0

    .line 625
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isExternalStoragePath(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 586
    const/4 v0, 0x0

    .line 588
    .local v0, extStoragePath:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 589
    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Passing a null string in isExternalStoragePath()!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v1, 0x0

    .line 603
    :goto_0
    return v1

    .line 593
    :cond_0
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 603
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 596
    :cond_1
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    const/4 v0, 0x0

    goto :goto_1

    .line 600
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private sendFirstCheckMountMessage(I)V
    .locals 4
    .parameter "storageIdx"

    .prologue
    const v3, 0x15667

    .line 763
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 764
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 765
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 766
    return-void
.end method

.method private updateReplyResult(IIZ)V
    .locals 4
    .parameter "whichStorage"
    .parameter "storageResultCode"
    .parameter "sendReply"

    .prologue
    .line 775
    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    if-nez v1, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    .line 779
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 787
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.FIXED_STORAGE_STATUS"

    invoke-direct {p0, p2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getErrorCodeFromStorageResult(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 788
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.FIXED_STORAGE_PATH"

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 795
    :goto_1
    if-eqz p3, :cond_0

    .line 797
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/HtcIfDevicePolicyManager;

    .line 799
    .local v0, Dpm:Landroid/app/admin/HtcIfDevicePolicyManager;
    if-eqz v0, :cond_0

    .line 800
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getErrorCodeFromIntentData()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/HtcIfDevicePolicyManager;->responseAsyncResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 782
    .end local v0           #Dpm:Landroid/app/admin/HtcIfDevicePolicyManager;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.REMOVABLE_STORAGE_STATUS"

    invoke-direct {p0, p2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getErrorCodeFromStorageResult(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 783
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    const-string v2, "com.htc.app.admin.dpm.extra.REMOVABLE_STORAGE_PATH"

    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 779
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method checkStorageMounted(I)Z
    .locals 3
    .parameter "storeageIdx"

    .prologue
    const/4 v1, 0x1

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, state:Ljava/lang/String;
    if-ne p1, v1, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    const-string v2, "bad_removal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "removed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "shared"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    :cond_0
    :goto_1
    return v1

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_2
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1
.end method

.method fail(ILjava/lang/String;)V
    .locals 8
    .parameter "msg"
    .parameter "storageState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 333
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, storagePath:Ljava/lang/String;
    iput v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    .line 337
    invoke-direct {p0, v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->isExternalStoragePath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 339
    invoke-static {p0, p1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 340
    const-string v3, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format external storage fail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_0
    const-string v3, "checking"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 349
    .local v1, isChecking:Z
    iget-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 350
    const-string/jumbo v3, "removed"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "bad_removal"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 352
    :cond_0
    const/4 v3, -0x2

    iput v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    .line 358
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 359
    .local v0, formatOver:Z
    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 362
    :cond_2
    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    if-eqz v3, :cond_3

    .line 363
    const/4 v0, 0x0

    .line 365
    if-nez v1, :cond_3

    .line 366
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatNextStorage()Z

    .line 371
    :cond_3
    if-eqz v1, :cond_7

    .line 393
    :cond_4
    :goto_2
    return-void

    .line 343
    .end local v0           #formatOver:Z
    .end local v1           #isChecking:Z
    :cond_5
    const-string v3, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format internal storage fail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 354
    .restart local v1       #isChecking:Z
    :cond_6
    iput v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    goto :goto_1

    .line 377
    .restart local v0       #formatOver:Z
    :cond_7
    if-eqz v0, :cond_4

    .line 378
    iget-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-eqz v3, :cond_8

    .line 379
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 388
    :cond_8
    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I

    iget v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I

    invoke-direct {p0, v3, v4, v7}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 391
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "fail stop service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 574
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 575
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 576
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 577
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 582
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 579
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method mountStorage(I)V
    .locals 5
    .parameter "storeageIdx"

    .prologue
    .line 183
    const/4 v2, 0x0

    .line 184
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 186
    .local v1, mountService:Landroid/os/storage/IMountService;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 188
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageDirectory()Ljava/lang/String;

    move-result-object v2

    .line 200
    :goto_1
    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ExternalStorageFormatter"

    const-string/jumbo v4, "mountStorage Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 195
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 323
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, extStoragePath:Ljava/lang/String;
    :try_start_0
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 330
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 231
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 232
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 233
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 236
    :cond_0
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 238
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 239
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    .line 312
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 313
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 243
    iput v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 244
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, intentAction:Ljava/lang/String;
    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 250
    :cond_0
    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatOnly:Z

    .line 255
    :cond_1
    const-string v1, "com.android.internal.os.storage.FORMAT_INTERNAL_STORAGE_ONLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 256
    iput v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 267
    :cond_2
    :goto_0
    const-string v1, "com.android.internal.os.storage.EXTRA_RESPONSE_STATUS"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    .line 269
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mReplyData:Landroid/content/Intent;

    .line 273
    :cond_3
    const-string v1, "com.android.internal.os.storage.EXTRA_ALWAYS_RESET"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 274
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 277
    :cond_4
    const-string/jumbo v1, "storage_volume"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 279
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_6

    .line 280
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 281
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 283
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    if-eqz v1, :cond_9

    .line 284
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 288
    :goto_1
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 289
    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-nez v1, :cond_5

    .line 290
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 295
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState(Z)V

    .line 299
    :cond_6
    return v5

    .line 258
    :cond_7
    const-string v1, "com.android.internal.os.storage.FORMAT_ALL_ONLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 259
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 260
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->InitFormatSequence()V

    goto :goto_0

    .line 262
    :cond_8
    const-string v1, "com.android.internal.os.storage.FORMAT_ALL_AND_FACTORY_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    iput v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 264
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->InitFormatSequence()V

    goto :goto_0

    .line 286
    :cond_9
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_1
.end method

.method public updateProgressDialog(I)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 560
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 561
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 562
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 565
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->isExternalStoragePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 566
    const p1, 0x20401a8

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 571
    return-void
.end method

.method updateProgressState(Z)V
    .locals 7
    .parameter "readyToFormat"

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStorageState()Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, status:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, extStoragePath:Ljava/lang/String;
    const-string/jumbo v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 409
    :cond_0
    if-eqz p1, :cond_1

    .line 412
    const v4, 0x104046e

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 413
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 417
    .local v2, mountService:Landroid/os/storage/IMountService;
    const/4 v4, 0x1

    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v2, v1, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_1
    :goto_0
    return-void

    .line 418
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Failed talking with mount service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 422
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_2
    const-string/jumbo v4, "nofs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 428
    :cond_3
    const v4, 0x104046f

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 431
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_4

    .line 432
    new-instance v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->start()V

    goto :goto_0

    .line 537
    :cond_4
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Unable to locate IMountService"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_5
    const-string v4, "bad_removal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 540
    const v4, 0x1040471

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_6
    const-string v4, "checking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 542
    const v4, 0x1040472

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_7
    const-string/jumbo v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 544
    const v4, 0x1040473

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_8
    const-string/jumbo v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 546
    const v4, 0x1040474

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 547
    :cond_9
    const-string v4, "formatting"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 548
    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 551
    :cond_a
    const v4, 0x1040475

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    .line 552
    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
