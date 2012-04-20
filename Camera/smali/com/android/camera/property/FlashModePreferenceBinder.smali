.class public final Lcom/android/camera/property/FlashModePreferenceBinder;
.super Lcom/android/camera/property/PreferenceBinder;
.source "FlashModePreferenceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/property/PreferenceBinder",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/camera/FlashMode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Lcom/android/camera/FlashMode;)V
    .locals 0
    .parameter "settingsOwner"
    .parameter "preferenceName"
    .parameter
    .parameter "propertyOwnerKey"
    .parameter "defaultPropertyValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ISettingsOwner;",
            "Ljava/lang/String;",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/FlashMode;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/FlashMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    .local p3, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/FlashMode;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/property/PreferenceBinder;-><init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected bridge synthetic convertToPreferenceValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    check-cast p1, Lcom/android/camera/FlashMode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/property/FlashModePreferenceBinder;->convertToPreferenceValue(Lcom/android/camera/FlashMode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected convertToPreferenceValue(Lcom/android/camera/FlashMode;)Ljava/lang/String;
    .locals 1
    .parameter "propertyValue"

    .prologue
    .line 27
    iget-object v0, p1, Lcom/android/camera/FlashMode;->value:Ljava/lang/String;

    return-object v0
.end method

.method protected convertToPropertyValue(Ljava/lang/String;)Lcom/android/camera/FlashMode;
    .locals 1
    .parameter "preferenceValue"

    .prologue
    .line 22
    invoke-static {p1}, Lcom/android/camera/FlashMode;->fromValue(Ljava/lang/String;)Lcom/android/camera/FlashMode;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic convertToPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/property/FlashModePreferenceBinder;->convertToPropertyValue(Ljava/lang/String;)Lcom/android/camera/FlashMode;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/android/camera/property/FlashModePreferenceBinder;->getPreferenceValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferenceValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/property/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v0}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/PreferenceBinder;->preferenceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/property/PreferenceBinder;->defaultPreferenceValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
