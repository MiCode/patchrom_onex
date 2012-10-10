.class Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;
.super Ljava/lang/Object;
.source "MusicGridViewUtil.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/sunny2/IMediaList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/gridview/MusicGridViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParentMediaList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/SectionIndexer;",
        "Lcom/htc/sunny2/IMediaList",
        "<",
        "Lcom/htc/music/widget/gridview/MusicGridViewMediaData;",
        ">;"
    }
.end annotation


# instance fields
.field private childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

.field private expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

.field protected mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexPositionMap:Landroid/util/SparseIntArray;

.field private mIndexStringArray:[Ljava/lang/String;

.field private mSelectedCount:I

.field final synthetic this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;


# direct methods
.method private constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V
    .locals 1
    .parameter

    .prologue
    .line 841
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 846
    new-instance v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    invoke-direct {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    .line 848
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Lcom/htc/music/widget/gridview/MusicGridViewUtil$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 841
    invoke-direct {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    return-void
.end method


# virtual methods
.method public getChildIndex(I)I
    .locals 1
    .parameter "globalIndex"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ltz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    if-gt p1, v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    sub-int v0, p1, v0

    .line 1027
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 1032
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1033
    .local v0, count:I
    :goto_0
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    if-lez v1, :cond_0

    .line 1034
    const-string v1, "[MusicGridViewUtil]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParentMediaList, childsCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v3, v3, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    add-int/2addr v0, v1

    .line 1038
    .end local v0           #count:I
    :cond_0
    return v0

    .line 1032
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCountOnlyParent()I
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDeselectedCount()I
    .locals 2

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getCount()I

    move-result v0

    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getExpGridViewParams()Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    return-object v0
.end method

.method public getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, v1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    if-lez v1, :cond_1

    .line 1045
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getChildIndex(I)I

    move-result v0

    .line 1046
    .local v0, childIndex:I
    if-ltz v0, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v1

    .line 1055
    .end local v0           #childIndex:I
    :goto_0
    return-object v1

    .line 1049
    .restart local v0       #childIndex:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getParentIndex(I)I

    move-result p1

    .line 1053
    .end local v0           #childIndex:I
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 1055
    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 841
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    return-object v0
.end method

.method public getItemOnlyParent(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    .locals 2
    .parameter "parentItemIndex"

    .prologue
    const/4 v0, 0x0

    .line 950
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-object v0

    .line 951
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 952
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    goto :goto_0
.end method

.method public getParentIndex(I)I
    .locals 1
    .parameter "globalIndex"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ltz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    if-ne v0, p1, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return p1

    .line 1009
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    if-lt p1, v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    if-le p1, v0, :cond_2

    .line 1012
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    sub-int/2addr p1, v0

    goto :goto_0

    .line 1014
    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget p1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 3
    .parameter "sectionIndex"

    .prologue
    .line 1097
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1098
    .local v1, position:I
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getParentIndex(I)I

    move-result v0

    .line 1099
    .local v0, parentIndex:I
    if-gt v1, v0, :cond_0

    .line 1100
    .end local v1           #position:I
    :goto_0
    return v1

    .restart local v1       #position:I
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v2, v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1105
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionObject()[Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1061
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    .local v5, indexStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    if-nez v9, :cond_0

    .line 1063
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    .line 1065
    :cond_0
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 1068
    const/4 v0, 0x0

    .line 1070
    .local v0, cnt:I
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    iget-object v9, v9, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1071
    .local v7, src:C
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    .line 1072
    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 1073
    .local v8, str:Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #cnt:I
    .local v1, cnt:I
    invoke-virtual {v9, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 1075
    const/4 v4, 0x1

    .local v4, i:I
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1076
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    iget-object v9, v9, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1077
    .local v3, dest:C
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 1078
    const/16 v9, 0x5a

    if-le v3, v9, :cond_2

    .line 1086
    .end local v3           #dest:C
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    .line 1087
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_3

    .line 1088
    iget-object v10, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v6

    .line 1087
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1079
    .end local v6           #j:I
    .restart local v3       #dest:C
    :cond_2
    if-eq v7, v3, :cond_4

    .line 1080
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 1081
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexPositionMap:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #cnt:I
    .restart local v0       #cnt:I
    invoke-virtual {v9, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 1083
    move v7, v3

    .line 1075
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0           #cnt:I
    .restart local v1       #cnt:I
    goto :goto_0

    .line 1092
    .end local v1           #cnt:I
    .end local v2           #count:I
    .end local v3           #dest:C
    .end local v4           #i:I
    .end local v7           #src:C
    .end local v8           #str:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    return-object v9

    .restart local v1       #cnt:I
    .restart local v2       #count:I
    .restart local v3       #dest:C
    .restart local v4       #i:I
    .restart local v7       #src:C
    .restart local v8       #str:Ljava/lang/String;
    :cond_4
    move v0, v1

    .end local v1           #cnt:I
    .restart local v0       #cnt:I
    goto :goto_2
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 994
    iget v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    return v0
.end method

.method public remove(I)Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    .locals 2
    .parameter "parentIndex"

    .prologue
    .line 930
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 932
    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 933
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getSectionObject()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    .line 935
    .end local v0           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public remove(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;)V
    .locals 1
    .parameter "mediaData"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 941
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getSectionObject()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    .line 943
    :cond_0
    return-void
.end method

.method public resetSelectedCount()V
    .locals 1

    .prologue
    .line 1002
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    .line 1003
    return-void
.end method

.method public setChildMediaList(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;)V
    .locals 0
    .parameter "childList"

    .prologue
    .line 856
    iput-object p1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->childMediaList:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ChildMediaList;

    .line 857
    return-void
.end method

.method public setItemDeselected(I)V
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 982
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    .line 983
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setSelected(Z)V

    .line 988
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    goto :goto_0
.end method

.method public setItemSelected(I)V
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 970
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    .line 971
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v0, :cond_0

    .line 972
    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setSelected(Z)V

    .line 976
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    goto :goto_0
.end method

.method public switchItemSelectedStatus(I)I
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 956
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getItem(I)Lcom/htc/music/widget/gridview/MusicGridViewMediaData;

    move-result-object v0

    .line 957
    .local v0, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewMediaData;
    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 959
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setSelected(Z)V

    .line 960
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    .line 966
    :cond_0
    :goto_0
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    return v1

    .line 962
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewMediaData;->setSelected(Z)V

    .line 963
    iget v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mSelectedCount:I

    goto :goto_0
.end method

.method public updateExpGridViewParams(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 860
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, p1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->childsCount:I

    .line 861
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, p1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->clickedParentIdx:I

    .line 862
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, p1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->firstChildIdx:I

    .line 863
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->expGridViewParams:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    iget v1, p1, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    iput v1, v0, Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->lastChildIdx:I

    .line 864
    return-void
.end method

.method public updateMediaList(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 850
    if-nez p1, :cond_0

    .line 853
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v1, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    invoke-static {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1000(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    move-result-object v1

    #calls: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->initParentFieldId(Landroid/database/Cursor;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;)V
    invoke-static {v0, p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1100(Lcom/htc/music/widget/gridview/MusicGridViewUtil;Landroid/database/Cursor;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;)V

    .line 852
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->updateMediaListData(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public updateMediaListData(Landroid/database/Cursor;)V
    .locals 13
    .parameter "cursor"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 871
    iget-object v11, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    if-nez v11, :cond_3

    .line 872
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 873
    if-eqz p1, :cond_1

    .line 874
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 875
    .local v0, count:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 876
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 877
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    new-instance v11, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    iget-object v12, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v11, v12, v2, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;ILandroid/database/Cursor;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 876
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 880
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getSectionObject()[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    check-cast v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    .line 922
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentImagePathField:I
    invoke-static {v9}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1400(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v9

    if-gtz v9, :cond_2

    .line 923
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mInitialHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;
    invoke-static {v9}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1500(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 924
    iget-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mInitialHandler:Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;
    invoke-static {v9}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1500(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$InitialHandler;->sendEmptyMessage(I)Z

    .line 927
    :cond_2
    return-void

    .line 883
    :cond_3
    if-eqz p1, :cond_1

    .line 884
    if-eqz p1, :cond_1

    .line 885
    iget-object v7, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 887
    .local v7, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .restart local v0       #count:I
    if-lez v0, :cond_a

    .line 888
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 891
    .local v6, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;>;"
    iget-object v11, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    invoke-static {v11}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1000(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    move-result-object v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentMediaType:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;
    invoke-static {v11}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1000(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    move-result-object v11

    sget-object v12, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-virtual {v11, v12}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    move v8, v9

    .line 892
    .local v8, refreshName:Z
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 893
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v0, :cond_9

    .line 894
    const/4 v5, 0x0

    .line 895
    .local v5, mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    iget-object v11, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentIdField:I
    invoke-static {v11}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1200(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 896
    .local v4, id:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .line 897
    .local v1, data:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    iget-object v11, v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mId:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 898
    move-object v5, v1

    .line 899
    #setter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->needToGetPath:Z
    invoke-static {v5, v9}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->access$002(Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;Z)Z

    .line 900
    if-eqz v8, :cond_5

    .line 901
    iget-object v11, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    #getter for: Lcom/htc/music/widget/gridview/MusicGridViewUtil;->mParentNameField:I
    invoke-static {v11}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->access$1300(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;->mName:Ljava/lang/String;

    .line 903
    :cond_5
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 907
    .end local v1           #data:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :cond_6
    if-nez v5, :cond_7

    .line 908
    new-instance v5, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    .end local v5           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    iget-object v11, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->this$0:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v5, v11, v2, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil;ILandroid/database/Cursor;)V

    .line 910
    .restart local v5       #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    :cond_7
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 893
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #mediaData:Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;
    .end local v8           #refreshName:Z
    :cond_8
    move v8, v10

    .line 891
    goto :goto_2

    .line 913
    .restart local v2       #i:I
    .restart local v8       #refreshName:Z
    :cond_9
    iput-object v6, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mArrayList:Ljava/util/ArrayList;

    .line 916
    .end local v2           #i:I
    .end local v6           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;>;"
    .end local v8           #refreshName:Z
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 917
    const/4 v7, 0x0

    .line 918
    invoke-virtual {p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->getSectionObject()[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    check-cast v9, [Ljava/lang/String;

    iput-object v9, p0, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaList;->mIndexStringArray:[Ljava/lang/String;

    goto/16 :goto_1
.end method
