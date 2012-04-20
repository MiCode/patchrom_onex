.class Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "ImageAdjustmentMenuItem.java"

# interfaces
.implements Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;
.implements Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/menu/ImageAdjustmentMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePropertyMenuItem"
.end annotation


# instance fields
.field public final index:I

.field final synthetic this$0:Lcom/android/camera/menu/ImageAdjustmentMenuItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/menu/ImageAdjustmentMenuItem;I)V
    .locals 1
    .parameter
    .parameter "index"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    invoke-direct {p0}, Lcom/android/camera/menu/MenuItem;-><init>()V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->setSelectable(Z)V

    .line 44
    iput p2, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->index:I

    .line 45
    return-void
.end method


# virtual methods
.method protected getView(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "inflater"
    .parameter "levels"
    .parameter "convertView"

    .prologue
    .line 54
    instance-of v1, p4, Lcom/android/camera/widget/ImagePropertyItem;

    if-nez v1, :cond_0

    .line 55
    new-instance p4, Lcom/android/camera/widget/ImagePropertyItem;

    .end local p4
    iget-object v1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    #getter for: Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->access$000(Lcom/android/camera/menu/ImageAdjustmentMenuItem;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-direct {p4, v1}, Lcom/android/camera/widget/ImagePropertyItem;-><init>(Landroid/content/Context;)V

    .restart local p4
    :cond_0
    move-object v0, p4

    .line 56
    check-cast v0, Lcom/android/camera/widget/ImagePropertyItem;

    .line 59
    .local v0, propertyItem:Lcom/android/camera/widget/ImagePropertyItem;
    iget v1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->index:I

    iget-object v2, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    #getter for: Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_CameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v2}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->access$100(Lcom/android/camera/menu/ImageAdjustmentMenuItem;)Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/widget/ImagePropertyItem;->initialize(ILcom/android/camera/CameraThread;)V

    .line 60
    invoke-virtual {v0, p0}, Lcom/android/camera/widget/ImagePropertyItem;->setOnButtonClickedListener(Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;)V

    .line 61
    invoke-virtual {v0, p0}, Lcom/android/camera/widget/ImagePropertyItem;->setOnLevelChangedListener(Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;)V

    .line 64
    return-object v0
.end method

.method public final isDefaultLevel()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 72
    iget-object v3, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    #getter for: Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v3}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->access$000(Lcom/android/camera/menu/ImageAdjustmentMenuItem;)Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->access$200()[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->index:I

    aget-object v4, v4, v5

    const-string v5, "2"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/CameraSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, str:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 79
    :goto_0
    return v2

    .line 75
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, ex:Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public onButtonClicked(Lcom/android/camera/widget/ImagePropertyItem;Landroid/view/View;)V
    .locals 1
    .parameter "propertyItem"
    .parameter "button"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    invoke-virtual {v0}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->notifyItemContentClicked()V

    .line 90
    return-void
.end method

.method public onLevelChanged(Lcom/android/camera/widget/ImagePropertyItem;I)V
    .locals 1
    .parameter "propertyItem"
    .parameter "level"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    invoke-virtual {v0}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->updateContent()V

    .line 99
    return-void
.end method
