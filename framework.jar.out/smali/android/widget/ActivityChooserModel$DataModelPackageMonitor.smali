.class final Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataModelPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .locals 0
    .parameter

    .prologue
    .line 1439
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1439
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 1443
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$1100(Landroid/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1444
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #calls: Landroid/widget/ActivityChooserModel;->loadActivitiesLocked()V
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$1600(Landroid/widget/ActivityChooserModel;)V

    .line 1445
    monitor-exit v1

    .line 1446
    return-void

    .line 1445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 1450
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$1100(Landroid/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1451
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #calls: Landroid/widget/ActivityChooserModel;->loadActivitiesLocked()V
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$1600(Landroid/widget/ActivityChooserModel;)V

    .line 1452
    monitor-exit v1

    .line 1453
    return-void

    .line 1452
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 1465
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$1100(Landroid/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1466
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #calls: Landroid/widget/ActivityChooserModel;->pruneHistoricalRecordsForPackageLocked(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/widget/ActivityChooserModel;->access$1700(Landroid/widget/ActivityChooserModel;Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #calls: Landroid/widget/ActivityChooserModel;->loadActivitiesLocked()V
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$1600(Landroid/widget/ActivityChooserModel;)V

    .line 1468
    monitor-exit v1

    .line 1469
    return-void

    .line 1468
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 1457
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #getter for: Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$1100(Landroid/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1458
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #calls: Landroid/widget/ActivityChooserModel;->pruneHistoricalRecordsForPackageLocked(Ljava/lang/String;)V
    invoke-static {v0, p1}, Landroid/widget/ActivityChooserModel;->access$1700(Landroid/widget/ActivityChooserModel;Ljava/lang/String;)V

    .line 1459
    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    #calls: Landroid/widget/ActivityChooserModel;->loadActivitiesLocked()V
    invoke-static {v0}, Landroid/widget/ActivityChooserModel;->access$1600(Landroid/widget/ActivityChooserModel;)V

    .line 1460
    monitor-exit v1

    .line 1461
    return-void

    .line 1460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
