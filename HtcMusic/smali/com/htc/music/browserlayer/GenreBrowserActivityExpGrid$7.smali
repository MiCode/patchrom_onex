.class Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;
.super Ljava/lang/Object;
.source "GenreBrowserActivityExpGrid.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 806
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$2600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isGridViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 807
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$2700(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    move-result-object v1

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    const-string v1, "[GenreBrowserActivityExpGrid]"

    const-string v2, "go delete : type 1"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$2900(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$2800(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->prepareDeleteAllChildView(I)V

    .line 830
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v1

    if-nez v1, :cond_1

    .line 812
    const-string v1, "[GenreBrowserActivityExpGrid]"

    const-string v2, "go delete : type 2"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3102(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 814
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v2

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3202(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;I)I

    .line 815
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->prepareDeleteAllChildView(I)V

    goto :goto_0

    .line 817
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3700(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 818
    const-string v1, "[GenreBrowserActivityExpGrid]"

    const-string v2, "go delete : type 3"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3802(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 820
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v2

    #setter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$3902(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;I)I

    .line 821
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v2}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->prepareDeleteAllChildView(I)V

    goto :goto_0

    .line 825
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 826
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 827
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 828
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 829
    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$7;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$4600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
