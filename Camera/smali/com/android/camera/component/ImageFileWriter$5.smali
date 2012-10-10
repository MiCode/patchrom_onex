.class Lcom/android/camera/component/ImageFileWriter$5;
.super Ljava/lang/Object;
.source "ImageFileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ImageFileWriter;->prepare(Lcom/android/camera/io/StorageSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ImageFileWriter;

.field final synthetic val$storageSlot:Lcom/android/camera/io/StorageSlot;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ImageFileWriter;Lcom/android/camera/io/StorageSlot;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/camera/component/ImageFileWriter$5;->this$0:Lcom/android/camera/component/ImageFileWriter;

    iput-object p2, p0, Lcom/android/camera/component/ImageFileWriter$5;->val$storageSlot:Lcom/android/camera/io/StorageSlot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/camera/component/ImageFileWriter$5;->this$0:Lcom/android/camera/component/ImageFileWriter;

    iget-object v1, p0, Lcom/android/camera/component/ImageFileWriter$5;->val$storageSlot:Lcom/android/camera/io/StorageSlot;

    #calls: Lcom/android/camera/component/ImageFileWriter;->prepareInternal(Lcom/android/camera/io/StorageSlot;)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ImageFileWriter;->access$200(Lcom/android/camera/component/ImageFileWriter;Lcom/android/camera/io/StorageSlot;)V

    .line 310
    return-void
.end method
