.class public interface abstract Lcom/android/camera/IUIRotationManager;
.super Ljava/lang/Object;
.source "IUIRotationManager.java"

# interfaces
.implements Lcom/android/camera/property/IPropertyOwner;


# static fields
.field public static final DEVICE_ORIENTATION_UNKNOWN:I = -0x1

.field public static final PROPERTY_DEVICE_ORIENTATION:Ljava/lang/String; = "IUIRotationManager.DeviceOrientation"

.field public static final PROPERTY_IS_ORIENTATION_LISTENER_STARTED:Ljava/lang/String; = "IUIRotationManager.IsOrientationListenerStarted"

.field public static final PROPERTY_IS_ROTATION_LOCKED:Ljava/lang/String; = "IUIRotationManager.IsRotationLocked"

.field public static final PROPERTY_ROTATION:Ljava/lang/String; = "IUIRotationManager.Rotation"


# virtual methods
.method public abstract getAvailableDeviceOrientation()I
.end method

.method public abstract lockRotation(Ljava/lang/String;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/Handle;
.end method

.method public abstract unlockRotation(Lcom/android/camera/Handle;)V
.end method
