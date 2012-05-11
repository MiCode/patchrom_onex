.class Lcom/android/camera/HTCCamera$30;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;

.field final synthetic val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7520
    iput-object p1, p0, Lcom/android/camera/HTCCamera$30;->this$0:Lcom/android/camera/HTCCamera;

    iput-object p2, p0, Lcom/android/camera/HTCCamera$30;->val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 7524
    iget-object v0, p0, Lcom/android/camera/HTCCamera$30;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$5000(Lcom/android/camera/HTCCamera;)Landroid/app/Dialog;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 7526
    iget-object v0, p0, Lcom/android/camera/HTCCamera$30;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/camera/HTCCamera;->access$5002(Lcom/android/camera/HTCCamera;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 7527
    iget-object v0, p0, Lcom/android/camera/HTCCamera$30;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->hasDialog:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera$30;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$100(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7529
    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera$30;->val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_1

    .line 7530
    iget-object v0, p0, Lcom/android/camera/HTCCamera$30;->val$dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7531
    :cond_1
    return-void
.end method
