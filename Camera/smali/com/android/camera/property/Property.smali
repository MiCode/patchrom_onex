.class public Lcom/android/camera/property/Property;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/property/Property$1;,
        Lcom/android/camera/property/Property$ValidateValueCallback;,
        Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FLAG_NOT_NULL:I = 0x2

.field public static final FLAG_READONLY:I = 0x1

.field public static final FLAG_THREAD_INDEPENDENT:I = 0x4

.field public static final LOG_BINDING:I = 0x1

.field public static final LOG_CALLBACK:I = 0x2

.field public static final LOG_VALUE_CHANGED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Property"

.field private static m_DefaultLogFlags:I

.field private static final m_PropertyMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/property/Property;",
            ">;>;"
        }
    .end annotation
.end field

.field private static printBindingLogs:Z

.field private static printCallbackLogs:Z

.field private static printValueChangedLogs:Z


# instance fields
.field public final flags:I

.field private m_BindingSource:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field private m_BindingTargets:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_ChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;>;"
        }
    .end annotation
.end field

.field private m_ChangedCallbacksUpdatedCallback:Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field private final m_CreationThread:Ljava/lang/Thread;

.field private m_IsDestroyed:Z

.field private m_LogFlags:I

.field private final m_OwnerKey:Ljava/lang/Object;

.field private m_ValidateValueCallback:Lcom/android/camera/property/Property$ValidateValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property$ValidateValueCallback",
            "<TTValue;>;"
        }
    .end annotation
.end field

.field private m_Value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/property/Property;->printBindingLogs:Z

    .line 56
    sput-boolean v1, Lcom/android/camera/property/Property;->printCallbackLogs:Z

    .line 57
    sput-boolean v1, Lcom/android/camera/property/Property;->printValueChangedLogs:Z

    .line 64
    sget-boolean v0, Lcom/android/camera/property/Property;->printBindingLogs:Z

    if-eqz v0, :cond_0

    .line 65
    sget v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    .line 66
    :cond_0
    sget-boolean v0, Lcom/android/camera/property/Property;->printCallbackLogs:Z

    if-eqz v0, :cond_1

    .line 67
    sget v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    .line 68
    :cond_1
    sget-boolean v0, Lcom/android/camera/property/Property;->printValueChangedLogs:Z

    if-eqz v0, :cond_2

    .line 69
    sget v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    .line 70
    :cond_2
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/Property$ValidateValueCallback;Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;)V
    .locals 1
    .parameter "name"
    .parameter "flags"
    .parameter "ownerKey"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "TTValue;",
            "Lcom/android/camera/property/Property$ValidateValueCallback",
            "<-TTValue;>;",
            "Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p4, initialValue:Ljava/lang/Object;,"TTValue;"
    .local p5, validationCallback:Lcom/android/camera/property/Property$ValidateValueCallback;,"Lcom/android/camera/property/Property$ValidateValueCallback<-TTValue;>;"
    .local p6, callbackUpdatedCallback:Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;,"Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback<-TTValue;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget v0, Lcom/android/camera/property/Property;->m_DefaultLogFlags:I

    iput v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    .line 84
    iput-object p1, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    .line 85
    iput p2, p0, Lcom/android/camera/property/Property;->flags:I

    .line 86
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/camera/property/Property;->m_CreationThread:Ljava/lang/Thread;

    .line 87
    iput-object p3, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    .line 88
    iput-object p4, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    .line 89
    iput-object p6, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacksUpdatedCallback:Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;

    .line 90
    iput-object p5, p0, Lcom/android/camera/property/Property;->m_ValidateValueCallback:Lcom/android/camera/property/Property$ValidateValueCallback;

    .line 91
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addBinding(Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "targetOwnerKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/camera/property/Property;->addBindingInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    monitor-enter p0

    .line 104
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/property/Property;->addBindingInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 105
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addBindingInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "targetOwnerKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method private addChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, callback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<-TTValue;>;"
    iget-boolean v0, p0, Lcom/android/camera/property/Property;->m_IsDestroyed:Z

    if-eqz v0, :cond_1

    .line 148
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is destroyed, cannot add changed call-back"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 159
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] add call-back "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacksUpdatedCallback:Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacksUpdatedCallback:Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;

    iget-object v1, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, p0, p1, v1}, Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;->onChangedCallbackAdded(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedCallback;I)V

    goto :goto_0
.end method

.method private bindInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/PropertyBindingMode;)V
    .locals 3
    .parameter
    .parameter "sourceOwnerKey"
    .parameter "ownerKey"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/property/PropertyBindingMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, source:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-boolean v0, p0, Lcom/android/camera/property/Property;->m_IsDestroyed:Z

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is destroyed, cannot create binding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return-void

    .line 214
    :cond_0
    sget-object v0, Lcom/android/camera/property/Property$1;->$SwitchMap$com$android$camera$property$PropertyBindingMode:[I

    invoke-virtual {p4}, Lcom/android/camera/property/PropertyBindingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 217
    :pswitch_0
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 218
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] -----> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->bindToSource(Lcom/android/camera/property/Property;)V

    goto :goto_0

    .line 222
    :pswitch_1
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 223
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] <----- ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_2
    invoke-direct {p1, p0}, Lcom/android/camera/property/Property;->bindToSource(Lcom/android/camera/property/Property;)V

    goto :goto_0

    .line 227
    :pswitch_2
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 228
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] <----> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->bindToSource(Lcom/android/camera/property/Property;)V

    .line 230
    invoke-direct {p1, p0}, Lcom/android/camera/property/Property;->bindToSource(Lcom/android/camera/property/Property;)V

    goto/16 :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bindToSource(Lcom/android/camera/property/Property;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, source:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->bindToSourceInternal(Lcom/android/camera/property/Property;)V

    .line 249
    :goto_0
    return-void

    .line 244
    :cond_0
    monitor-enter p0

    .line 246
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->bindToSourceInternal(Lcom/android/camera/property/Property;)V

    .line 247
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private bindToSourceInternal(Lcom/android/camera/property/Property;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, source:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingSource:Lcom/android/camera/property/Property;

    if-eqz v0, :cond_1

    .line 255
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "Property"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove binding : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->m_BindingSource:Lcom/android/camera/property/Property;

    iget-object v2, v2, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] --/--> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingSource:Lcom/android/camera/property/Property;

    invoke-direct {v0, p0}, Lcom/android/camera/property/Property;->removeBinding(Lcom/android/camera/property/Property;)V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_BindingSource:Lcom/android/camera/property/Property;

    .line 262
    :cond_1
    if-eqz p1, :cond_2

    .line 264
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    invoke-direct {p1, p0, v0}, Lcom/android/camera/property/Property;->addBinding(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 265
    iput-object p1, p0, Lcom/android/camera/property/Property;->m_BindingSource:Lcom/android/camera/property/Property;

    .line 267
    :cond_2
    return-void
.end method

.method private clearBindingsInternal()V
    .locals 4

    .prologue
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    const/4 v3, 0x0

    .line 298
    iget-object v2, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    .line 300
    iget-object v2, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/property/Property;

    .line 301
    .local v1, target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    invoke-direct {v1, v3}, Lcom/android/camera/property/Property;->bindToSource(Lcom/android/camera/property/Property;)V

    goto :goto_0

    .line 302
    .end local v1           #target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    :cond_0
    iput-object v3, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    .line 306
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/camera/property/Property;->bindToSourceInternal(Lcom/android/camera/property/Property;)V

    .line 307
    return-void
.end method

.method public static create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;
    .locals 6
    .parameter "name"
    .parameter "flags"
    .parameter "ownerKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "TTValue;)",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation

    .prologue
    .local p3, initialValue:Ljava/lang/Object;,"TTValue;"
    const/4 v4, 0x0

    .line 314
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/Property$ValidateValueCallback;Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/Property$ValidateValueCallback;Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;)Lcom/android/camera/property/Property;
    .locals 8
    .parameter "name"
    .parameter "flags"
    .parameter "ownerKey"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "TTValue;",
            "Lcom/android/camera/property/Property$ValidateValueCallback",
            "<-TTValue;>;",
            "Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback",
            "<-TTValue;>;)",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation

    .prologue
    .line 326
    .local p3, initialValue:Ljava/lang/Object;,"TTValue;"
    .local p4, validationCallback:Lcom/android/camera/property/Property$ValidateValueCallback;,"Lcom/android/camera/property/Property$ValidateValueCallback<-TTValue;>;"
    .local p5, callbackUpdatedCallback:Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;,"Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback<-TTValue;>;"
    if-nez p0, :cond_0

    .line 328
    const-string v1, "name"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 329
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 331
    :cond_0
    if-nez p2, :cond_1

    .line 333
    const-string v1, "ownerKey"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 334
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 336
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    .line 338
    const-string v1, "Property"

    const-string v2, "FLAG_NOT_NULL flag is set, but initial value is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 343
    :cond_2
    new-instance v0, Lcom/android/camera/property/Property;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/Property$ValidateValueCallback;Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;)V

    .line 344
    .local v0, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    sget-object v2, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    monitor-enter v2

    .line 346
    :try_start_0
    sget-object v1, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 347
    .local v7, propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property;>;"
    if-nez v7, :cond_3

    .line 349
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .restart local v7       #propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property;>;"
    sget-object v1, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_3
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    monitor-exit v2

    .line 354
    return-object v0

    .line 353
    .end local v7           #propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "name"
    .parameter "ownerKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "TTValue;)",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation

    .prologue
    .line 362
    .local p2, initialValue:Ljava/lang/Object;,"TTValue;"
    const/4 v0, 0x3

    invoke-static {p0, v0, p1, p2}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "name"
    .parameter "ownerKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "name"
    .parameter "ownerKey"
    .parameter "initialValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static createAsReadOnlyInteger(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "name"
    .parameter "ownerKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method public static createAsReadOnlyInteger(Ljava/lang/String;Ljava/lang/Object;I)Lcom/android/camera/property/Property;
    .locals 1
    .parameter "name"
    .parameter "ownerKey"
    .parameter "initialValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    return-object v0
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 412
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/android/camera/property/Property;->destroyInternal()V

    .line 421
    :goto_0
    return-void

    .line 416
    :cond_0
    monitor-enter p0

    .line 418
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/property/Property;->destroyInternal()V

    .line 419
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static destroy(Ljava/lang/Object;Lcom/android/camera/property/Property;)V
    .locals 4
    .parameter "ownerKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, property:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    if-nez p1, :cond_0

    .line 390
    const-string v1, "property"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 391
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 395
    :cond_0
    iget-object v1, p1, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    if-eq v1, p0, :cond_1

    .line 397
    const-string v1, "Property"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid owner key to destroy property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 402
    :cond_1
    invoke-direct {p1}, Lcom/android/camera/property/Property;->destroy()V

    .line 403
    sget-object v2, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    monitor-enter v2

    .line 405
    :try_start_0
    sget-object v1, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 406
    .local v0, propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 407
    sget-object v1, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_2
    monitor-exit v2

    .line 409
    return-void

    .line 408
    .end local v0           #propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static destroyAllProperties(Ljava/lang/Object;)V
    .locals 4
    .parameter "ownerKey"

    .prologue
    .line 442
    if-nez p0, :cond_0

    .line 444
    const-string v2, "ownerKey"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 445
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 449
    :cond_0
    sget-object v3, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    monitor-enter v3

    .line 451
    :try_start_0
    sget-object v2, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 452
    .local v1, propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property;>;"
    if-eqz v1, :cond_2

    .line 454
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 455
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/property/Property;

    invoke-direct {v2}, Lcom/android/camera/property/Property;->destroy()V

    .line 454
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 456
    :cond_1
    sget-object v2, Lcom/android/camera/property/Property;->m_PropertyMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .end local v0           #i:I
    :cond_2
    monitor-exit v3

    .line 459
    return-void

    .line 458
    .end local v1           #propertyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/property/Property;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private destroyInternal()V
    .locals 2

    .prologue
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    const/4 v1, 0x0

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/property/Property;->m_IsDestroyed:Z

    .line 425
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 428
    iput-object v1, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    .line 430
    :cond_0
    iput-object v1, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacksUpdatedCallback:Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;

    .line 431
    iput-object v1, p0, Lcom/android/camera/property/Property;->m_ValidateValueCallback:Lcom/android/camera/property/Property$ValidateValueCallback;

    .line 432
    invoke-direct {p0}, Lcom/android/camera/property/Property;->clearBindingsInternal()V

    .line 433
    return-void
.end method

.method private removeBinding(Lcom/android/camera/property/Property;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 503
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->removeBindingInternal(Lcom/android/camera/property/Property;)V

    .line 511
    :goto_0
    return-void

    .line 506
    :cond_0
    monitor-enter p0

    .line 508
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->removeBindingInternal(Lcom/android/camera/property/Property;)V

    .line 509
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeBindingInternal(Lcom/android/camera/property/Property;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    .line 516
    :cond_0
    return-void
.end method

.method private removeChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, callback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<-TTValue;>;"
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 548
    iget-boolean v3, p0, Lcom/android/camera/property/Property;->m_IsDestroyed:Z

    if-eqz v3, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v2

    .line 552
    :cond_1
    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 556
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_5

    .line 558
    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/property/PropertyChangedCallback;

    .line 559
    .local v0, candCallback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<-TTValue;>;"
    if-ne v0, p1, :cond_4

    .line 562
    iget v2, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 563
    const-string v2, "Property"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] remove call-back "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_2
    iget-object v2, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 567
    iget-object v2, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacksUpdatedCallback:Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;

    if-eqz v2, :cond_3

    .line 568
    iget-object v2, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacksUpdatedCallback:Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;

    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v2, p0, p1, v3}, Lcom/android/camera/property/Property$ChangedCallbacksUpdatedCallback;->onChangedCallbackRemoved(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    :cond_3
    const/4 v2, 0x1

    .line 575
    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 576
    iput-object v5, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    goto :goto_0

    .line 556
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 575
    .end local v0           #candCallback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<-TTValue;>;"
    :cond_5
    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 576
    iput-object v5, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    goto :goto_0

    .line 575
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 576
    iput-object v5, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    :cond_6
    throw v2
.end method

.method private setValueInternal(Ljava/lang/Object;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 622
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, value:Ljava/lang/Object;,"TTValue;"
    iget-object v7, p0, Lcom/android/camera/property/Property;->m_ValidateValueCallback:Lcom/android/camera/property/Property$ValidateValueCallback;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/camera/property/Property;->m_ValidateValueCallback:Lcom/android/camera/property/Property$ValidateValueCallback;

    invoke-interface {v7, p0, p1}, Lcom/android/camera/property/Property$ValidateValueCallback;->validate(Lcom/android/camera/property/Property;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 623
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 624
    :cond_0
    iget-object v6, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    .line 625
    .local v6, oldValue:Ljava/lang/Object;,"TTValue;"
    if-nez v6, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 626
    :cond_3
    const/4 v7, 0x0

    .line 655
    :goto_0
    return v7

    .line 629
    :cond_4
    iput-object p1, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    .line 630
    iget v7, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_5

    .line 631
    const-string v7, "Property"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_5
    iget-object v7, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    .line 636
    new-instance v2, Lcom/android/camera/property/PropertyChangedEventArgs;

    invoke-direct {v2, p0, v6, p1}, Lcom/android/camera/property/PropertyChangedEventArgs;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 637
    .local v2, e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<TTValue;>;"
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v7, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    :goto_1
    if-ge v4, v1, :cond_7

    .line 640
    iget-object v7, p0, Lcom/android/camera/property/Property;->m_ChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/property/PropertyChangedCallback;

    .line 641
    .local v0, callback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<TTValue;>;"
    iget v7, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    .line 642
    const-string v7, "Property"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] call-back to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_6
    invoke-interface {v0, p0, v2}, Lcom/android/camera/property/PropertyChangedCallback;->onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V

    .line 637
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 648
    .end local v0           #callback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<TTValue;>;"
    .end local v1           #count:I
    .end local v2           #e:Lcom/android/camera/property/PropertyChangedEventArgs;,"Lcom/android/camera/property/PropertyChangedEventArgs<TTValue;>;"
    .end local v4           #i:I
    :cond_7
    iget-object v7, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    if-eqz v7, :cond_8

    .line 650
    iget-object v7, p0, Lcom/android/camera/property/Property;->m_BindingTargets:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 651
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/camera/property/Property<TTValue;>;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/property/Property;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .line 655
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/camera/property/Property<TTValue;>;Ljava/lang/Object;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private threadAccessCheck()V
    .locals 2

    .prologue
    .line 663
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_CreationThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_CreationThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 664
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 665
    :cond_0
    return-void
.end method


# virtual methods
.method public final addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, callback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<-TTValue;>;"
    if-nez p1, :cond_0

    .line 124
    const-string v0, "callback"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 129
    :cond_0
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    .line 132
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->addChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_1
    monitor-enter p0

    .line 138
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->addChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 139
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter "ownerKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, source:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    const/4 v0, 0x0

    sget-object v1, Lcom/android/camera/property/PropertyBindingMode;->OneWay:Lcom/android/camera/property/PropertyBindingMode;

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/PropertyBindingMode;)V

    .line 172
    return-void
.end method

.method public final bind(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/PropertyBindingMode;)V
    .locals 2
    .parameter
    .parameter "sourceOwnerKey"
    .parameter "ownerKey"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/property/PropertyBindingMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, source:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    if-nez p1, :cond_0

    .line 178
    const-string v0, "source"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 181
    :cond_0
    if-ne p1, p0, :cond_1

    .line 183
    const-string v0, "Property"

    const-string v1, "Cannot bind property to self"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 188
    :cond_1
    invoke-direct {p1}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    .line 191
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 193
    invoke-direct {p0}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    .line 194
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/property/Property;->bindInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/PropertyBindingMode;)V

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_2
    monitor-enter p0

    .line 200
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/property/Property;->bindInternal(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/camera/property/PropertyBindingMode;)V

    .line 201
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final checkOwnerKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "ownerKey"

    .prologue
    .line 274
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final clearBindings()V
    .locals 1

    .prologue
    .line 282
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    .line 285
    invoke-direct {p0}, Lcom/android/camera/property/Property;->clearBindingsInternal()V

    .line 294
    :goto_0
    return-void

    .line 289
    :cond_0
    monitor-enter p0

    .line 291
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/property/Property;->clearBindingsInternal()V

    .line 292
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final disableLogs(I)V
    .locals 2
    .parameter "logFlags"

    .prologue
    .line 466
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    .line 467
    return-void
.end method

.method public final enableLogs(I)V
    .locals 1
    .parameter "logFlags"

    .prologue
    .line 474
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/property/Property;->m_LogFlags:I

    .line 475
    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    return-object v0
.end method

.method public final isValueEquals(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, value:Ljava/lang/Object;,"TTValue;"
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 494
    :goto_0
    return v0

    .line 492
    :cond_0
    if-eqz p1, :cond_1

    .line 493
    iget-object v0, p0, Lcom/android/camera/property/Property;->m_Value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 494
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<-TTValue;>;)Z"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, callback:Lcom/android/camera/property/PropertyChangedCallback;,"Lcom/android/camera/property/PropertyChangedCallback<-TTValue;>;"
    if-nez p1, :cond_0

    .line 526
    const-string v0, "callback"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 531
    :cond_0
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 533
    invoke-direct {p0}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    .line 534
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->removeChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)Z

    move-result v0

    .line 540
    :goto_0
    return v0

    .line 538
    :cond_1
    monitor-enter p0

    .line 540
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/property/Property;->removeChangedCallbackInternal(Lcom/android/camera/property/PropertyChangedCallback;)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 587
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p1, value:Ljava/lang/Object;,"TTValue;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "ownerKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 592
    .local p0, this:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<TTValue;>;"
    .local p2, value:Ljava/lang/Object;,"TTValue;"
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/property/Property;->m_OwnerKey:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 594
    const-string v0, "Property"

    const-string v1, "Invalid owner key to set value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 599
    :cond_0
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 601
    const-string v0, "Property"

    const-string v1, "Value cannot be NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 606
    :cond_1
    iget v0, p0, Lcom/android/camera/property/Property;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 608
    invoke-direct {p0}, Lcom/android/camera/property/Property;->threadAccessCheck()V

    .line 609
    invoke-direct {p0, p2}, Lcom/android/camera/property/Property;->setValueInternal(Ljava/lang/Object;)Z

    move-result v0

    .line 615
    :goto_0
    return v0

    .line 613
    :cond_2
    monitor-enter p0

    .line 615
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera/property/Property;->setValueInternal(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
