.class public final Lcom/android/camera/component/SavingRecordingUI;
.super Lcom/android/camera/component/UIComponent;
.source "SavingRecordingUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/SavingRecordingUI$2;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "Saving Recording UI"


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3
    .parameter "cameraActivity"

    .prologue
    .line 22
    const-string v0, "Saving Recording UI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/SavingRecordingUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/camera/component/SavingRecordingUI;->showSavingRecordingUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/SavingRecordingUI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/camera/component/SavingRecordingUI;->hideSavingRecordingUI()V

    return-void
.end method

.method private hideSavingRecordingUI()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "hideSavingRecordingUI()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/component/SavingRecordingUI;->showProcessingDialog(Z)V

    .line 86
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/camera/component/SavingRecordingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 46
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SavingRecordingUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SavingRecordingUI$1;-><init>(Lcom/android/camera/component/SavingRecordingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 66
    return-void
.end method

.method private showSavingRecordingUI()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "showSavingRecordingUI()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    const v1, 0x7f0a004f

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/SavingRecordingUI;->showProcessingDialog(ZI)V

    .line 76
    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 34
    invoke-direct {p0}, Lcom/android/camera/component/SavingRecordingUI;->setupPropertyChangedCallbacks()V

    .line 35
    return-void
.end method
