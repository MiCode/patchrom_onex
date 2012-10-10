.class Lcom/android/camera/component/ZoomBar$5$1;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ZoomBar$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/ZoomBar$5;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBar$5;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/camera/component/ZoomBar$5$1;->this$1:Lcom/android/camera/component/ZoomBar$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .parameter "property"
    .parameter "e"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar$5$1;->this$1:Lcom/android/camera/component/ZoomBar$5;

    iget-object v0, v0, Lcom/android/camera/component/ZoomBar$5;->this$0:Lcom/android/camera/component/ZoomBar;

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$5$1;->this$1:Lcom/android/camera/component/ZoomBar$5;

    iget-object v1, v1, Lcom/android/camera/component/ZoomBar$5;->this$0:Lcom/android/camera/component/ZoomBar;

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/component/ZoomBar;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 247
    return-void
.end method
