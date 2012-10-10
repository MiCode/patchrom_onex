.class Lcom/htc/music/DMCServiceManager$12;
.super Ljava/lang/Object;
.source "DMCServiceManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/DMCServiceManager;->prepareVolumeUI(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/music/DMCServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2972
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$12;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 2975
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2989
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 2977
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2978
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$12;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mBtnVolUpListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$4100(Lcom/htc/music/DMCServiceManager;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2979
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$12;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mBtnVolUpListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$4100(Lcom/htc/music/DMCServiceManager;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 2983
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2984
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$12;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mBtnVolDownListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$4200(Lcom/htc/music/DMCServiceManager;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2985
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$12;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mBtnVolDownListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$4200(Lcom/htc/music/DMCServiceManager;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 2975
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
