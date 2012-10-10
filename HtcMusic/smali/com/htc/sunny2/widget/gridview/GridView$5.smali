.class Lcom/htc/sunny2/widget/gridview/GridView$5;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/animation/ISceneAnimationEndIRTListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/GridView;)V
    .locals 0
    .parameter

    .prologue
    .line 3598
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 3612
    const/4 v0, 0x0

    return v0
.end method

.method public onSceneAnimationEndIRT(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 3602
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridView$5;->this$0:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/widget/gridview/GridView;->getChild(I)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    .line 3603
    .local v0, item:Lcom/htc/sunny2/view/SView;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;

    if-eqz v1, :cond_0

    .line 3605
    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridViewItem;

    .end local v0           #item:Lcom/htc/sunny2/view/SView;
    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridViewItem;->onItemClick()V

    .line 3607
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 3618
    return-void
.end method
