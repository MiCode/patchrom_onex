.class Lcom/htc/app/FilePickerTypeFragment$2;
.super Ljava/lang/Object;
.source "FilePickerTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerTypeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerTypeFragment;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerTypeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/app/FilePickerTypeFragment$2;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 95
    if-eqz p2, :cond_1

    .line 96
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$2;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/app/FilePickerTypeFragment;->access$200(Lcom/htc/app/FilePickerTypeFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$2;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$2;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    invoke-virtual {v0}, Lcom/htc/app/FilePickerTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #setter for: Lcom/htc/app/FilePickerTypeFragment;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1, v0}, Lcom/htc/app/FilePickerTypeFragment;->access$202(Lcom/htc/app/FilePickerTypeFragment;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerTypeFragment$2;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mInputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/htc/app/FilePickerTypeFragment;->access$200(Lcom/htc/app/FilePickerTypeFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerTypeFragment$2;->this$0:Lcom/htc/app/FilePickerTypeFragment;

    #getter for: Lcom/htc/app/FilePickerTypeFragment;->mEditor:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/htc/app/FilePickerTypeFragment;->access$300(Lcom/htc/app/FilePickerTypeFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 102
    :cond_1
    return-void
.end method
