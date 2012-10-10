.class final Lcom/android/server/HtcPMSExtension;
.super Ljava/lang/Object;
.source "HtcPMSExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HtcPMSExtension$LogRecord;
    }
.end annotation


# static fields
.field private static final DEBUG_ON:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcPMSExtension"


# instance fields
.field private mLogRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/HtcPMSExtension$LogRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    .line 62
    return-void
.end method

.method protected static getWakeLockFlagInfo(I)Ljava/lang/String;
    .locals 3
    .parameter "flags"

    .prologue
    .line 91
    const-string v0, ""

    .line 93
    .local v0, info:Ljava/lang/String;
    const/high16 v1, 0x1000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ACQUIRE_CAUSES_WAKEUP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    const/high16 v1, 0x2000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ON_AFTER_RELEASE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_1
    return-object v0
.end method

.method protected static getWakeLockTypeInfo(II)Ljava/lang/String;
    .locals 2
    .parameter "flags"
    .parameter "LOCK_MASK"

    .prologue
    .line 65
    const-string v0, ""

    .line 67
    .local v0, info:Ljava/lang/String;
    and-int v1, p0, p1

    sparse-switch v1, :sswitch_data_0

    .line 87
    :goto_0
    return-object v0

    .line 69
    :sswitch_0
    const-string v0, "FULL_WAKE_LOCK"

    .line 70
    goto :goto_0

    .line 72
    :sswitch_1
    const-string v0, "SCREEN_BRIGHT_WAKE_LOCK"

    .line 73
    goto :goto_0

    .line 75
    :sswitch_2
    const-string v0, "SCREEN_DIM_WAKE_LOCK"

    .line 76
    goto :goto_0

    .line 78
    :sswitch_3
    const-string v0, "PARTIAL_WAKE_LOCK"

    .line 79
    goto :goto_0

    .line 81
    :sswitch_4
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    .line 82
    goto :goto_0

    .line 84
    :sswitch_5
    const-string v0, "CPU_PERF_WAKE_LOCK"

    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0x1a -> :sswitch_0
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method protected reduceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "tag"
    .parameter "logBody"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/server/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HtcPMSExtension$LogRecord;

    .line 147
    .local v0, recentLog:Lcom/android/server/HtcPMSExtension$LogRecord;
    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/android/server/HtcPMSExtension$LogRecord;

    .end local v0           #recentLog:Lcom/android/server/HtcPMSExtension$LogRecord;
    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/HtcPMSExtension$LogRecord;-><init>(Lcom/android/server/HtcPMSExtension;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .restart local v0       #recentLog:Lcom/android/server/HtcPMSExtension$LogRecord;
    iget-object v1, p0, Lcom/android/server/HtcPMSExtension;->mLogRecords:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/server/HtcPMSExtension$LogRecord;->check(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeScreenState(Z)V
    .locals 10
    .parameter "on"

    .prologue
    .line 103
    const-string v1, "system"

    .line 104
    .local v1, SYSTEM_PATH:Ljava/lang/String;
    const-string v0, "screen_state"

    .line 110
    .local v0, SCREEN_FILE_NAME:Ljava/lang/String;
    const/4 v5, 0x0

    .line 111
    .local v5, out:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 114
    .local v3, osw:Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "system"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v7, systemDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v8, "screen_state"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v2, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 118
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 121
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 122
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 125
    :cond_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 126
    .end local v5           #out:Ljava/io/FileOutputStream;
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 127
    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .local v4, osw:Ljava/io/OutputStreamWriter;
    if-eqz p1, :cond_3

    :try_start_2
    const-string v8, "1"

    :goto_0
    invoke-virtual {v4, v8}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 139
    if-eqz v4, :cond_9

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v3, 0x0

    .line 140
    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :goto_1
    if-eqz v6, :cond_8

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    const/4 v5, 0x0

    .line 143
    .end local v2           #file:Ljava/io/File;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .end local v7           #systemDir:Ljava/io/File;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    return-void

    .line 127
    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    .restart local v7       #systemDir:Ljava/io/File;
    :cond_3
    :try_start_5
    const-string v8, "0"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    .line 141
    :catch_0
    move-exception v8

    move-object v3, v4

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    :goto_3
    move-object v5, v6

    .line 142
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 129
    .end local v2           #file:Ljava/io/File;
    .end local v7           #systemDir:Ljava/io/File;
    :catch_1
    move-exception v8

    .line 139
    :goto_4
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v3, 0x0

    .line 140
    :cond_4
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    const/4 v5, 0x0

    goto :goto_2

    .line 133
    :catch_2
    move-exception v8

    .line 139
    :goto_5
    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v3, 0x0

    .line 140
    :cond_5
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v5, 0x0

    goto :goto_2

    .line 138
    :catchall_0
    move-exception v8

    .line 139
    :goto_6
    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    const/4 v3, 0x0

    .line 140
    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    const/4 v5, 0x0

    .line 141
    :cond_7
    :goto_7
    throw v8

    :catch_3
    move-exception v9

    goto :goto_7

    .line 138
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    .restart local v7       #systemDir:Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 141
    .end local v2           #file:Ljava/io/File;
    .end local v7           #systemDir:Ljava/io/File;
    :catch_4
    move-exception v8

    goto :goto_2

    .line 133
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    .restart local v7       #systemDir:Ljava/io/File;
    :catch_5
    move-exception v8

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v8

    move-object v3, v4

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 141
    .end local v2           #file:Ljava/io/File;
    .end local v7           #systemDir:Ljava/io/File;
    :catch_7
    move-exception v8

    goto :goto_2

    .line 129
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    .restart local v7       #systemDir:Ljava/io/File;
    :catch_8
    move-exception v8

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v8

    move-object v3, v4

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 141
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v8

    goto :goto_3

    :cond_8
    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #osw:Ljava/io/OutputStreamWriter;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :cond_9
    move-object v3, v4

    .end local v4           #osw:Ljava/io/OutputStreamWriter;
    .restart local v3       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_1
.end method
