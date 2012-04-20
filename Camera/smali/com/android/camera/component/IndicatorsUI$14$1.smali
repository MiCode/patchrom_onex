.class Lcom/android/camera/component/IndicatorsUI$14$1;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Lcom/android/camera/component/UIComponent$AlphaRotateAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IndicatorsUI$14;->onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/IndicatorsUI$14;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI$14;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$14$1;->this$1:Lcom/android/camera/component/IndicatorsUI$14;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rotate(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "view"
    .parameter "rotation"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$14$1;->this$1:Lcom/android/camera/component/IndicatorsUI$14;

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI$14;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateRemainingCounterLayout(Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v0, p2}, Lcom/android/camera/component/IndicatorsUI;->access$1800(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/UIRotation;)V

    .line 382
    return-void
.end method
