.class public interface abstract Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/property/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChangedCallbacksUpdatedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onChangedCallbackAdded(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedCallback;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<TTValue;>;I)V"
        }
    .end annotation
.end method

.method public abstract onChangedCallbackRemoved(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedCallback;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<TTValue;>;I)V"
        }
    .end annotation
.end method
