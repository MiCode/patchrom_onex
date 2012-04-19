.class Lcom/htc/fragment/widget/BinAdapter$RecycleBin;
.super Ljava/lang/Object;
.source "BinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/BinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final mScrapOverlayImgHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrapOverlayTextHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/fragment/widget/BinAdapter;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/BinAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->this$0:Lcom/htc/fragment/widget/BinAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 600
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->mScrapOverlayTextHeap:Landroid/util/SparseArray;

    .line 601
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->mScrapOverlayImgHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->mScrapOverlayTextHeap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 646
    iget-object v0, p0, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->mScrapOverlayImgHeap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 647
    return-void
.end method

.method getOverlayImg(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "position"

    .prologue
    .line 633
    iget-object v1, p0, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->mScrapOverlayImgHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 634
    .local v0, result:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 641
    :cond_0
    return-object v0
.end method

.method getOverlayText(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 621
    iget-object v1, p0, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->mScrapOverlayTextHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 622
    .local v0, result:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 629
    :cond_0
    return-object v0
.end method

.method public put(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "position"
    .parameter "v"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->mScrapOverlayImgHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 617
    return-void
.end method

.method public put(ILjava/lang/String;)V
    .locals 1
    .parameter "position"
    .parameter "s"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->mScrapOverlayTextHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 609
    return-void
.end method
