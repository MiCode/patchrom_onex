.class public Lcom/htc/util/mail/MailManager;
.super Ljava/lang/Object;
.source "MailManager.java"

# interfaces
.implements Lcom/htc/util/mail/AccountColumns;
.implements Lcom/htc/util/mail/IHandleMailManagerMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/MailManager$1;,
        Lcom/htc/util/mail/MailManager$HandleChangeRequester;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static MAIL_OBJ_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MailManager"

.field private static mTempAccount:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static mTempAccount1:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static me:Lcom/htc/util/mail/MailManager; = null

.field private static final sCombinedAccountId:J = 0x7fffffffffffffffL


# instance fields
.field private mAccount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountLock:Ljava/lang/Object;

.field private mCombinedAccount:Lcom/htc/util/mail/MailAccount;

.field private mContext:Landroid/content/Context;

.field private mHandleChangeRequester:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

.field private mMailManagerListener:Lcom/htc/util/mail/IMailManagerListener;

.field private mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    .line 47
    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/MailManager;->DEBUG:Z

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/util/mail/MailManager;->mTempAccount:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/util/mail/MailManager;->mTempAccount1:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    .line 59
    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    .line 60
    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mHandleChangeRequester:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    .line 63
    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    .line 65
    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    .line 70
    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mMailManagerListener:Lcom/htc/util/mail/IMailManagerListener;

    .line 110
    iput-object p1, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    .line 111
    sput-object p0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    .line 113
    new-instance v0, Lcom/htc/util/mail/MailMessageReceiver;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/MailMessageReceiver;-><init>(Lcom/htc/util/mail/IHandleMailManagerMessage;)V

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    .line 114
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    iget-object v1, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/MailMessageReceiver;->Active(Landroid/content/Context;)V

    .line 116
    new-instance v0, Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    invoke-direct {v0, p0, v2}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;-><init>(Lcom/htc/util/mail/MailManager;Lcom/htc/util/mail/MailManager$1;)V

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mHandleChangeRequester:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    .line 118
    const-string v0, "MailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MailManager contruct! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method static synthetic access$100(Lcom/htc/util/mail/MailManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->doHandleMessageChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/util/mail/MailManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->doHandleFolderChange()V

    return-void
.end method

.method private buildOrGetAccounts(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 22
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/htc/util/mail/MailManager;->releaseRealAccounts()V

    .line 211
    const/4 v3, 0x0

    .line 276
    :goto_0
    return-object v3

    .line 214
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/htc/util/mail/MailManager;->isSameWithAccounts(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    if-eqz p1, :cond_1

    .line 216
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_1
    const/16 p1, 0x0

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    goto :goto_0

    .line 222
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v4

    .line 223
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 224
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    .line 232
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 237
    .local v21, size:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    if-lez v21, :cond_8

    .line 238
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v20, mailAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 240
    new-instance v2, Lcom/htc/util/mail/RealAccount;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    const-string v4, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const-string v6, "_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_desc"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "_emailaddress"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_protocol"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "_defaultfolderId"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v11, "_trashfolderId"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "_sentfolderId"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v13, "_draftfolderId"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v14, "_outfolderId"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v15, "_defaultaccount"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v16, "_colorIdx"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-direct/range {v2 .. v16}, Lcom/htc/util/mail/RealAccount;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIII)V

    .line 256
    .local v2, account:Lcom/htc/util/mail/MailAccount;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 257
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 239
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 226
    .end local v2           #account:Lcom/htc/util/mail/MailAccount;
    .end local v18           #i:I
    .end local v20           #mailAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    .end local v21           #size:I
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/util/mail/MailAccount;

    .line 227
    .local v17, acc:Lcom/htc/util/mail/MailAccount;
    invoke-virtual/range {v17 .. v17}, Lcom/htc/util/mail/MailAccount;->release()V

    goto :goto_3

    .line 232
    .end local v17           #acc:Lcom/htc/util/mail/MailAccount;
    .end local v19           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 230
    .restart local v19       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 259
    .end local v19           #i$:Ljava/util/Iterator;
    .restart local v18       #i:I
    .restart local v20       #mailAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    .restart local v21       #size:I
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 260
    if-eqz v20, :cond_7

    .line 261
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/mail/MailAccount;

    .line 262
    .restart local v2       #account:Lcom/htc/util/mail/MailAccount;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 265
    .end local v2           #account:Lcom/htc/util/mail/MailAccount;
    .end local v19           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 268
    .end local v18           #i:I
    .end local v20           #mailAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    .end local v21           #size:I
    :catchall_2
    move-exception v3

    if-eqz p1, :cond_6

    .line 269
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_6
    const/16 p1, 0x0

    throw v3

    .line 265
    .restart local v18       #i:I
    .restart local v20       #mailAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    .restart local v21       #size:I
    :cond_7
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 268
    .end local v18           #i:I
    .end local v20           #mailAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    :cond_8
    if-eqz p1, :cond_9

    .line 269
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_9
    const/16 p1, 0x0

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 274
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 276
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method private cloneAccountArrayList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 845
    .local p1, Account:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/MailAccount;>;"
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v3

    .line 846
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 847
    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 848
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 851
    .end local v0           #acc:Lcom/htc/util/mail/MailAccount;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    return-void
.end method

.method private doHandleFolderChange()V
    .locals 8

    .prologue
    .line 877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 879
    .local v1, enter:J
    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 890
    :goto_0
    return-void

    .line 881
    :cond_0
    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount1:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/htc/util/mail/MailManager;->cloneAccountArrayList(Ljava/util/ArrayList;)V

    .line 883
    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 884
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailManager;->handleFoldersChange(Lcom/htc/util/mail/MailAccount;)V

    goto :goto_1

    .line 887
    .end local v0           #acc:Lcom/htc/util/mail/MailAccount;
    :cond_1
    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 889
    const-string v4, "MailManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doHandleFolderChange() take ms:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doHandleMessageChange()V
    .locals 8

    .prologue
    .line 857
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 859
    .local v1, enter:J
    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 861
    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/htc/util/mail/MailManager;->cloneAccountArrayList(Ljava/util/ArrayList;)V

    .line 863
    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 864
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailManager;->handleMessageChange(Lcom/htc/util/mail/MailAccount;)V

    goto :goto_0

    .line 867
    .end local v0           #acc:Lcom/htc/util/mail/MailAccount;
    :cond_0
    sget-object v4, Lcom/htc/util/mail/MailManager;->mTempAccount:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 870
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    invoke-direct {p0, v4}, Lcom/htc/util/mail/MailManager;->handleMessageChange(Lcom/htc/util/mail/MailAccount;)V

    .line 872
    :cond_2
    const-string v4, "MailManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doHandleMessageChange() take ms:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    return-void
.end method

.method public static getCombinedAccountId()J
    .locals 2

    .prologue
    .line 694
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 87
    const-class v1, Lcom/htc/util/mail/MailManager;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/htc/util/mail/MailManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/util/mail/MailManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    .line 91
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    sget-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    iget-object v0, v0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 94
    sget-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    .line 95
    sget-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    iget-object v0, v0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    sget-object v1, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    iget-object v1, v1, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/htc/util/mail/MailMessageReceiver;->Active(Landroid/content/Context;)V

    .line 100
    :cond_1
    sget-object v0, Lcom/htc/util/mail/MailManager;->me:Lcom/htc/util/mail/MailManager;

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleFoldersChange(Lcom/htc/util/mail/MailAccount;)V
    .locals 5
    .parameter "acc"

    .prologue
    .line 912
    const/4 v2, 0x0

    .line 913
    .local v2, hasNewFolders:Z
    const/4 v1, 0x0

    .line 915
    .local v1, hasDelFolders:Z
    invoke-virtual {p1}, Lcom/htc/util/mail/MailAccount;->refreshFolderIdList()V

    .line 916
    invoke-virtual {p1}, Lcom/htc/util/mail/MailAccount;->getNewFolderList()Ljava/util/ArrayList;

    move-result-object v3

    .line 917
    .local v3, newFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v2, 0x1

    .line 919
    :cond_0
    invoke-virtual {p1}, Lcom/htc/util/mail/MailAccount;->getDelFolderList()Ljava/util/ArrayList;

    move-result-object v0

    .line 920
    .local v0, delFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v1, 0x1

    .line 922
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 923
    :cond_2
    invoke-virtual {p1}, Lcom/htc/util/mail/MailAccount;->refreshFolders()V

    .line 926
    :cond_3
    if-eqz v2, :cond_4

    .line 927
    invoke-virtual {p1, v3}, Lcom/htc/util/mail/MailAccount;->handleNewFolders(Ljava/util/ArrayList;)V

    .line 930
    :cond_4
    if-eqz v1, :cond_5

    .line 931
    invoke-virtual {p1, v0}, Lcom/htc/util/mail/MailAccount;->handleDelFolders(Ljava/util/ArrayList;)V

    .line 933
    :cond_5
    return-void
.end method

.method private handleMessageChange(Lcom/htc/util/mail/MailAccount;)V
    .locals 9
    .parameter "acc"

    .prologue
    .line 751
    if-nez p1, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    invoke-virtual {p1}, Lcom/htc/util/mail/MailAccount;->getAllFolders()Ljava/util/ArrayList;

    move-result-object v0

    .line 754
    .local v0, allFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder;>;"
    if-eqz v0, :cond_0

    .line 757
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 758
    .local v6, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 759
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/Folder;

    .line 760
    .local v3, folder:Lcom/htc/util/mail/Folder;
    invoke-virtual {v3}, Lcom/htc/util/mail/Folder;->refreshMessages()V

    .line 761
    invoke-virtual {v3}, Lcom/htc/util/mail/Folder;->getNewMailList()Ljava/util/ArrayList;

    move-result-object v5

    .line 762
    .local v5, newMailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder$BasicMessageInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 763
    invoke-virtual {p1, v5}, Lcom/htc/util/mail/MailAccount;->handleNewMessage(Ljava/util/ArrayList;)V

    .line 765
    :cond_2
    invoke-virtual {v3}, Lcom/htc/util/mail/Folder;->getDelMailList()Ljava/util/ArrayList;

    move-result-object v1

    .line 766
    .local v1, delMailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder$BasicMessageInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 767
    invoke-virtual {p1, v1}, Lcom/htc/util/mail/MailAccount;->handleDelMessage(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 770
    .end local v1           #delMailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder$BasicMessageInfo;>;"
    .end local v3           #folder:Lcom/htc/util/mail/Folder;
    .end local v4           #i:I
    .end local v5           #newMailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/Folder$BasicMessageInfo;>;"
    .end local v6           #size:I
    :catch_0
    move-exception v2

    .line 771
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "MailManager"

    const-string v8, "handleMessageChange exception"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isAccountsExist()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/htc/util/mail/MailManager;->getAccounts()Ljava/util/ArrayList;

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameWithAccounts(Landroid/database/Cursor;)Z
    .locals 9
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 176
    if-nez p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v5

    .line 178
    :cond_1
    iget-object v6, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v6

    .line 179
    :try_start_0
    iget-object v7, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 180
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-eq v7, v8, :cond_3

    monitor-exit v6

    goto :goto_0

    .line 181
    :cond_3
    iget-object v7, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    monitor-exit v6

    goto :goto_0

    .line 182
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 186
    :cond_5
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v1, v6

    .line 188
    .local v1, accountId:J
    const/4 v3, 0x0

    .line 189
    .local v3, found:Z
    iget-object v6, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v6

    .line 190
    :try_start_2
    iget-object v7, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    .line 191
    iget-object v7, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 193
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-nez v7, :cond_6

    .line 194
    const/4 v3, 0x1

    .line 199
    .end local v0           #acc:Lcom/htc/util/mail/MailAccount;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_7
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 200
    if-eqz v3, :cond_0

    .line 201
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 205
    const/4 v5, 0x1

    goto :goto_0

    .line 199
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method private releaseCombinedAccount()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->release()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    .line 148
    :cond_0
    return-void
.end method

.method private releaseRealAccounts()V
    .locals 4

    .prologue
    .line 152
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v3

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 155
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->release()V

    goto :goto_0

    .line 161
    .end local v0           #acc:Lcom/htc/util/mail/MailAccount;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 158
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 159
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    .line 161
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    return-void
.end method


# virtual methods
.method public addAccount(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 1
    .parameter "accountDescription"
    .parameter "incomingProtocol"
    .parameter "incomingEmailAddress"
    .parameter "incomingUserName"
    .parameter "incomingPassword"
    .parameter "incomingMailServer"
    .parameter "incomingSecurityType"
    .parameter "incomingServerPort"
    .parameter "outgoingIsLoginRequired"
    .parameter "outgoingUserName"
    .parameter "outgoingPassword"
    .parameter "outgoingServer"
    .parameter "outgoingSecurityType"
    .parameter "outgoingServerPort"

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public addExchangeAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Z
    .locals 1
    .parameter "emailAddress"
    .parameter "userName"
    .parameter "password"
    .parameter "serverAddress"
    .parameter "isRequiredSSL"
    .parameter "isSyncMail"
    .parameter "isSyncContacts"
    .parameter "isSyncCalendar"

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccount(J)Z
    .locals 8
    .parameter "accountId"

    .prologue
    const/4 v7, 0x0

    .line 351
    const/4 v0, 0x0

    .line 353
    .local v0, bSuccess:Z
    :try_start_0
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 354
    .local v1, count:I
    if-lez v1, :cond_0

    .line 355
    const/4 v0, 0x1

    .line 361
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 363
    return v0

    .line 356
    .end local v1           #count:I
    :catch_0
    move-exception v2

    .line 357
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 358
    const/4 v1, -0x1

    .restart local v1       #count:I
    goto :goto_0
.end method

.method public getAccount(J)Lcom/htc/util/mail/MailAccount;
    .locals 7
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    .line 518
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->isAccountsExist()Z

    move-result v4

    if-nez v4, :cond_0

    .line 535
    :goto_0
    return-object v3

    .line 519
    :cond_0
    invoke-static {}, Lcom/htc/util/mail/MailManager;->getCombinedAccountId()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/htc/util/mail/MailManager;->getCombinedAccount()Lcom/htc/util/mail/MailAccount;

    move-result-object v3

    goto :goto_0

    .line 521
    :cond_1
    const/4 v2, 0x0

    .line 522
    .local v2, index:I
    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v4

    .line 523
    :try_start_0
    iget-object v5, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 524
    iget-object v5, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 525
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v5

    cmp-long v5, p1, v5

    if-nez v5, :cond_3

    .line 530
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    :cond_2
    iget-object v5, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_4

    monitor-exit v4

    goto :goto_0

    .line 534
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 528
    .restart local v0       #account:Lcom/htc/util/mail/MailAccount;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 532
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/MailAccount;

    monitor-exit v4

    goto :goto_0

    .line 534
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAccountList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->isAccountsExist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 705
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getAccounts()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/MailAccount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 297
    iget-object v1, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 299
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/util/mail/MailUtils;->sACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_del = -1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 301
    .local v6, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/htc/util/mail/MailManager;->buildOrGetAccounts(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getAccountsUpdateTime(J)J
    .locals 3
    .parameter "accountId"

    .prologue
    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    .line 601
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getAccountsUpdateTime()J

    move-result-wide v1

    .line 603
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getAllUnreadMail()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 577
    const/4 v7, 0x0

    .line 578
    .local v7, unread:I
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->allUnreadMailURI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 579
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v8

    .line 585
    :goto_0
    return v0

    .line 582
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 584
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 585
    goto :goto_0
.end method

.method public getCombinedAccount()Lcom/htc/util/mail/MailAccount;
    .locals 10

    .prologue
    const v4, 0x204022b

    .line 324
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lcom/htc/util/mail/CombinedAccount;

    iget-object v1, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/htc/util/mail/MailUtils;->getHtcString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/htc/util/mail/MailUtils;->getHtcString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7fffffff

    const v5, 0x7ffffffe

    const v6, 0x7ffffffd

    const v7, 0x7ffffffc

    const v8, 0x7ffffffb

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/htc/util/mail/CombinedAccount;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mCombinedAccount:Lcom/htc/util/mail/MailAccount;

    return-object v0
.end method

.method public getDefaultAccount()Lcom/htc/util/mail/MailAccount;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 487
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->isAccountsExist()Z

    move-result v4

    if-nez v4, :cond_0

    .line 501
    :goto_0
    return-object v3

    .line 489
    :cond_0
    const/4 v2, 0x0

    .line 490
    .local v2, index:I
    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v4

    .line 491
    :try_start_0
    iget-object v5, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 492
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 493
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->isDefaultAccount()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 498
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    :cond_1
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/MailAccount;

    monitor-exit v4

    goto :goto_0

    .line 500
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 496
    .restart local v0       #account:Lcom/htc/util/mail/MailAccount;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 500
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDefaultAccountId()J
    .locals 7

    .prologue
    const-wide/16 v3, -0x1

    .line 458
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->isAccountsExist()Z

    move-result v5

    if-nez v5, :cond_0

    .line 472
    :goto_0
    return-wide v3

    .line 460
    :cond_0
    const/4 v2, 0x0

    .line 461
    .local v2, index:I
    iget-object v5, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v5

    .line 462
    :try_start_0
    iget-object v6, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 463
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 464
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->isDefaultAccount()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 469
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    :cond_1
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/MailAccount;

    invoke-virtual {v3}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v3

    monitor-exit v5

    goto :goto_0

    .line 471
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 467
    .restart local v0       #account:Lcom/htc/util/mail/MailAccount;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 471
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDefaultMailBoxId(J)J
    .locals 3
    .parameter "accountId"

    .prologue
    .line 636
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    .line 638
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getDefaultFolderId()I

    move-result v1

    int-to-long v1, v1

    .line 640
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getMessage(J)Z
    .locals 1
    .parameter "messageId"

    .prologue
    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public getUnreadMail(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 617
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    .line 619
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getUnreadMail()I

    move-result v1

    .line 621
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAutoSync()Z
    .locals 1

    .prologue
    .line 653
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public isExchangeAccountExisted()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 666
    const-string v3, "_provider = \'Exchange\' and _del!=1"

    .line 668
    .local v3, where:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(_id) as _total"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 669
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    const-string v0, "_total"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 671
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 680
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 675
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_0
    if-eqz v6, :cond_1

    .line 676
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v9

    .line 678
    goto :goto_0

    .line 679
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, ex:Ljava/lang/Exception;
    move v0, v9

    .line 680
    goto :goto_0
.end method

.method public onHandleAccountRefresh()V
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/htc/util/mail/MailManager;->releaseAccounts()V

    .line 746
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mMailManagerListener:Lcom/htc/util/mail/IMailManagerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mMailManagerListener:Lcom/htc/util/mail/IMailManagerListener;

    invoke-interface {v0}, Lcom/htc/util/mail/IMailManagerListener;->onAccountRefresh()V

    .line 748
    :cond_0
    return-void
.end method

.method public onHandleAccountSyncFinish(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 953
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    .line 954
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    if-nez v0, :cond_0

    .line 957
    :goto_0
    return-void

    .line 956
    :cond_0
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->handleSyncFinished()V

    goto :goto_0
.end method

.method public onHandleAccountSyncStart(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 940
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    .line 941
    .local v0, acc:Lcom/htc/util/mail/MailAccount;
    if-nez v0, :cond_0

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->handleSyncStart()V

    goto :goto_0
.end method

.method public onHandleFoldersChange()V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mHandleChangeRequester:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->requestHandleFoldersChange()V

    .line 908
    return-void
.end method

.method public onHandleMessageChange()V
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mHandleChangeRequester:Lcom/htc/util/mail/MailManager$HandleChangeRequester;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailManager$HandleChangeRequester;->requestHandleMessageChange()V

    .line 898
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 135
    const-string v0, "MailManager"

    const-string v1, "MailManager release()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/htc/util/mail/MailManager;->mMailMessageReceiver:Lcom/htc/util/mail/MailMessageReceiver;

    invoke-virtual {v0}, Lcom/htc/util/mail/MailMessageReceiver;->Deactive()V

    .line 138
    invoke-virtual {p0}, Lcom/htc/util/mail/MailManager;->releaseAccounts()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/mail/MailManager;->mContext:Landroid/content/Context;

    .line 141
    return-void
.end method

.method public releaseAccounts()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->releaseRealAccounts()V

    .line 171
    invoke-direct {p0}, Lcom/htc/util/mail/MailManager;->releaseCombinedAccount()V

    .line 172
    return-void
.end method

.method public setDefaultAccount(J)Z
    .locals 7
    .parameter "accountId"

    .prologue
    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, bFind:Z
    iget-object v4, p0, Lcom/htc/util/mail/MailManager;->mAccountLock:Ljava/lang/Object;

    monitor-enter v4

    .line 552
    :try_start_0
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 553
    iget-object v3, p0, Lcom/htc/util/mail/MailManager;->mAccount:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/MailAccount;

    .line 554
    .local v0, account:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v5

    cmp-long v3, p1, v5

    if-nez v3, :cond_0

    .line 555
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->setDefaultAccount()V

    .line 556
    const/4 v1, 0x1

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual {v0}, Lcom/htc/util/mail/MailAccount;->resetDefaultAccount()V

    goto :goto_0

    .line 562
    .end local v0           #account:Lcom/htc/util/mail/MailAccount;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    return v1
.end method

.method public setMailManagerListener(Lcom/htc/util/mail/IMailManagerListener;)V
    .locals 0
    .parameter "mailManagerListener"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/htc/util/mail/MailManager;->mMailManagerListener:Lcom/htc/util/mail/IMailManagerListener;

    .line 123
    return-void
.end method

.method public setMailMessageListener(Lcom/htc/util/mail/IMailMessageListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 722
    return-void
.end method
