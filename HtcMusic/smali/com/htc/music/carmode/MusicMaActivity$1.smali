.class Lcom/htc/music/carmode/MusicMaActivity$1;
.super Landroid/os/Handler;
.source "MusicMaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/MusicMaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/MusicMaActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/MusicMaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/htc/music/carmode/MusicMaActivity$1;->this$0:Lcom/htc/music/carmode/MusicMaActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 339
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 352
    :goto_0
    return-void

    .line 342
    :pswitch_0
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity$1;->this$0:Lcom/htc/music/carmode/MusicMaActivity;

    #getter for: Lcom/htc/music/carmode/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/htc/music/carmode/MusicMaActivity;->access$100(Lcom/htc/music/carmode/MusicMaActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity$1;->this$0:Lcom/htc/music/carmode/MusicMaActivity;

    #getter for: Lcom/htc/music/carmode/MusicMaActivity;->mbufferdialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/htc/music/carmode/MusicMaActivity;->access$100(Lcom/htc/music/carmode/MusicMaActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 344
    :cond_0
    const-string v1, "[MusicMaActivity]"

    const-string v2, "mbufferdialog dismiss"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 346
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 347
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity$1;->this$0:Lcom/htc/music/carmode/MusicMaActivity;

    invoke-virtual {v1}, Lcom/htc/music/carmode/MusicMaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 350
    .end local v0           #message:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/MusicMaActivity$1;->this$0:Lcom/htc/music/carmode/MusicMaActivity;

    invoke-virtual {v1}, Lcom/htc/music/carmode/MusicMaActivity;->onDeletionCompleted()V

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
