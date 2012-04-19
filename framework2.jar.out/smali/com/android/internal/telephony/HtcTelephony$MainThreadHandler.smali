.class final Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;
.super Landroid/os/Handler;
.source "HtcTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcTelephony;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/HtcTelephony;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;-><init>(Lcom/android/internal/telephony/HtcTelephony;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 34
    .parameter "msg"

    .prologue
    .line 232
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 926
    :goto_0
    :pswitch_0
    return-void

    .line 234
    :pswitch_1
    const-string v2, "HtcTelephony"

    const-string v3, "send cw query cave"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 236
    .local v28, request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x67

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryCAVE(Landroid/os/Message;)V

    goto :goto_0

    .line 240
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_2
    const-string v2, "HtcTelephony"

    const-string v3, "get cw query cave result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 242
    .local v11, ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 243
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 244
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 245
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 250
    :goto_1
    monitor-enter v28

    .line 251
    :try_start_0
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 252
    monitor-exit v28

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v28
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 247
    :cond_0
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 248
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 255
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_3
    const-string v2, "HtcTelephony"

    const-string v3, "send cw request cave"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 257
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    .line 258
    .local v26, randu:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x65

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->requestCAVE(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 263
    .end local v26           #randu:Ljava/lang/String;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_4
    const-string v2, "HtcTelephony"

    const-string v3, "get cw request cave result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 265
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 266
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 267
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 268
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    .line 269
    .local v30, strArr:[Ljava/lang/String;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    .line 271
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strArr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v30, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 274
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v30, v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 276
    .end local v18           #i:I
    .end local v30           #strArr:[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 277
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 280
    :cond_3
    monitor-enter v28

    .line 281
    :try_start_1
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 282
    monitor-exit v28

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 286
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_5
    const-string v2, "HtcTelephony"

    const-string v3, "send cw query MD5"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 288
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x6b

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 292
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_6
    const-string v2, "HtcTelephony"

    const-string v3, "get cw query MD5 result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 294
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 295
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 296
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    .line 297
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 302
    :goto_3
    monitor-enter v28

    .line 303
    :try_start_2
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 304
    monitor-exit v28

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v28
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 299
    :cond_4
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 300
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 307
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_7
    const-string v2, "HtcTelephony"

    const-string v3, "send cw request MD5"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 309
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v17, v2, v3

    .line 310
    .local v17, chapid:Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v16, v2, v3

    .line 311
    .local v16, chapchallengelength:Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v15, v2, v3

    .line 312
    .local v15, chapchallenge:Ljava/lang/String;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chapid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; chapchallengelength:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; chapchallenge:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x69

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v1, v15, v3}, Lcom/android/internal/telephony/Phone;->requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 317
    .end local v15           #chapchallenge:Ljava/lang/String;
    .end local v16           #chapchallengelength:Ljava/lang/String;
    .end local v17           #chapid:Ljava/lang/String;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_8
    const-string v2, "HtcTelephony"

    const-string v3, "get cw request MD5 result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 319
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 320
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 321
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_7

    .line 322
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    .line 323
    .restart local v30       #strArr:[Ljava/lang/String;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_4
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    .line 325
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strArr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v30, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 327
    :cond_5
    const/4 v2, 0x0

    aget-object v2, v30, v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 331
    .end local v18           #i:I
    .end local v30           #strArr:[Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_6

    .line 332
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 335
    :cond_6
    monitor-enter v28

    .line 336
    :try_start_3
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 337
    monitor-exit v28

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 329
    :cond_7
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 341
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_9
    const-string v2, "HtcTelephony"

    const-string v3, "send cw query VPM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 343
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x6f

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 347
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_a
    const-string v2, "HtcTelephony"

    const-string v3, "get cw query VPM result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 349
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 350
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 351
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_8

    .line 352
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 358
    :goto_6
    monitor-enter v28

    .line 359
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 360
    monitor-exit v28

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    .line 354
    :cond_8
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 355
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 363
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_b
    const-string v2, "HtcTelephony"

    const-string v3, "send cw request VPM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 365
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x6d

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->requestVPM(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 369
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_c
    const-string v2, "HtcTelephony"

    const-string v3, "get cw request VPM result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 371
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 372
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 373
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_a

    .line 374
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    .line 375
    .restart local v30       #strArr:[Ljava/lang/String;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_7
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_9

    .line 377
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strArr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v30, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 380
    :cond_9
    const/4 v2, 0x0

    aget-object v2, v30, v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 382
    .end local v18           #i:I
    .end local v30           #strArr:[Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_b

    .line 383
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 386
    :cond_b
    monitor-enter v28

    .line 387
    :try_start_5
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 388
    monitor-exit v28

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v28
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v2

    .line 392
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_d
    const-string v2, "HtcTelephony"

    const-string v3, "send cw request SSD UPDATE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 394
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 395
    .local v25, randssd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x71

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->requestSSDUpdate(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 399
    .end local v25           #randssd:Ljava/lang/String;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_e
    const-string v2, "HtcTelephony"

    const-string v3, "get cw request SSD UPDATE result"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 401
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 402
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 403
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_d

    .line 404
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    .line 405
    .restart local v30       #strArr:[Ljava/lang/String;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_8
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_c

    .line 407
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strArr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v30, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 409
    :cond_c
    const/4 v2, 0x0

    aget-object v2, v30, v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 411
    .end local v18           #i:I
    .end local v30           #strArr:[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_e

    .line 412
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 415
    :cond_e
    monitor-enter v28

    .line 416
    :try_start_6
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 417
    monitor-exit v28

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v28
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v2

    .line 420
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_f
    const-string v2, "HtcTelephony"

    const-string v3, "send cw query SSD UPDATE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 422
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x73

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryMD5(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 426
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_10
    const-string v2, "HtcTelephony"

    const-string v3, "get cw query SSD UPDATE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 428
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 429
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 430
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    .line 431
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 437
    :goto_9
    monitor-enter v28

    .line 438
    :try_start_7
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 439
    monitor-exit v28

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v28
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v2

    .line 433
    :cond_f
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 434
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 442
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_11
    const-string v2, "HtcTelephony"

    const-string v3, "send cw request SSD UPDATE CONFIRM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 444
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v13, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 445
    .local v13, authbs:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x75

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v13, v3}, Lcom/android/internal/telephony/Phone;->requestSSDUpdateConfirm(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 454
    .end local v13           #authbs:Ljava/lang/String;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 455
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 456
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 457
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_10

    .line 458
    const-string v2, "HtcTelephony"

    const-string v3, "get cw request SSD UPDATE CONFIRM result: success"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v2, Ljava/lang/String;

    const-string v3, "1"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 465
    :goto_a
    monitor-enter v28

    .line 466
    :try_start_8
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 467
    monitor-exit v28

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v28
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v2

    .line 461
    :cond_10
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get cw request SSD UPDATE CONFIRM result: fail. exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v2, Ljava/lang/String;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_a

    .line 471
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_13
    const-string v2, "HtcTelephony"

    const-string v3, "send CMD_HTC_CW_QUERY_UIMAUTH"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 473
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x77

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryUIMAUTH(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 478
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_14
    const-string v2, "HtcTelephony"

    const-string v3, "get CMD_HTC_CW_QUERY_UIMAUTH result!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 480
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 481
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 482
    const/4 v14, 0x0

    .line 484
    .local v14, authenSupported:I
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_15

    .line 485
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v32, v2

    check-cast v32, [Ljava/lang/String;

    .line 486
    .local v32, uimauth:[Ljava/lang/String;
    const-string v33, ""

    .line 487
    .local v33, uimauthList:Ljava/lang/String;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len of uimauth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_b
    move-object/from16 v0, v32

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_14

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v32, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 490
    aget-object v2, v32, v18

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cave"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 491
    add-int/lit8 v14, v14, 0x1

    .line 488
    :cond_11
    :goto_c
    add-int/lit8 v18, v18, 0x1

    goto :goto_b

    .line 492
    :cond_12
    aget-object v2, v32, v18

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "md5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 493
    add-int/lit8 v14, v14, 0x2

    goto :goto_c

    .line 494
    :cond_13
    aget-object v2, v32, v18

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "akacave"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 495
    add-int/lit8 v14, v14, 0x4

    goto :goto_c

    .line 498
    :cond_14
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uimauthList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .end local v18           #i:I
    .end local v32           #uimauth:[Ljava/lang/String;
    .end local v33           #uimauthList:Ljava/lang/String;
    :goto_d
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 504
    monitor-enter v28

    .line 505
    :try_start_9
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 506
    monitor-exit v28

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v28
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v2

    .line 500
    :cond_15
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 511
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v14           #authenSupported:I
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_15
    const-string v2, "HtcTelephony"

    const-string v3, "send CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 513
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x79

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->requestGetVolteSipRegFailure(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 517
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_16
    const-string v2, "HtcTelephony"

    const-string v3, "get CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE_RESULT result!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 519
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 520
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 521
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_16

    .line 522
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v27, v2

    check-cast v27, [I

    .line 523
    .local v27, registration:[I
    const/4 v2, 0x0

    aget v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 530
    .end local v27           #registration:[I
    :goto_e
    monitor-enter v28

    .line 531
    :try_start_a
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 532
    monitor-exit v28

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v28
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v2

    .line 525
    :cond_16
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 526
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 535
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_17
    const-string v2, "HtcTelephony"

    const-string v3, "send CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 537
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 538
    .local v20, ifcname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x7c

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->requestGetPcscfAddresses(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 542
    .end local v20           #ifcname:Ljava/lang/String;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_18
    const-string v2, "HtcTelephony"

    const-string v3, "get CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES_RESULT"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 544
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 545
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 546
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_19

    .line 547
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v30, v2

    check-cast v30, [Ljava/lang/String;

    .line 548
    .restart local v30       #strArr:[Ljava/lang/String;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_f
    move-object/from16 v0, v30

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_17

    .line 550
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strArr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v30, v18

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 552
    :cond_17
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 556
    .end local v18           #i:I
    .end local v30           #strArr:[Ljava/lang/String;
    :goto_10
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_18

    .line 557
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 560
    :cond_18
    monitor-enter v28

    .line 561
    :try_start_b
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 562
    monitor-exit v28

    goto/16 :goto_0

    :catchall_b
    move-exception v2

    monitor-exit v28
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v2

    .line 554
    :cond_19
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 567
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 568
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v12, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;

    .line 570
    .local v12, argument:Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;
    const/16 v2, 0x7e

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 572
    .local v10, onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget v3, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->cla:I

    iget v4, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->command:I

    iget v5, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->channel:I

    iget v6, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->p1:I

    iget v7, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->p2:I

    iget v8, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->p3:I

    iget-object v9, v12, Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;->data:Ljava/lang/String;

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/IccCard;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 578
    .end local v10           #onCompleted:Landroid/os/Message;
    .end local v12           #argument:Lcom/android/internal/telephony/HtcTelephony$IccAPDUArgument;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_1a
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 579
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 580
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1a

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1a

    .line 581
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 585
    :goto_11
    monitor-enter v28

    .line 586
    :try_start_c
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 587
    monitor-exit v28

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v28
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v2

    .line 583
    :cond_1a
    new-instance v3, Lcom/android/internal/telephony/IccIoResult;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    const/4 v2, 0x0

    check-cast v2, [B

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/IccIoResult;-><init>(II[B)V

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_11

    .line 590
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 591
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/16 v2, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 592
    .restart local v10       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v10}, Lcom/android/internal/telephony/IccCard;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 596
    .end local v10           #onCompleted:Landroid/os/Message;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 597
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 598
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1b

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1b

    .line 599
    new-instance v3, Ljava/lang/Integer;

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 604
    :goto_12
    monitor-enter v28

    .line 605
    :try_start_d
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 606
    monitor-exit v28

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit v28
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v2

    .line 601
    :cond_1b
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v2, v2, v4

    #setter for: Lcom/android/internal/telephony/HtcTelephony;->lastError:I
    invoke-static {v3, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$102(Lcom/android/internal/telephony/HtcTelephony;I)I

    goto :goto_12

    .line 609
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 610
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/16 v2, 0x82

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 612
    .restart local v10       #onCompleted:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2, v10}, Lcom/android/internal/telephony/IccCard;->closeLogicalChannel(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 617
    .end local v10           #onCompleted:Landroid/os/Message;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_1e
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 618
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 619
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1c

    .line 620
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 624
    :goto_13
    monitor-enter v28

    .line 625
    :try_start_e
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 626
    monitor-exit v28

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    monitor-exit v28
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v2

    .line 622
    :cond_1c
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_13

    .line 632
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_1f
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_REQUEST_UICC_AUTHENTICATION"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 634
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 635
    .local v6, uiccAuthParam:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    const-string v4, "7FFF"

    const-string v5, "11"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v7, v7, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v8, 0x86

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->requestQueryQmiUimAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 644
    .end local v6           #uiccAuthParam:Ljava/lang/String;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_20
    const-string v2, "HtcTelephony"

    const-string v3, "<< CMD_HTC_REQUEST_UICC_AUTHENTICATION_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 646
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 647
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/IccIoResult;

    .line 648
    .local v19, iccIoResult:Lcom/android/internal/telephony/IccIoResult;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 649
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1e

    .line 650
    new-instance v29, Landroid/os/Bundle;

    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    .line 651
    .local v29, result:Landroid/os/Bundle;
    const-string v2, "sw1"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    const-string v2, "sw2"

    move-object/from16 v0, v19

    iget v3, v0, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 653
    const-string v2, "payload"

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 654
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 659
    .end local v29           #result:Landroid/os/Bundle;
    :goto_14
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_1d

    .line 660
    const-string v2, "HtcTelephony"

    const-string v3, "result is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 664
    :cond_1d
    monitor-enter v28

    .line 665
    :try_start_f
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 666
    monitor-exit v28

    goto/16 :goto_0

    :catchall_f
    move-exception v2

    monitor-exit v28
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v2

    .line 656
    :cond_1e
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 670
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v19           #iccIoResult:Lcom/android/internal/telephony/IccIoResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_21
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_GET_SECTOR_ID"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 672
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v5, 0x84

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->requestGetSectorID(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 676
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_22
    const-string v2, "HtcTelephony"

    const-string v3, "<< CMD_HTC_GET_SECTOR_ID_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 678
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 679
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 680
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_20

    .line 681
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 686
    :goto_15
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_1f

    .line 687
    const-string v2, "HtcTelephony"

    const-string v3, "result is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 691
    :cond_1f
    monitor-enter v28

    .line 692
    :try_start_10
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 693
    monitor-exit v28

    goto/16 :goto_0

    :catchall_10
    move-exception v2

    monitor-exit v28
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v2

    .line 683
    :cond_20
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 698
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_23
    const-string v2, "HtcTelephony"

    const-string v3, "CMD_HTC_CSIM_AUTH_RSP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 702
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$300(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 703
    if-eqz v11, :cond_21

    :try_start_11
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_21

    .line 704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    check-cast v2, Landroid/os/Bundle;

    #setter for: Lcom/android/internal/telephony/HtcTelephony;->mCSIMResult:Landroid/os/Bundle;
    invoke-static {v4, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$402(Lcom/android/internal/telephony/HtcTelephony;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 707
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$300(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 708
    monitor-exit v3

    goto/16 :goto_0

    :catchall_11
    move-exception v2

    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v2

    .line 714
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_24
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_PERMANENT_DETACH_LTE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    const-string v3, "C8260A0000"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v7, 0x89

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 718
    :pswitch_25
    const-string v2, "HtcTelephony"

    const-string v3, "<< CMD_HTC_PERMANENT_DETACH_LTE_STEP2"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 720
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 721
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/telephony/HtcTelephony;->access$502(Lcom/android/internal/telephony/HtcTelephony;Ljava/lang/String;)Ljava/lang/String;

    .line 723
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_23

    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #setter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$502(Lcom/android/internal/telephony/HtcTelephony;Ljava/lang/String;)Ljava/lang/String;

    .line 725
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOldNV_10: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/HtcTelephony;->access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-ge v2, v3, :cond_24

    .line 732
    :cond_22
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can not get NV#10"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 733
    monitor-enter v28

    .line 734
    :try_start_12
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 735
    monitor-exit v28

    goto/16 :goto_0

    :catchall_12
    move-exception v2

    monitor-exit v28
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw v2

    .line 727
    :cond_23
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 738
    :cond_24
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_PERMANENT_DETACH_LTE_STEP3"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v5, 0x8a

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 743
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_26
    const-string v2, "HtcTelephony"

    const-string v3, "<< CMD_HTC_PERMANENT_DETACH_LTE_STEP3"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 745
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 746
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 747
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_25

    .line 748
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> CMD_HTC_PERMANENT_DETACH_LTE_DONE, mOldNV_10.substring(10): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/HtcTelephony;->access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v7, 0xe

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C8270A0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mOldNV_10:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/HtcTelephony;->access$500(Lcom/android/internal/telephony/HtcTelephony;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v7, 0xe

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v5, v5, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v7, 0x8b

    move-object/from16 v0, v28

    invoke-virtual {v5, v7, v0}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 752
    :cond_25
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to set PreferNetwork to CDMA/EvDo!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 754
    monitor-enter v28

    .line 755
    :try_start_13
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 756
    monitor-exit v28

    goto/16 :goto_0

    :catchall_13
    move-exception v2

    monitor-exit v28
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw v2

    .line 760
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_27
    const-string v2, "HtcTelephony"

    const-string v3, "<< CMD_HTC_PERMANENT_DETACH_LTE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 762
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 763
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_26

    .line 764
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_26
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_27

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_17
    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 767
    monitor-enter v28

    .line 768
    :try_start_14
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 769
    monitor-exit v28

    goto/16 :goto_0

    :catchall_14
    move-exception v2

    monitor-exit v28
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    throw v2

    .line 766
    :cond_27
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_17

    .line 774
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_28
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_REQUEST_AKA"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 776
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;

    .line 777
    .local v21, mAuth1:Lcom/android/internal/telephony/HtcTelephony$AuthRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v3

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;->rand:[B

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;->autn:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v7, v7, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v8, 0x8d

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->uiccAkaAuthenticate(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 781
    .end local v21           #mAuth1:Lcom/android/internal/telephony/HtcTelephony$AuthRequest;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_29
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_REQUEST_GBA_BOOTSTRAP"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 783
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;

    .line 784
    .local v22, mAuth2:Lcom/android/internal/telephony/HtcTelephony$AuthRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v3

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;->rand:[B

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephony$AuthRequest;->autn:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v7, v7, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v8, 0x8f

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v2, v3, v4, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateBootstrap(I[B[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 788
    .end local v22           #mAuth2:Lcom/android/internal/telephony/HtcTelephony$AuthRequest;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_2a
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_REQUEST_GBA_NAF"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 790
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [B

    move-object/from16 v24, v2

    check-cast v24, [B

    .line 791
    .local v24, nafid:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetSessionId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v5, 0x91

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->uiccGbaAuthenticateNaf(I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 795
    .end local v24           #nafid:[B
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_2b
    const-string v2, "HtcTelephony"

    const-string v3, ">> CMD_HTC_REQUEST_WRITE_GBA_PARAM"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 797
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;

    .line 798
    .local v23, mParam:Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$000(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;->mEfid:I

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;->mData:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v7, v7, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v8, 0x93

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v5, v7}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(Ljava/lang/String;I[BLandroid/os/Message;)V

    goto/16 :goto_0

    .line 808
    .end local v23           #mParam:Lcom/android/internal/telephony/HtcTelephony$GbaBootStrapParam;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_2c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 809
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 810
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 811
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_29

    .line 812
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :goto_18
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_28

    .line 818
    const-string v2, "HtcTelephony"

    const-string v3, "result is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 822
    :cond_28
    monitor-enter v28

    .line 823
    :try_start_15
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 824
    monitor-exit v28

    goto/16 :goto_0

    :catchall_15
    move-exception v2

    monitor-exit v28
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    throw v2

    .line 814
    :cond_29
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_18

    .line 830
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_2d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 831
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->argument:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/Integer;

    .line 832
    .local v31, type:Ljava/lang/Integer;
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v4, v4, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v5, 0x95

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType_wifi_call(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 837
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    .end local v31           #type:Ljava/lang/Integer;
    :pswitch_2e
    const-string v2, "HtcTelephony"

    const-string v3, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL_RESULT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 839
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 840
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 841
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2a

    .line 842
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 847
    :goto_19
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    monitor-enter v28

    .line 850
    :try_start_16
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 851
    monitor-exit v28

    goto/16 :goto_0

    :catchall_16
    move-exception v2

    monitor-exit v28
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    throw v2

    .line 844
    :cond_2a
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_19

    .line 856
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnQuery(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    invoke-static {v3, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$600(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    goto/16 :goto_0

    .line 859
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnQueryContResult(ILandroid/os/AsyncResult;)V
    invoke-static {v3, v4, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$700(Lcom/android/internal/telephony/HtcTelephony;ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 862
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnQueryResponse(ILandroid/os/AsyncResult;)V
    invoke-static {v3, v4, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$800(Lcom/android/internal/telephony/HtcTelephony;ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 865
    :pswitch_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnUpdate(Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V
    invoke-static {v3, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$900(Lcom/android/internal/telephony/HtcTelephony;Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;)V

    goto/16 :goto_0

    .line 868
    :pswitch_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnUpdateResponse(IILandroid/os/AsyncResult;)V
    invoke-static {v3, v4, v5, v2}, Lcom/android/internal/telephony/HtcTelephony;->access$1000(Lcom/android/internal/telephony/HtcTelephony;IILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 871
    :pswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #calls: Lcom/android/internal/telephony/HtcTelephony;->pdnChangeTakeEffect()V
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$1100(Lcom/android/internal/telephony/HtcTelephony;)V

    goto/16 :goto_0

    .line 876
    :pswitch_35
    const-string v2, "HtcTelephony"

    const-string v3, "CMD_HTC_REQUEST_GET_LTETxRx_INFO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 878
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x97

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->requestGetLTETxRxInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 881
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_36
    const-string v2, "HtcTelephony"

    const-string v3, "CMD_HTC_REQUEST_GET_LTETxRx_INFO_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 883
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 884
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 885
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2c

    .line 886
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 891
    :goto_1a
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_2b

    .line 892
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 895
    :cond_2b
    monitor-enter v28

    .line 896
    :try_start_17
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 897
    monitor-exit v28

    goto/16 :goto_0

    :catchall_17
    move-exception v2

    monitor-exit v28
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    throw v2

    .line 888
    :cond_2c
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 901
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_37
    const-string v2, "HtcTelephony"

    const-string v3, "CMD_HTC_REQUEST_GET_LTE_RF_BAND_INFO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 903
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    #getter for: Lcom/android/internal/telephony/HtcTelephony;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcTelephony;->access$200(Lcom/android/internal/telephony/HtcTelephony;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->this$0:Lcom/android/internal/telephony/HtcTelephony;

    iget-object v3, v3, Lcom/android/internal/telephony/HtcTelephony;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;

    const/16 v4, 0x99

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/HtcTelephony$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->requestGetLTERFBandInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 906
    .end local v28           #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    :pswitch_38
    const-string v2, "HtcTelephony"

    const-string v3, "CMD_HTC_REQUEST_GET_LTE_RF_BAND_INFO_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 908
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;

    .line 909
    .restart local v28       #request:Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 910
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2e

    .line 911
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 916
    :goto_1b
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    if-nez v2, :cond_2d

    .line 917
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/internal/telephony/HtcTelephony$MainThreadRequest;->result:Ljava/lang/Object;

    .line 920
    :cond_2d
    monitor-enter v28

    .line 921
    :try_start_18
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notifyAll()V

    .line 922
    monitor-exit v28

    goto/16 :goto_0

    :catchall_18
    move-exception v2

    monitor-exit v28
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    throw v2

    .line 913
    :cond_2e
    const-string v2, "HtcTelephony"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_21
        :pswitch_22
        :pswitch_1f
        :pswitch_20
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_2c
        :pswitch_29
        :pswitch_2c
        :pswitch_2a
        :pswitch_2c
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
    .end packed-switch
.end method
