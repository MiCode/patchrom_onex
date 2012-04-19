.class Lcom/htc/app/FilePickerFolderAdapter$2;
.super Ljava/lang/Object;
.source "FilePickerFolderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerFolderAdapter;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerFolderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "btn"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 499
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FolderItemInfo;

    .line 501
    .local v0, currentChoiceItem:Lcom/htc/app/FolderItemInfo;
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v7, v0}, Lcom/htc/app/FilePickerFolderAdapter;->existCheckedList(Lcom/htc/app/FolderItemInfo;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_0
    move v2, v6

    .line 503
    .local v2, isChecked:Z
    :goto_0
    const v7, 0x20200b3

    invoke-virtual {p1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 505
    .local v3, itemView:Landroid/view/View;
    if-nez v2, :cond_7

    .line 507
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 508
    .local v4, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isGroup()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 509
    new-instance v5, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v9, 0x2

    invoke-direct {v5, v7, v8, v9}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    :goto_1
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isGroup()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 517
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #calls: Lcom/htc/app/FilePickerFolderAdapter;->checkedChildItems(Lcom/htc/app/FolderItemInfo;)V
    invoke-static {v5, v0}, Lcom/htc/app/FilePickerFolderAdapter;->access$200(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FolderItemInfo;)V

    .line 519
    :cond_1
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #calls: Lcom/htc/app/FilePickerFolderAdapter;->isCheckedParentItems(Lcom/htc/app/FolderItemInfo;)Z
    invoke-static {v5, v0}, Lcom/htc/app/FilePickerFolderAdapter;->access$300(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FolderItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 520
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v5, v0}, Lcom/htc/app/FilePickerFolderAdapter;->removeFromCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)Z

    .line 521
    invoke-virtual {v0, v6}, Lcom/htc/app/FolderItemInfo;->setCheckBoxChecked(Z)V

    .line 529
    :goto_2
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v5}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 530
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #calls: Lcom/htc/app/FilePickerFolderAdapter;->checkedParentItems(Lcom/htc/app/FolderItemInfo;)V
    invoke-static {v5, v0}, Lcom/htc/app/FilePickerFolderAdapter;->access$500(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FolderItemInfo;)V

    .line 561
    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    invoke-static {v5}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->getActionMode()Landroid/view/ActionMode;

    move-result-object v5

    if-nez v5, :cond_3

    .line 562
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    invoke-static {v5}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 563
    :cond_3
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    invoke-static {v5}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->updateActionModeTitleForCount()V

    .line 565
    return-void

    .end local v2           #isChecked:Z
    .end local v3           #itemView:Landroid/view/View;
    .end local v4           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    move v2, v5

    .line 501
    goto :goto_0

    .line 512
    .restart local v2       #isChecked:Z
    .restart local v3       #itemView:Landroid/view/View;
    .restart local v4       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    new-instance v7, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v7, v8, v9, v5}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 525
    :cond_6
    invoke-virtual {v0, v6}, Lcom/htc/app/FolderItemInfo;->setCheckBoxChecked(Z)V

    .line 526
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v5, v0}, Lcom/htc/app/FilePickerFolderAdapter;->addToCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)Z

    goto :goto_2

    .line 534
    .end local v4           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 535
    .restart local v4       #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isGroup()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 536
    new-instance v7, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v10, 0x3

    invoke-direct {v7, v8, v9, v10}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    :goto_4
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isGroup()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 544
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #calls: Lcom/htc/app/FilePickerFolderAdapter;->uncheckedChildItems(Lcom/htc/app/FolderItemInfo;)V
    invoke-static {v7, v0}, Lcom/htc/app/FilePickerFolderAdapter;->access$600(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FolderItemInfo;)V

    .line 547
    :cond_8
    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v7, v0}, Lcom/htc/app/FilePickerFolderAdapter;->removeFromCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)Z

    .line 549
    invoke-virtual {v0, v5}, Lcom/htc/app/FolderItemInfo;->setCheckBoxChecked(Z)V

    .line 551
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isGroup()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v7}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/app/FilePickerUtil;->isFilePickerModeEnabled()Z

    move-result v7

    if-nez v7, :cond_a

    :cond_9
    invoke-virtual {v0}, Lcom/htc/app/FolderItemInfo;->isGroup()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v7}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/app/FilePickerUtil;->isFolderPickerModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_a
    move v1, v6

    .line 556
    .local v1, enableSelectionUI:Z
    :goto_5
    if-eqz v1, :cond_2

    .line 557
    iget-object v5, p0, Lcom/htc/app/FilePickerFolderAdapter$2;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #calls: Lcom/htc/app/FilePickerFolderAdapter;->uncheckedParentItems(Lcom/htc/app/FolderItemInfo;)V
    invoke-static {v5, v0}, Lcom/htc/app/FilePickerFolderAdapter;->access$700(Lcom/htc/app/FilePickerFolderAdapter;Lcom/htc/app/FolderItemInfo;)V

    goto/16 :goto_3

    .line 539
    .end local v1           #enableSelectionUI:Z
    :cond_b
    new-instance v7, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v9, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v7, v8, v9, v6}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_c
    move v1, v5

    .line 551
    goto :goto_5
.end method
