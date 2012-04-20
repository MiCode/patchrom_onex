.class Lcom/android/camera/component/AutoSceneController$3;
.super Ljava/lang/Object;
.source "AutoSceneController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoSceneController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoSceneController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoSceneController;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/camera/component/AutoSceneController$3;->this$0:Lcom/android/camera/component/AutoSceneController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 9
    .parameter "property"
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController$3;->this$0:Lcom/android/camera/component/AutoSceneController;

    iget-object v1, p0, Lcom/android/camera/component/AutoSceneController$3;->this$0:Lcom/android/camera/component/AutoSceneController;

    const/16 v2, 0x2711

    const/4 v5, 0x0

    const-wide/16 v6, 0xc8

    const/4 v8, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/AutoSceneController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 197
    return-void
.end method
