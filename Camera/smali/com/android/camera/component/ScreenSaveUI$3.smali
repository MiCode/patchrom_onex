.class Lcom/android/camera/component/ScreenSaveUI$3;
.super Lcom/android/camera/trigger/Trigger;
.source "ScreenSaveUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ScreenSaveUI;->setupPropertyChangedCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ScreenSaveUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ScreenSaveUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/component/ScreenSaveUI$3;->this$0:Lcom/android/camera/component/ScreenSaveUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/component/ScreenSaveUI$3;->this$0:Lcom/android/camera/component/ScreenSaveUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ScreenSaveUI;->removeMessages(I)V

    .line 96
    return-void
.end method
