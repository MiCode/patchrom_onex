.class Lcom/htc/app/mf/MfMainActivity$AnimatorRunner;
.super Ljava/lang/Object;
.source "MfMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/mf/MfMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorRunner"
.end annotation


# instance fields
.field private mAnim:Landroid/animation/Animator;

.field final synthetic this$0:Lcom/htc/app/mf/MfMainActivity;


# direct methods
.method public constructor <init>(Lcom/htc/app/mf/MfMainActivity;Landroid/animation/Animator;)V
    .locals 0
    .parameter
    .parameter "anim"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/htc/app/mf/MfMainActivity$AnimatorRunner;->this$0:Lcom/htc/app/mf/MfMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p2, p0, Lcom/htc/app/mf/MfMainActivity$AnimatorRunner;->mAnim:Landroid/animation/Animator;

    .line 376
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/htc/app/mf/MfMainActivity$AnimatorRunner;->mAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 384
    return-void
.end method
