.class Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4;
.super Landroid/os/Handler;
.source "FilePickerFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1386
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1408
    :goto_0
    return-void

    .line 1388
    :pswitch_0
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2500(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->updateListItemRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3400(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1391
    :pswitch_1
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2500(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->scanEndRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3500(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1394
    :pswitch_2
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2500(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->expandRootItemRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2400(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1397
    :pswitch_3
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    new-instance v1, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4$1;

    invoke-direct {v1, p0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4$1;-><init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4;)V

    #setter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->showRefreshAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3602(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1405
    iget-object v0, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2500(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$4;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->showRefreshAnimationRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3600(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1386
    :pswitch_data_0
    .packed-switch 0xa5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
