.class public final Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
.super Ljava/lang/Object;
.source "SharedAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/SharedAdapter;
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
        "Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;

.field public lable:Ljava/lang/CharSequence;

.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/htc/music/widget/SharedAdapter;

.field public weight:F


# direct methods
.method public constructor <init>(Lcom/htc/music/widget/SharedAdapter;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "resolveInfo"
    .parameter "intent"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->this$0:Lcom/htc/music/widget/SharedAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 99
    iput-object p3, p0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->intent:Landroid/content/Intent;

    .line 100
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 127
    iget v2, p1, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->weight:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    sub-int v1, v2, v3

    .line 129
    .local v1, weightOrder:I
    if-nez v1, :cond_0

    .line 130
    iget-object v2, p1, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->this$0:Lcom/htc/music/widget/SharedAdapter;

    #getter for: Lcom/htc/music/widget/SharedAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/music/widget/SharedAdapter;->access$000(Lcom/htc/music/widget/SharedAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, lab:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->lable:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 135
    .end local v0           #lab:Ljava/lang/String;
    .end local v1           #weightOrder:I
    :cond_0
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    check-cast p1, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->compareTo(Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    if-ne p0, p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 113
    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 116
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 118
    check-cast v0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;

    .line 119
    .local v0, other:Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;
    iget v3, p0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->weight:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->weight:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 121
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->weight:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "resolveInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, "; weight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    iget v3, p0, Lcom/htc/music/widget/SharedAdapter$ActivityResolveInfo;->weight:F

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
