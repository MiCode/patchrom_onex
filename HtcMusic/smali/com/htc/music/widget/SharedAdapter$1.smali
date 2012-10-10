.class final Lcom/htc/music/widget/SharedAdapter$1;
.super Ljava/lang/Object;
.source "SharedAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/SharedAdapter;->getShareDialogClickListener(Landroid/app/Activity;Ljava/lang/String;Lcom/htc/music/widget/SharedAdapter;)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/htc/music/widget/SharedAdapter;

.field final synthetic val$innerActivity:Landroid/app/Activity;

.field final synthetic val$innerText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/SharedAdapter;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/htc/music/widget/SharedAdapter$1;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    iput-object p2, p0, Lcom/htc/music/widget/SharedAdapter$1;->val$innerText:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/music/widget/SharedAdapter$1;->val$innerActivity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter$1;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    invoke-virtual {v1, p2}, Lcom/htc/music/widget/SharedAdapter;->updateRecord(I)V

    .line 350
    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter$1;->val$adapter:Lcom/htc/music/widget/SharedAdapter;

    invoke-virtual {v1, p2}, Lcom/htc/music/widget/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 351
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 352
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/htc/music/widget/SharedAdapter$1;->val$innerText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 357
    const-string v1, "[ShareAdapter]"

    const-string v2, "choose_listener: text, Package is null... "

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/SharedAdapter$1;->val$innerActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 363
    :cond_1
    if-eqz p1, :cond_2

    .line 364
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 366
    :cond_2
    return-void
.end method
