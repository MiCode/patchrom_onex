.class Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper$1;
.super Ljava/lang/Object;
.source "FilePickerCloudHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->sign()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    invoke-static {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->access$500(Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;)Lcom/htc/sdk/service/cloudstorage/HtcCloudService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->mCloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    invoke-static {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->access$500(Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;)Lcom/htc/sdk/service/cloudstorage/HtcCloudService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudService;->signin()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    .line 371
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->access$600(Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign(): mCloudService is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
