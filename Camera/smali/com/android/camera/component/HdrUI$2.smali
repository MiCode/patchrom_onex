.class Lcom/android/camera/component/HdrUI$2;
.super Lcom/android/camera/trigger/Trigger;
.source "HdrUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HdrUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HdrUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HdrUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/camera/component/HdrUI$2;->this$0:Lcom/android/camera/component/HdrUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/camera/component/HdrUI$2;->this$0:Lcom/android/camera/component/HdrUI;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/component/HdrUI;->m_NeedToApplyEffectAgain:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/HdrUI;->access$202(Lcom/android/camera/component/HdrUI;Z)Z

    .line 253
    return-void
.end method
