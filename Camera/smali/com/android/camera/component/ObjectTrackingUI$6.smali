.class Lcom/android/camera/component/ObjectTrackingUI$6;
.super Ljava/lang/Object;
.source "ObjectTrackingUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ObjectTrackingUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Lcom/android/camera/TakingPictureState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ObjectTrackingUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ObjectTrackingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/camera/component/ObjectTrackingUI$6;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/TakingPictureState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/TakingPictureState;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/TakingPictureState;>;"
    iget-object v3, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/TakingPictureState;

    sget-object v4, Lcom/android/camera/TakingPictureState;->Starting:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v3, v4}, Lcom/android/camera/TakingPictureState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    iget-object v3, p0, Lcom/android/camera/component/ObjectTrackingUI$6;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    invoke-virtual {v3}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 202
    .local v0, camera:Lcom/android/camera/HTCCamera;
    iget-object v3, p0, Lcom/android/camera/component/ObjectTrackingUI$6;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    invoke-virtual {v3}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v3

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 203
    .local v1, isPhotoMode:Z
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/camera/component/ObjectTrackingUI$6;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    invoke-virtual {v3}, Lcom/android/camera/component/ObjectTrackingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v3}, Lcom/android/camera/SelfTimerValue;->getIntergerValue()I

    move-result v2

    .line 204
    .local v2, timer:I
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getFocusingState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    if-gtz v2, :cond_1

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/ObjectTrackingUI$6;->this$0:Lcom/android/camera/component/ObjectTrackingUI;

    #calls: Lcom/android/camera/component/ObjectTrackingUI;->stopFaceDetection()V
    invoke-static {v3}, Lcom/android/camera/component/ObjectTrackingUI;->access$300(Lcom/android/camera/component/ObjectTrackingUI;)V

    .line 208
    .end local v0           #camera:Lcom/android/camera/HTCCamera;
    .end local v1           #isPhotoMode:Z
    .end local v2           #timer:I
    :cond_1
    return-void

    .line 203
    .restart local v0       #camera:Lcom/android/camera/HTCCamera;
    .restart local v1       #isPhotoMode:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
