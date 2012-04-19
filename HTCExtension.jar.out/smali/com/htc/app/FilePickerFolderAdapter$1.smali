.class Lcom/htc/app/FilePickerFolderAdapter$1;
.super Ljava/lang/Object;
.source "FilePickerFolderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerFolderAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    .line 430
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 434
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    .local v1, currentSingleChoiceItem:Lcom/htc/app/FolderItemInfo;
    move-object v5, p1

    .line 436
    check-cast v5, Lcom/htc/widget/HtcRadioButton;

    .line 437
    .local v5, thisRadioButton:Lcom/htc/widget/HtcRadioButton;
    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mChangeRootItemLists:Ljava/util/LinkedList;
    invoke-static {v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/util/LinkedList;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mChangeRootItemLists:Ljava/util/LinkedList;
    invoke-static {v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 438
    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mChangeRootItemLists:Ljava/util/LinkedList;
    invoke-static {v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$000(Lcom/htc/app/FilePickerFolderAdapter;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/FolderItemInfo;

    .line 439
    .local v2, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {v2}, Lcom/htc/app/FolderItemInfo;->getRadioButton()Lcom/htc/widget/HtcRadioButton;

    move-result-object v3

    .line 440
    .local v3, htcRadioButton:Lcom/htc/widget/HtcRadioButton;
    if-eqz v3, :cond_0

    .line 441
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 442
    .local v0, checked:Z
    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcRadioButton;->setChecked(Z)V

    goto :goto_0

    .line 447
    .end local v0           #checked:Z
    .end local v2           #folderItemInfo:Lcom/htc/app/FolderItemInfo;
    .end local v3           #htcRadioButton:Lcom/htc/widget/HtcRadioButton;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v6}, Lcom/htc/app/FilePickerFolderAdapter;->resetAllChecked()V

    .line 448
    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v6, v1}, Lcom/htc/app/FilePickerFolderAdapter;->addToCheckedListWithoutNotify(Lcom/htc/app/FolderItemInfo;)Z

    .line 449
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/htc/app/FolderItemInfo;->setRadioButtonChecked(Z)V

    .line 450
    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    invoke-static {v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 451
    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    invoke-static {v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->getActionMode()Landroid/view/ActionMode;

    move-result-object v6

    if-nez v6, :cond_2

    .line 452
    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    invoke-static {v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 453
    :cond_2
    iget-object v6, p0, Lcom/htc/app/FilePickerFolderAdapter$1;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFolderModeMultiChoiceModeCallback:Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
    invoke-static {v6}, Lcom/htc/app/FilePickerFolderAdapter;->access$100(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->updateActionModeTitleForCount()V

    .line 456
    :cond_3
    return-void
.end method
