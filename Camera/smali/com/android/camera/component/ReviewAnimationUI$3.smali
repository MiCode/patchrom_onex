.class Lcom/android/camera/component/ReviewAnimationUI$3;
.super Ljava/lang/Object;
.source "ReviewAnimationUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ReviewAnimationUI;->initializeOverride()V
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
        "Lcom/android/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ReviewAnimationUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ReviewAnimationUI;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/UIState;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/UIState;>;"
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 107
    sget-object v2, Lcom/android/camera/component/ReviewAnimationUI$4;->$SwitchMap$com$android$camera$UIState:[I

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/UIState;

    invoke-virtual {v1}, Lcom/android/camera/UIState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_HasReviewImage:Z
    invoke-static {v1}, Lcom/android/camera/component/ReviewAnimationUI;->access$100(Lcom/android/camera/component/ReviewAnimationUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    invoke-virtual {v1}, Lcom/android/camera/component/ReviewAnimationUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    invoke-virtual {v1}, Lcom/android/camera/component/ReviewAnimationUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->actionScreenCloseReason:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->DeleteMedia:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    if-eq v1, v2, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    iget-object v2, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;
    invoke-static {v2}, Lcom/android/camera/component/ReviewAnimationUI;->access$300(Lcom/android/camera/component/ReviewAnimationUI;)Lcom/android/camera/imaging/RawImageEventArgs;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/imaging/RawImageEventArgs;->rawImage:[B

    iget-object v3, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;
    invoke-static {v3}, Lcom/android/camera/component/ReviewAnimationUI;->access$300(Lcom/android/camera/component/ReviewAnimationUI;)Lcom/android/camera/imaging/RawImageEventArgs;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/imaging/RawImageEventArgs;->imageWidth:I

    iget-object v4, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;
    invoke-static {v4}, Lcom/android/camera/component/ReviewAnimationUI;->access$300(Lcom/android/camera/component/ReviewAnimationUI;)Lcom/android/camera/imaging/RawImageEventArgs;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/imaging/RawImageEventArgs;->imageHeight:I

    const/16 v5, 0x5a

    iget-object v6, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    invoke-virtual {v6}, Lcom/android/camera/component/ReviewAnimationUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/imaging/ImageUtility;->yvu420spToBitmap([BIIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/android/camera/component/ReviewAnimationUI;->m_ReviewImage:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/android/camera/component/ReviewAnimationUI;->access$202(Lcom/android/camera/component/ReviewAnimationUI;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 123
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_AnimationView:Lcom/android/camera/widget/ReviewAnimationView;
    invoke-static {v1}, Lcom/android/camera/component/ReviewAnimationUI;->access$000(Lcom/android/camera/component/ReviewAnimationUI;)Lcom/android/camera/widget/ReviewAnimationView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_ReviewImage:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/component/ReviewAnimationUI;->access$200(Lcom/android/camera/component/ReviewAnimationUI;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/ReviewAnimationView;->setReviewImage(Landroid/graphics/Bitmap;)V

    .line 124
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_ReviewImage:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/component/ReviewAnimationUI;->access$200(Lcom/android/camera/component/ReviewAnimationUI;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #setter for: Lcom/android/camera/component/ReviewAnimationUI;->m_ReviewImage:Landroid/graphics/Bitmap;
    invoke-static {v1, v7}, Lcom/android/camera/component/ReviewAnimationUI;->access$202(Lcom/android/camera/component/ReviewAnimationUI;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 130
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #setter for: Lcom/android/camera/component/ReviewAnimationUI;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;
    invoke-static {v1, v7}, Lcom/android/camera/component/ReviewAnimationUI;->access$302(Lcom/android/camera/component/ReviewAnimationUI;Lcom/android/camera/imaging/RawImageEventArgs;)Lcom/android/camera/imaging/RawImageEventArgs;

    goto :goto_0

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #setter for: Lcom/android/camera/component/ReviewAnimationUI;->m_HasReviewImage:Z
    invoke-static {v1, v5}, Lcom/android/camera/component/ReviewAnimationUI;->access$102(Lcom/android/camera/component/ReviewAnimationUI;Z)Z

    goto :goto_1

    .line 133
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    invoke-virtual {v1}, Lcom/android/camera/component/ReviewAnimationUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_HasReviewImage:Z
    invoke-static {v1}, Lcom/android/camera/component/ReviewAnimationUI;->access$100(Lcom/android/camera/component/ReviewAnimationUI;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    invoke-virtual {v1}, Lcom/android/camera/component/ReviewAnimationUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/android/camera/effect/GpuEffectBase;

    .line 136
    .local v0, isGpuEffect:Z
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_AnimationView:Lcom/android/camera/widget/ReviewAnimationView;
    invoke-static {v1}, Lcom/android/camera/component/ReviewAnimationUI;->access$000(Lcom/android/camera/component/ReviewAnimationUI;)Lcom/android/camera/widget/ReviewAnimationView;

    move-result-object v3

    if-eqz v0, :cond_3

    const-wide v1, 0x3ff3333333333333L

    :goto_2
    invoke-virtual {v3, v1, v2}, Lcom/android/camera/widget/ReviewAnimationView;->startReviewAnimation(D)I

    .line 137
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    iget-object v2, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    const/16 v3, 0x2711

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/component/ReviewAnimationUI;->sendMessage(Lcom/android/camera/component/Component;IZ)Z

    .line 139
    .end local v0           #isGpuEffect:Z
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #setter for: Lcom/android/camera/component/ReviewAnimationUI;->m_HasReviewImage:Z
    invoke-static {v1, v5}, Lcom/android/camera/component/ReviewAnimationUI;->access$102(Lcom/android/camera/component/ReviewAnimationUI;Z)Z

    goto/16 :goto_0

    .line 136
    .restart local v0       #isGpuEffect:Z
    :cond_3
    const-wide/high16 v1, 0x3ff0

    goto :goto_2

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
