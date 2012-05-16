.class public final Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
.super Ljava/lang/Object;
.source "HtcActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/HtcActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActivityResolveInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;

.field public lable:Ljava/lang/CharSequence;

.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/htc/music/util/HtcActivityChooserModel;

.field public weight:F


# direct methods
.method public constructor <init>(Lcom/htc/music/util/HtcActivityChooserModel;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "resolveInfo"
    .parameter "intent"

    .prologue
    .line 958
    iput-object p1, p0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 959
    iput-object p2, p0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 960
    iput-object p3, p0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->intent:Landroid/content/Intent;

    .line 961
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 988
    iget v2, p1, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 990
    .local v1, weightOrder:I
    if-nez v1, :cond_0

    .line 991
    iget-object v2, p1, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->this$0:Lcom/htc/music/util/HtcActivityChooserModel;

    #getter for: Lcom/htc/music/util/HtcActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/music/util/HtcActivityChooserModel;->access$300(Lcom/htc/music/util/HtcActivityChooserModel;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 993
    .local v0, lab:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->lable:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 996
    .end local v0           #lab:Ljava/lang/String;
    .end local v1           #weightOrder:I
    :cond_0
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 933
    check-cast p1, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->compareTo(Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 970
    if-ne p0, p1, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v1

    .line 973
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 974
    goto :goto_0

    .line 976
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 977
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 979
    check-cast v0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;

    .line 980
    .local v0, other:Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;
    iget v3, p0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 982
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1003
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    const-string v1, "resolveInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    const-string v1, "; weight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    iget v3, p0, Lcom/htc/music/util/HtcActivityChooserModel$ActivityResolveInfo;->weight:F

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1006
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
