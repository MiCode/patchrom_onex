.class Lcom/htc/music/AddAppShortcutActivity$2;
.super Ljava/lang/Object;
.source "AddAppShortcutActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/AddAppShortcutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/AddAppShortcutActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/AddAppShortcutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/htc/music/AddAppShortcutActivity$2;->this$0:Lcom/htc/music/AddAppShortcutActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity$2;->this$0:Lcom/htc/music/AddAppShortcutActivity;

    #getter for: Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/AddAppShortcutActivity;->access$000(Lcom/htc/music/AddAppShortcutActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity$2;->this$0:Lcom/htc/music/AddAppShortcutActivity;

    #getter for: Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/AddAppShortcutActivity;->access$000(Lcom/htc/music/AddAppShortcutActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity$2;->this$0:Lcom/htc/music/AddAppShortcutActivity;

    #getter for: Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/AddAppShortcutActivity;->access$000(Lcom/htc/music/AddAppShortcutActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity$2;->this$0:Lcom/htc/music/AddAppShortcutActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/htc/music/AddAppShortcutActivity;->setResult(ILandroid/content/Intent;)V

    .line 207
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity$2;->this$0:Lcom/htc/music/AddAppShortcutActivity;

    invoke-virtual {v1}, Lcom/htc/music/AddAppShortcutActivity;->finish()V

    .line 208
    return-void
.end method
