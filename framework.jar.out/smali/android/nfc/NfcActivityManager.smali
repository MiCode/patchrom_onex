.class public final Landroid/nfc/NfcActivityManager;
.super Landroid/nfc/INdefPushCallback$Stub;
.source "NfcActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcActivityManager$NfcActivityState;
    }
.end annotation


# static fields
.field static final DBG:Ljava/lang/Boolean; = null

.field static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field final mAdapter:Landroid/nfc/NfcAdapter;

.field final mDefaultEvent:Landroid/nfc/NfcEvent;

.field final mNfcState:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/app/Activity;",
            "Landroid/nfc/NfcActivityManager$NfcActivityState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/nfc/NfcAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/nfc/INdefPushCallback$Stub;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 63
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    .line 64
    new-instance v0, Landroid/nfc/NfcEvent;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v0, v1}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mDefaultEvent:Landroid/nfc/NfcEvent;

    .line 65
    return-void
.end method


# virtual methods
.method public createMessage()Landroid/nfc/NdefMessage;
    .locals 5

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, callback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
    iget-object v4, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 207
    :try_start_0
    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 208
    .local v2, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-boolean v3, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v3, :cond_0

    .line 209
    iget-object v0, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    goto :goto_0

    .line 212
    .end local v2           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    if-eqz v0, :cond_2

    .line 216
    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mDefaultEvent:Landroid/nfc/NfcEvent;

    invoke-interface {v0, v3}, Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;->createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 218
    :goto_1
    return-object v3

    .line 212
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 218
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method getOrCreateState(Landroid/app/Activity;Z)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 4
    .parameter "activity"
    .parameter "create"

    .prologue
    .line 154
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 157
    :try_start_0
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 158
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 160
    new-instance v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    invoke-direct {v0, p0}, Landroid/nfc/NfcActivityManager$NfcActivityState;-><init>(Landroid/nfc/NfcActivityManager;)V

    .line 161
    .restart local v0       #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 162
    :try_start_1
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    invoke-static {p1}, Landroid/nfc/NfcFragment;->attach(Landroid/app/Activity;)V

    .line 166
    :cond_1
    return-object v0

    .line 158
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 163
    .restart local v0       #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method maybeRemoveState(Landroid/app/Activity;Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    .locals 2
    .parameter "activity"
    .parameter "state"

    .prologue
    .line 174
    iget-object v0, p2, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    if-nez v0, :cond_0

    .line 176
    invoke-static {p1}, Landroid/nfc/NfcFragment;->remove(Landroid/app/Activity;)V

    .line 177
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    monitor-exit v1

    .line 181
    :cond_0
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 101
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public onNdefPushComplete()V
    .locals 5

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, callback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;
    iget-object v4, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 228
    :try_start_0
    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 229
    .local v2, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    iget-boolean v3, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v3, :cond_0

    .line 230
    iget-object v0, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    goto :goto_0

    .line 233
    .end local v2           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    if-eqz v0, :cond_2

    .line 237
    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mDefaultEvent:Landroid/nfc/NfcEvent;

    invoke-interface {v0, v3}, Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;->onNdefPushComplete(Landroid/nfc/NfcEvent;)V

    .line 239
    :cond_2
    return-void

    .line 233
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 87
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 88
    :try_start_0
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 89
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPause() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    if-eqz v0, :cond_1

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 93
    invoke-virtual {p0, v0}, Landroid/nfc/NfcActivityManager;->updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V

    .line 95
    :cond_1
    return-void

    .line 89
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 72
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 73
    :try_start_0
    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mNfcState:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcActivityManager$NfcActivityState;

    .line 74
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    if-eqz v0, :cond_1

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 78
    invoke-virtual {p0, v0}, Landroid/nfc/NfcActivityManager;->updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V

    .line 80
    :cond_1
    return-void

    .line 74
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .locals 2
    .parameter "activity"
    .parameter "message"

    .prologue
    .line 105
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/nfc/NfcActivityManager;->getOrCreateState(Landroid/app/Activity;Z)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 106
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    if-ne v1, p2, :cond_2

    .line 116
    :cond_0
    :goto_1
    return-void

    .line 105
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 109
    .restart local v0       #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_2
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 110
    if-nez p2, :cond_3

    .line 111
    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcActivityManager;->maybeRemoveState(Landroid/app/Activity;Landroid/nfc/NfcActivityManager$NfcActivityState;)V

    .line 113
    :cond_3
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Landroid/nfc/NfcActivityManager;->updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V

    goto :goto_1
.end method

.method public setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;)V
    .locals 2
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 120
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/nfc/NfcActivityManager;->getOrCreateState(Landroid/app/Activity;Z)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 121
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    if-ne v1, p2, :cond_2

    .line 131
    :cond_0
    :goto_1
    return-void

    .line 120
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 124
    .restart local v0       #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_2
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 125
    if-nez p2, :cond_3

    .line 126
    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcActivityManager;->maybeRemoveState(Landroid/app/Activity;Landroid/nfc/NfcActivityManager$NfcActivityState;)V

    .line 128
    :cond_3
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0, v0}, Landroid/nfc/NfcActivityManager;->updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V

    goto :goto_1
.end method

.method public setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    .locals 2
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 135
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/nfc/NfcActivityManager;->getOrCreateState(Landroid/app/Activity;Z)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    .line 136
    .local v0, state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    if-ne v1, p2, :cond_2

    .line 146
    :cond_0
    :goto_1
    return-void

    .line 135
    .end local v0           #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 139
    .restart local v0       #state:Landroid/nfc/NfcActivityManager$NfcActivityState;
    :cond_2
    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 140
    if-nez p2, :cond_3

    .line 141
    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcActivityManager;->maybeRemoveState(Landroid/app/Activity;Landroid/nfc/NfcActivityManager$NfcActivityState;)V

    .line 143
    :cond_3
    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p0, v0}, Landroid/nfc/NfcActivityManager;->updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V

    goto :goto_1
.end method

.method updateNfcService(Landroid/nfc/NfcActivityManager$NfcActivityState;)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v3, p1, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 190
    .local v1, serviceCallbackNeeded:Z
    :goto_0
    iget-object v4, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    monitor-enter v4

    .line 192
    :try_start_0
    iget-object v3, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getService()Landroid/nfc/INfcAdapter;

    move-result-object v5

    iget-boolean v3, p1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    :goto_1
    iget-boolean v6, p1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    move-object v2, p0

    :cond_1
    invoke-interface {v5, v3, v2}, Landroid/nfc/INfcAdapter;->setForegroundNdefPush(Landroid/nfc/NdefMessage;Landroid/nfc/INdefPushCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_2
    :try_start_1
    monitor-exit v4

    .line 198
    return-void

    .line 187
    .end local v1           #serviceCallbackNeeded:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1       #serviceCallbackNeeded:Z
    :cond_3
    move-object v3, v2

    .line 192
    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_2

    .line 197
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
