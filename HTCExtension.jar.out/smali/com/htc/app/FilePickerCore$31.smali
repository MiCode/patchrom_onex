.class Lcom/htc/app/FilePickerCore$31;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter

    .prologue
    .line 3939
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3942
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3943
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerUtil;->getSelectedDownloadedPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3944
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 3945
    .local v0, output:[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/FilePickerUtil;->getSelectedDownloadedPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3946
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v2, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$5000(Lcom/htc/app/FilePickerCore;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$5100(Lcom/htc/app/FilePickerCore;)I

    move-result v3

    #calls: Lcom/htc/app/FilePickerCore;->onResult([Ljava/lang/String;II)V
    invoke-static {v1, v0, v2, v3}, Lcom/htc/app/FilePickerCore;->access$6500(Lcom/htc/app/FilePickerCore;[Ljava/lang/String;II)V

    .line 3947
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->finish()V
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$6600(Lcom/htc/app/FilePickerCore;)V

    .line 3949
    .end local v0           #output:[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCore$31;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setSelectedDownloadedPath(Ljava/lang/String;)V

    .line 3951
    :cond_1
    return-void
.end method
