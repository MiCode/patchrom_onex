.class public final Lcom/android/camera/property/PropertyUtility;
.super Ljava/lang/Object;
.source "PropertyUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChangedCallbackAsync(Lcom/android/camera/property/Property;Landroid/os/Handler;Lcom/android/camera/property/PropertyChangedCallback;)V
    .locals 1
    .parameter
    .parameter "propertyThreadHandler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Landroid/os/Handler;",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p2, callback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<-TTValue;>;"
    if-nez p0, :cond_0

    .line 17
    const-string v0, "property"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 20
    :cond_0
    if-nez p1, :cond_1

    .line 22
    const-string v0, "propertyThreadHandler"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 25
    :cond_1
    if-nez p2, :cond_2

    .line 27
    const-string v0, "callback"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 32
    :cond_2
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_3

    .line 34
    new-instance v0, Lcom/android/camera/property/PropertyUtility$1;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/property/PropertyUtility$1;-><init>(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    goto :goto_0
.end method

.method public static removeChangedCallbackAsync(Lcom/android/camera/property/Property;Landroid/os/Handler;Lcom/android/camera/property/PropertyChangedCallback;)V
    .locals 1
    .parameter
    .parameter "propertyThreadHandler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Landroid/os/Handler;",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p2, callback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<-TTValue;>;"
    if-nez p0, :cond_0

    .line 54
    const-string v0, "property"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 57
    :cond_0
    if-nez p1, :cond_1

    .line 59
    const-string v0, "propertyThreadHandler"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 62
    :cond_1
    if-nez p2, :cond_2

    .line 64
    const-string v0, "callback"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 69
    :cond_2
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_3

    .line 71
    new-instance v0, Lcom/android/camera/property/PropertyUtility$2;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/property/PropertyUtility$2;-><init>(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/camera/property/Property;->removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z

    goto :goto_0
.end method
