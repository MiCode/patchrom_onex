.class public Lcom/android/camera/event/Event;
.super Lcom/android/camera/ThreadDependencyObject;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEventArgs:",
        "Lcom/android/camera/event/EventArgs;",
        ">",
        "Lcom/android/camera/ThreadDependencyObject;"
    }
.end annotation


# static fields
.field public static final LOG_HANDLERS:I = 0x2

.field public static final LOG_RAISING:I = 0x1

.field private static m_DefaultLogFlags:I = 0x0

.field private static final m_EventMap:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/event/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final printEventRaisingLogs:Z = true

.field private static final printHandlerLogs:Z


# instance fields
.field private final m_Handlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/event/EventHandler",
            "<TTEventArgs;>;>;"
        }
    .end annotation
.end field

.field private m_IsDestroyed:Z

.field private m_LogFlags:I

.field public final mode:Lcom/android/camera/event/EventMode;

.field public final name:Ljava/lang/String;

.field public final owner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    .line 40
    sget v0, Lcom/android/camera/event/Event;->m_DefaultLogFlags:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/camera/event/Event;->m_DefaultLogFlags:I

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)V
    .locals 1
    .parameter "owner"
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 49
    .local p0, this:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<TTEventArgs;>;"
    invoke-direct {p0}, Lcom/android/camera/ThreadDependencyObject;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    .line 27
    sget v0, Lcom/android/camera/event/Event;->m_DefaultLogFlags:I

    iput v0, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    .line 50
    iput-object p3, p0, Lcom/android/camera/event/Event;->mode:Lcom/android/camera/event/EventMode;

    .line 51
    iput-object p2, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/android/camera/event/Event;->owner:Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;
    .locals 1
    .parameter "owner"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/android/camera/event/EventArgs;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/event/Event",
            "<TTEventArgs;>;"
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Lcom/android/camera/event/EventMode;->Normal:Lcom/android/camera/event/EventMode;

    invoke-static {p0, p1, v0}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;
    .locals 4
    .parameter "owner"
    .parameter "name"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TEventArgs:",
            "Lcom/android/camera/event/EventArgs;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/android/camera/event/EventMode;",
            ")",
            "Lcom/android/camera/event/Event",
            "<TTEventArgs;>;"
        }
    .end annotation

    .prologue
    .line 94
    if-nez p0, :cond_0

    .line 96
    const-string v2, "owner"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 97
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 99
    :cond_0
    if-nez p1, :cond_1

    .line 101
    const-string v2, "name"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 102
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 104
    :cond_1
    if-nez p2, :cond_2

    .line 106
    const-string v2, "mode"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 107
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 111
    :cond_2
    new-instance v0, Lcom/android/camera/event/Event;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)V

    .line 112
    .local v0, event:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<TTEventArgs;>;"
    sget-object v3, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    monitor-enter v3

    .line 114
    :try_start_0
    sget-object v2, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 115
    .local v1, eventList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/event/Event;>;"
    if-nez v1, :cond_3

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #eventList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/event/Event;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .restart local v1       #eventList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/event/Event;>;"
    sget-object v2, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    monitor-exit v3

    .line 122
    return-object v0

    .line 121
    .end local v1           #eventList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/event/Event;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private destroy()V
    .locals 1

    .prologue
    .line 130
    .local p0, this:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<TTEventArgs;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/event/Event;->m_IsDestroyed:Z

    .line 131
    iget-object v0, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    return-void
.end method

.method public static destroyAllEvents(Ljava/lang/Object;)V
    .locals 4
    .parameter "owner"

    .prologue
    .line 140
    if-nez p0, :cond_0

    .line 142
    const-string v2, "owner"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 143
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 147
    :cond_0
    sget-object v3, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    monitor-enter v3

    .line 149
    :try_start_0
    sget-object v2, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 150
    .local v0, eventList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/event/Event;>;"
    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/event/Event;

    invoke-direct {v2}, Lcom/android/camera/event/Event;->destroy()V

    .line 152
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 154
    :cond_1
    sget-object v2, Lcom/android/camera/event/Event;->m_EventMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v1           #i:I
    :cond_2
    monitor-exit v3

    .line 157
    return-void

    .line 156
    .end local v0           #eventList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/event/Event;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public final addHandler(Lcom/android/camera/event/EventHandler;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/EventHandler",
            "<-TTEventArgs;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<TTEventArgs;>;"
    .local p1, handler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<-TTEventArgs;>;"
    if-nez p1, :cond_0

    .line 64
    const-string v0, "handler"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/event/Event;->threadAccessCheck()V

    .line 72
    iget-boolean v0, p0, Lcom/android/camera/event/Event;->m_IsDestroyed:Z

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is destroyed, cannot add handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_1
    iget v0, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] add handler \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final disableLogs(I)V
    .locals 2
    .parameter "logFlags"

    .prologue
    .line 164
    .local p0, this:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<TTEventArgs;>;"
    iget v0, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    .line 165
    return-void
.end method

.method public final enableLogs(I)V
    .locals 1
    .parameter "logFlags"

    .prologue
    .line 172
    .local p0, this:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<TTEventArgs;>;"
    iget v0, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    .line 173
    return-void
.end method

.method public final hasHandlers()Z
    .locals 1

    .prologue
    .line 180
    .local p0, this:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<TTEventArgs;>;"
    iget-object v0, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 6
    .parameter "sender"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TTEventArgs;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, this:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<TTEventArgs;>;"
    .local p2, e:Lcom/android/camera/event/EventArgs;,"TTEventArgs;"
    invoke-virtual {p0}, Lcom/android/camera/event/Event;->threadAccessCheck()V

    .line 192
    iget v3, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] rasing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v3, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 197
    iget-object v3, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/event/EventHandler;

    .line 198
    .local v1, handler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<TTEventArgs;>;"
    iget v3, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] call handler["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    invoke-interface {v1, p0, p1, p2}, Lcom/android/camera/event/EventHandler;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 203
    iget-object v3, p0, Lcom/android/camera/event/Event;->mode:Lcom/android/camera/event/EventMode;

    sget-object v4, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    if-ne v3, v4, :cond_4

    instance-of v3, p2, Lcom/android/camera/event/ISingleHandlerEventArgs;

    if-eqz v3, :cond_4

    move-object v3, p2

    .line 205
    check-cast v3, Lcom/android/camera/event/ISingleHandlerEventArgs;

    invoke-interface {v3}, Lcom/android/camera/event/ISingleHandlerEventArgs;->isHandled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 207
    iget v3, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_2

    .line 208
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] interrupted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v1           #handler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<TTEventArgs;>;"
    :cond_2
    iget v3, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 214
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] raised"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_3
    return-void

    .line 194
    .restart local v1       #handler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<TTEventArgs;>;"
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public final removeHandler(Lcom/android/camera/event/EventHandler;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/EventHandler",
            "<-TTEventArgs;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/camera/event/Event;,"Lcom/android/camera/event/Event<TTEventArgs;>;"
    .local p1, handler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<-TTEventArgs;>;"
    const/4 v2, 0x0

    .line 223
    if-nez p1, :cond_0

    .line 225
    const-string v2, "handler"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 226
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/event/Event;->threadAccessCheck()V

    .line 233
    iget-boolean v3, p0, Lcom/android/camera/event/Event;->m_IsDestroyed:Z

    if-eqz v3, :cond_2

    .line 248
    :cond_1
    :goto_0
    return v2

    .line 237
    :cond_2
    iget-object v3, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_1

    .line 239
    iget-object v3, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/event/EventHandler;

    .line 240
    .local v0, candHandler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<TTEventArgs;>;"
    if-ne v0, p1, :cond_4

    .line 242
    iget v2, p0, Lcom/android/camera/event/Event;->m_LogFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 243
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] remove handler \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' (index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_3
    iget-object v2, p0, Lcom/android/camera/event/Event;->m_Handlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 245
    const/4 v2, 0x1

    goto :goto_0

    .line 237
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method
