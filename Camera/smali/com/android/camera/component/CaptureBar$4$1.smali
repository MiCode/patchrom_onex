.class Lcom/android/camera/component/CaptureBar$4$1;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureBar$4;->onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/CaptureBar$4;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureBar$4;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/camera/component/CaptureBar$4$1;->this$1:Lcom/android/camera/component/CaptureBar$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$4$1;->this$1:Lcom/android/camera/component/CaptureBar$4;

    iget-object v0, v0, Lcom/android/camera/component/CaptureBar$4;->this$0:Lcom/android/camera/component/CaptureBar;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/CaptureBar;->access$602(Lcom/android/camera/component/CaptureBar;Z)Z

    .line 384
    return-void
.end method
