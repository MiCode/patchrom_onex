.class Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;
.super Ljava/lang/Object;
.source "FilePickerFolderAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderModeMultiChoiceModeCallback"
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field final synthetic this$0:Lcom/htc/app/FilePickerFolderAdapter;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerFolderAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method


# virtual methods
.method getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method getSelectedItemCount()I
    .locals 3

    .prologue
    .line 1453
    const/4 v0, 0x0

    .line 1454
    .local v0, count:I
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerFolderAdapter;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 1455
    .local v1, itemlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/FolderItemInfo;>;"
    if-eqz v1, :cond_0

    .line 1456
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1458
    :cond_0
    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "arg0"
    .parameter "menuItem"

    .prologue
    .line 1505
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 1493
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->updateActionModeTitleForCount()V

    .line 1494
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "actionMode"

    .prologue
    .line 1515
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->getSelectedItemCount()I

    move-result v0

    .line 1516
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1517
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter;->access$400(Lcom/htc/app/FilePickerFolderAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    .line 1522
    :goto_0
    return-void

    .line 1520
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 1531
    const/4 v0, 0x1

    return v0
.end method

.method setActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "actionMode"

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 1444
    return-void
.end method

.method setActionModeTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 1450
    :cond_0
    return-void
.end method

.method updateActionModeTitleForCount()V
    .locals 5

    .prologue
    .line 1463
    invoke-virtual {p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->getSelectedItemCount()I

    move-result v0

    .line 1465
    .local v0, count:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1467
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$2100(Lcom/htc/app/FilePickerFolderAdapter;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1468
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$3100(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1469
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$2100(Lcom/htc/app/FilePickerFolderAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2040147

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1477
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->setActionModeTitle(Ljava/lang/String;)V

    .line 1478
    if-nez v0, :cond_1

    .line 1479
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 1480
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 1483
    :cond_1
    return-void

    .line 1471
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/app/FilePickerFolderAdapter;->access$2100(Lcom/htc/app/FilePickerFolderAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20403e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
