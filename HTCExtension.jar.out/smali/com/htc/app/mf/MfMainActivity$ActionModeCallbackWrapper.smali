.class Lcom/htc/app/mf/MfMainActivity$ActionModeCallbackWrapper;
.super Ljava/lang/Object;
.source "MfMainActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/mf/MfMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallbackWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/ActionMode$Callback;

.field final synthetic this$0:Lcom/htc/app/mf/MfMainActivity;


# direct methods
.method public constructor <init>(Lcom/htc/app/mf/MfMainActivity;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .parameter
    .parameter "wrapped"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/htc/app/mf/MfMainActivity$ActionModeCallbackWrapper;->this$0:Lcom/htc/app/mf/MfMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p2, p0, Lcom/htc/app/mf/MfMainActivity$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    .line 249
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 281
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity$ActionModeCallbackWrapper;->this$0:Lcom/htc/app/mf/MfMainActivity;

    const/4 v1, 0x1

    #setter for: Lcom/htc/app/mf/MfMainActivity;->mIsDestroyMyActionMode:Z
    invoke-static {v0, v1}, Lcom/htc/app/mf/MfMainActivity;->access$002(Lcom/htc/app/mf/MfMainActivity;Z)Z

    .line 282
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
