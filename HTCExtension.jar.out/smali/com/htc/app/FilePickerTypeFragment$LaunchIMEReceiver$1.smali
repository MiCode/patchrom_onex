.class Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;
.super Ljava/lang/Object;
.source "FilePickerTypeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->reLaunchIME()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    invoke-static {v0}, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->access$608(Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;)I

    .line 263
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/app/FilePickerTypeFragment;->access$200(Lcom/htc/app/FilePickerTypeFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v1, v0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/htc/app/FilePickerTypeFragment;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/htc/app/FilePickerTypeFragment;->access$202(Lcom/htc/app/FilePickerTypeFragment;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;
    invoke-static {v0}, Lcom/htc/app/FilePickerTypeFragment;->access$400(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    move-result-object v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    new-instance v1, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v2, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v2, v2, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    invoke-direct {v1, v2}, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;-><init>(Lcom/htc/app/FilePickerTypeFragment;)V

    #setter for: Lcom/htc/app/FilePickerTypeFragment;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;
    invoke-static {v0, v1}, Lcom/htc/app/FilePickerTypeFragment;->access$402(Lcom/htc/app/FilePickerTypeFragment;Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;)Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/app/FilePickerTypeFragment;->access$200(Lcom/htc/app/FilePickerTypeFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v1, v1, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mEditor:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/htc/app/FilePickerTypeFragment;->access$300(Lcom/htc/app/FilePickerTypeFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v3, v3, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;
    invoke-static {v3}, Lcom/htc/app/FilePickerTypeFragment;->access$400(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver$1;->this$1:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    iget-object v0, v0, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mLaunchIMEReceiver:Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;
    invoke-static {v0}, Lcom/htc/app/FilePickerTypeFragment;->access$400(Lcom/htc/app/FilePickerTypeFragment;)Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/app/FilePickerTypeFragment$LaunchIMEReceiver;->send(ILandroid/os/Bundle;)V

    .line 272
    :cond_2
    return-void
.end method
