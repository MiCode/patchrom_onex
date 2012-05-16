.class final Lcom/htc/music/util/HtcActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "HtcActivityChooserModel.java"

# interfaces
.implements Lcom/htc/music/util/HtcActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/HtcActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 1.0f


# instance fields
.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/music/util/HtcActivityChooserModel;


# direct methods
.method private constructor <init>(Lcom/htc/music/util/HtcActivityChooserModel;)V
    .locals 1
    .parameter

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/htc/music/util/HtcActivityChooserModel$DefaultSorter;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/HtcActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/util/HtcActivityChooserModel;Lcom/htc/music/util/HtcActivityChooserModel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1014
    invoke-direct {p0, p1}, Lcom/htc/music/util/HtcActivityChooserModel$DefaultSorter;-><init>(Lcom/htc/music/util/HtcActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public sort(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1028
    .local p1, activities:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;>;"
    .local p2, historicalRecords:Ljava/util/List;,"Ljava/util/List<Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;>;"
    iget-object v7, p0, Lcom/htc/music/util/HtcActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 1029
    .local v7, packageNameToActivityMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 1031
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1032
    .local v1, activityCount:I
    iget-object v8, p0, Lcom/htc/music/util/HtcActivityChooserModel$DefaultSorter;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mIsDefaultOrder:Z
    invoke-static {v8}, Lcom/htc/music/util/HtcActivityChooserModel;->access$400(Lcom/htc/music/util/HtcActivityChooserModel;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1033
    iget-object v8, p0, Lcom/htc/music/util/HtcActivityChooserModel$DefaultSorter;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    #calls: Lcom/htc/music/util/HtcActivityChooserModel;->setDefaultWeight(ILjava/util/List;)V
    invoke-static {v8, v1, p1}, Lcom/htc/music/util/HtcActivityChooserModel;->access$500(Lcom/htc/music/util/HtcActivityChooserModel;ILjava/util/List;)V

    .line 1035
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1036
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;

    .line 1037
    .local v0, activity:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    const/4 v8, 0x0

    iput v8, v0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 1038
    iget-object v8, v0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, p0, Lcom/htc/music/util/HtcActivityChooserModel$DefaultSorter;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/music/util/HtcActivityChooserModel;->access$300(Lcom/htc/music/util/HtcActivityChooserModel;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->lable:Ljava/lang/CharSequence;

    .line 1040
    iget-object v8, v0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1041
    .local v6, packageName:Ljava/lang/String;
    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1044
    .end local v0           #activity:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 1045
    .local v4, lastShareIndex:I
    const/high16 v5, 0x3f80

    .line 1046
    .local v5, nextRecordWeight:F
    move v3, v4

    :goto_1
    if-ltz v3, :cond_3

    .line 1047
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;

    .line 1048
    .local v2, historicalRecord:Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;
    iget-object v8, v2, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1049
    .restart local v6       #packageName:Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;

    .line 1051
    .restart local v0       #activity:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    if-eqz v0, :cond_2

    .line 1052
    iget v8, v0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v9, v2, Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;->weight:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iput v8, v0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 1054
    const/high16 v8, 0x3f80

    mul-float/2addr v5, v8

    .line 1046
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1060
    .end local v0           #activity:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    .end local v2           #historicalRecord:Lcom/htc/music/util/HtcActivityChooserModel$HistoricalRecord;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1069
    return-void
.end method
