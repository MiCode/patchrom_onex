.class public abstract Lcom/android/camera/property/PreferenceBinder;
.super Ljava/lang/Object;
.source "PreferenceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TPrefValue:",
        "Ljava/lang/Object;",
        "TPropertyValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final defaultPreferenceValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTPrefValue;"
        }
    .end annotation
.end field

.field public final defaultPropertyValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTPropertyValue;"
        }
    .end annotation
.end field

.field private m_IsBinding:Z

.field private m_IsSynchronizing:Z

.field private final m_PrefValueChangedHandler:Lcom/android/camera/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/EventHandler",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_PropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<TTPropertyValue;>;"
        }
    .end annotation
.end field

.field private final m_PropertyOwnerKey:Ljava/lang/Object;

.field public final preferenceName:Ljava/lang/String;

.field public final property:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<TTPropertyValue;>;"
        }
    .end annotation
.end field

.field public final settingsOwner:Lcom/android/camera/ISettingsOwner;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ISettingsOwner;Ljava/lang/String;Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "settingsOwner"
    .parameter "preferenceName"
    .parameter
    .parameter "propertyOwnerKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ISettingsOwner;",
            "Ljava/lang/String;",
            "Lcom/android/camera/property/Property",
            "<TTPropertyValue;>;",
            "Ljava/lang/Object;",
            "TTPropertyValue;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/android/camera/property/PreferenceBinder;,"Lcom/android/camera/property/PreferenceBinder<TTPrefValue;TTPropertyValue;>;"
    .local p3, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTPropertyValue;>;"
    .local p5, defaultPropertyValue:Ljava/lang/Object;,"TTPropertyValue;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/property/PreferenceBinder;->m_IsBinding:Z

    .line 26
    new-instance v0, Lcom/android/camera/property/PreferenceBinder$1;

    invoke-direct {v0, p0}, Lcom/android/camera/property/PreferenceBinder$1;-><init>(Lcom/android/camera/property/PreferenceBinder;)V

    iput-object v0, p0, Lcom/android/camera/property/PreferenceBinder;->m_PrefValueChangedHandler:Lcom/android/camera/event/EventHandler;

    .line 35
    new-instance v0, Lcom/android/camera/property/PreferenceBinder$2;

    invoke-direct {v0, p0}, Lcom/android/camera/property/PreferenceBinder$2;-><init>(Lcom/android/camera/property/PreferenceBinder;)V

    iput-object v0, p0, Lcom/android/camera/property/PreferenceBinder;->m_PropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    .line 51
    if-nez p1, :cond_0

    .line 53
    const-string v0, "settingsOwner"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 56
    :cond_0
    if-nez p2, :cond_1

    .line 58
    const-string v0, "preferenceName"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 61
    :cond_1
    if-nez p3, :cond_2

    .line 63
    const-string v0, "property"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 68
    :cond_2
    iput-object p1, p0, Lcom/android/camera/property/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    .line 69
    iput-object p2, p0, Lcom/android/camera/property/PreferenceBinder;->preferenceName:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/android/camera/property/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    .line 71
    iput-object p5, p0, Lcom/android/camera/property/PreferenceBinder;->defaultPropertyValue:Ljava/lang/Object;

    .line 72
    invoke-virtual {p0, p5}, Lcom/android/camera/property/PreferenceBinder;->convertToPreferenceValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/property/PreferenceBinder;->defaultPreferenceValue:Ljava/lang/Object;

    .line 73
    iput-object p4, p0, Lcom/android/camera/property/PreferenceBinder;->m_PropertyOwnerKey:Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/android/camera/property/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/property/PreferenceBinder;->m_PropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 77
    invoke-interface {p1}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/Settings;->preferenceChangedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/property/PreferenceBinder;->m_PrefValueChangedHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/property/PreferenceBinder;->updateFromPreference()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/property/PreferenceBinder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/android/camera/property/PreferenceBinder;->m_IsSynchronizing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/property/PreferenceBinder;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/property/PreferenceBinder;->flushToPreference(Ljava/lang/Object;)V

    return-void
.end method

.method private flushToPreference(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTPropertyValue;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/android/camera/property/PreferenceBinder;,"Lcom/android/camera/property/PreferenceBinder<TTPrefValue;TTPropertyValue;>;"
    .local p1, propertyValue:Ljava/lang/Object;,"TTPropertyValue;"
    invoke-virtual {p0, p1}, Lcom/android/camera/property/PreferenceBinder;->convertToPreferenceValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, value:Ljava/lang/Object;,"TTPrefValue;"
    invoke-virtual {p0, v0}, Lcom/android/camera/property/PreferenceBinder;->setPreferenceValue(Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method private updateFromPreference(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTPrefValue;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, this:Lcom/android/camera/property/PreferenceBinder;,"Lcom/android/camera/property/PreferenceBinder<TTPrefValue;TTPropertyValue;>;"
    .local p1, value:Ljava/lang/Object;,"TTPrefValue;"
    iget-object v0, p0, Lcom/android/camera/property/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/property/PreferenceBinder;->m_PropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/camera/property/PreferenceBinder;->convertToPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    return-void
.end method


# virtual methods
.method protected convertToPreferenceValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTPropertyValue;)TTPrefValue;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lcom/android/camera/property/PreferenceBinder;,"Lcom/android/camera/property/PreferenceBinder<TTPrefValue;TTPropertyValue;>;"
    .local p1, propertyValue:Ljava/lang/Object;,"TTPropertyValue;"
    return-object p1
.end method

.method protected convertToPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTPrefValue;)TTPropertyValue;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/android/camera/property/PreferenceBinder;,"Lcom/android/camera/property/PreferenceBinder<TTPrefValue;TTPropertyValue;>;"
    .local p1, preferenceValue:Ljava/lang/Object;,"TTPrefValue;"
    return-object p1
.end method

.method public final flushToPreference()V
    .locals 1

    .prologue
    .line 103
    .local p0, this:Lcom/android/camera/property/PreferenceBinder;,"Lcom/android/camera/property/PreferenceBinder<TTPrefValue;TTPropertyValue;>;"
    iget-boolean v0, p0, Lcom/android/camera/property/PreferenceBinder;->m_IsBinding:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/property/PreferenceBinder;->m_IsSynchronizing:Z

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/property/PreferenceBinder;->m_IsSynchronizing:Z

    .line 108
    iget-object v0, p0, Lcom/android/camera/property/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/property/PreferenceBinder;->flushToPreference(Ljava/lang/Object;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/property/PreferenceBinder;->m_IsSynchronizing:Z

    goto :goto_0
.end method

.method protected abstract getPreferenceValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTPrefValue;"
        }
    .end annotation
.end method

.method public resetToDefaultValue()V
    .locals 1

    .prologue
    .line 131
    .local p0, this:Lcom/android/camera/property/PreferenceBinder;,"Lcom/android/camera/property/PreferenceBinder<TTPrefValue;TTPropertyValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/PreferenceBinder;->defaultPreferenceValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/android/camera/property/PreferenceBinder;->setPreferenceValue(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method protected setPreferenceValue(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTPrefValue;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lcom/android/camera/property/PreferenceBinder;,"Lcom/android/camera/property/PreferenceBinder<TTPrefValue;TTPropertyValue;>;"
    .local p1, value:Ljava/lang/Object;,"TTPrefValue;"
    iget-object v0, p0, Lcom/android/camera/property/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v0}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/property/PreferenceBinder;->preferenceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public final unbind()V
    .locals 2

    .prologue
    .line 140
    .local p0, this:Lcom/android/camera/property/PreferenceBinder;,"Lcom/android/camera/property/PreferenceBinder<TTPrefValue;TTPropertyValue;>;"
    iget-boolean v0, p0, Lcom/android/camera/property/PreferenceBinder;->m_IsBinding:Z

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/camera/property/PreferenceBinder;->property:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/property/PreferenceBinder;->m_PropertyChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z

    .line 145
    iget-object v0, p0, Lcom/android/camera/property/PreferenceBinder;->settingsOwner:Lcom/android/camera/ISettingsOwner;

    invoke-interface {v0}, Lcom/android/camera/ISettingsOwner;->getSettings()Lcom/android/camera/Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/Settings;->preferenceChangedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/property/PreferenceBinder;->m_PrefValueChangedHandler:Lcom/android/camera/event/EventHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/event/Event;->removeHandler(Lcom/android/camera/event/EventHandler;)Z

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/property/PreferenceBinder;->m_IsBinding:Z

    goto :goto_0
.end method

.method public final updateFromPreference()V
    .locals 1

    .prologue
    .line 157
    .local p0, this:Lcom/android/camera/property/PreferenceBinder;,"Lcom/android/camera/property/PreferenceBinder<TTPrefValue;TTPropertyValue;>;"
    iget-boolean v0, p0, Lcom/android/camera/property/PreferenceBinder;->m_IsBinding:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/property/PreferenceBinder;->m_IsSynchronizing:Z

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/property/PreferenceBinder;->m_IsSynchronizing:Z

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/property/PreferenceBinder;->getPreferenceValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/property/PreferenceBinder;->updateFromPreference(Ljava/lang/Object;)V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/property/PreferenceBinder;->m_IsSynchronizing:Z

    goto :goto_0
.end method
