.class Lcom/android/camera/component/CaptureBar$22;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureBar;->setupPropertyChangedCallbacks()V
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
        "Lcom/android/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

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
            "Lcom/android/camera/rotate/UIRotation;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/rotate/UIRotation;>;"
    .local p2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<Lcom/android/camera/rotate/UIRotation;>;"
    const/4 v4, 0x0

    .line 1139
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CaptureBar;->removeMessages(I)V

    .line 1140
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_IsFakeRotation:Z
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$3500(Lcom/android/camera/component/CaptureBar;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1142
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$700(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 1143
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$2700(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 1144
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$1900(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 1145
    iget-object v2, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$4200(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 1167
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-virtual {v0}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->isSelfTimerStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1168
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/component/CaptureBar;->showSelfTimer(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/CaptureBar;->access$4000(Lcom/android/camera/component/CaptureBar;Z)V

    .line 1169
    :cond_1
    return-void

    .line 1149
    :cond_2
    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    if-ne v0, v1, :cond_3

    .line 1151
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->hideFakeUIRotation()V
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$4300(Lcom/android/camera/component/CaptureBar;)V

    .line 1152
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/camera/component/CaptureBar;->access$700(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V

    .line 1153
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/camera/component/CaptureBar;->access$2700(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V

    .line 1154
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/camera/component/CaptureBar;->access$1900(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V

    .line 1155
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/component/CaptureBar;->access$4200(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V

    goto :goto_0

    .line 1157
    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_IsFakeRotationTimeout:Z
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$4400(Lcom/android/camera/component/CaptureBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$700(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 1160
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_VideoCaptureButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$2700(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 1161
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_SelfTimerIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$1900(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    .line 1162
    iget-object v1, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    iget-object v0, p0, Lcom/android/camera/component/CaptureBar$22;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_SlowMotionIndicator:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/component/CaptureBar;->access$4200(Lcom/android/camera/component/CaptureBar;)Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/component/CaptureBar;->showRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    goto/16 :goto_0
.end method
