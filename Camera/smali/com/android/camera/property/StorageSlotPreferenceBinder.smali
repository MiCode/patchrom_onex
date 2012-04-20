.class public final Lcom/android/camera/property/StorageSlotPreferenceBinder;
.super Lcom/android/camera/property/PreferenceBinder;
.source "StorageSlotPreferenceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/property/PreferenceBinder",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/camera/io/StorageSlot;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageSlotPreferenceBinder"


# direct methods
.method public constructor <init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Lcom/android/camera/io/StorageSlot;)V
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
            "Lcom/android/camera/io/StorageSlot;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/io/StorageSlot;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<Lcom/android/camera/io/StorageSlot;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/property/PreferenceBinder;-><init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected bridge synthetic convertToPreferenceValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    check-cast p1, Lcom/android/camera/io/StorageSlot;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/property/StorageSlotPreferenceBinder;->convertToPreferenceValue(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected convertToPreferenceValue(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;
    .locals 1
    .parameter "propertyValue"

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "main_memory"

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "sdcard"

    goto :goto_0
.end method

.method protected convertToPropertyValue(Ljava/lang/String;)Lcom/android/camera/io/StorageSlot;
    .locals 4
    .parameter "preferenceValue"

    .prologue
    .line 31
    const-string v1, "main_memory"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v0

    .line 37
    .local v0, slot:Lcom/android/camera/io/StorageSlot;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    .end local v0           #slot:Lcom/android/camera/io/StorageSlot;
    :goto_1
    return-object v0

    .line 34
    :cond_0
    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    .restart local v0       #slot:Lcom/android/camera/io/StorageSlot;
    goto :goto_0

    .line 41
    :cond_1
    const-string v1, "StorageSlotPreferenceBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storage slot \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not supported, use default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/android/camera/property/PreferenceBinder;->defaultPropertyValue:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    move-object v0, v1

    goto :goto_1
.end method

.method protected bridge synthetic convertToPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/property/StorageSlotPreferenceBinder;->convertToPropertyValue(Ljava/lang/String;)Lcom/android/camera/io/StorageSlot;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getPreferenceValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/android/camera/property/StorageSlotPreferenceBinder;->getPreferenceValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferenceValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
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
