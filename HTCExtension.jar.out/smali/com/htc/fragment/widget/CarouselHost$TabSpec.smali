.class Lcom/htc/fragment/widget/CarouselHost$TabSpec;
.super Ljava/lang/Object;
.source "CarouselHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/CarouselHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

.field mHasMenu:Z

.field private mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselHost;


# direct methods
.method private constructor <init>(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "tag"

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mHasMenu:Z

    .line 1170
    iput-object p2, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    .line 1171
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;Lcom/htc/fragment/widget/CarouselHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1161
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselHost$TabSpec;-><init>(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/fragment/widget/CarouselHost$TabSpec;)Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method disableOptionsMenuifHas()V
    .locals 6

    .prologue
    .line 1257
    :try_start_0
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {v4}, Lcom/htc/fragment/widget/CarouselHost;->access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v5, v5, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 1258
    .local v2, f:Landroid/app/Fragment;
    const-class v4, Landroid/app/Fragment;

    const-string v5, "mHasMenu"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1259
    .local v3, fHasMenu:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1261
    .local v0, b:Z
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1262
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mHasMenu:Z

    .line 1263
    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mHasMenu:Z

    if-eqz v4, :cond_0

    .line 1264
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1266
    :cond_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1272
    .end local v0           #b:Z
    .end local v2           #f:Landroid/app/Fragment;
    .end local v3           #fHasMenu:Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 1266
    .restart local v0       #b:Z
    .restart local v2       #f:Landroid/app/Fragment;
    .restart local v3       #fHasMenu:Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v4

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1268
    .end local v0           #b:Z
    .end local v2           #f:Landroid/app/Fragment;
    .end local v3           #fHasMenu:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 1269
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CarouselFragmentApp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v5, v5, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/fragment/widget/CarouselLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doClean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1218
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->tabRemoved()V

    .line 1219
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    .line 1221
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    .line 1222
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    .line 1223
    return-void
.end method

.method enadleOptionsMenuIfHas()V
    .locals 6

    .prologue
    .line 1280
    :try_start_0
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {v4}, Lcom/htc/fragment/widget/CarouselHost;->access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v5, v5, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 1281
    .local v2, f:Landroid/app/Fragment;
    const-class v4, Landroid/app/Fragment;

    const-string v5, "mHasMenu"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1282
    .local v3, fHasMenu:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1284
    .local v0, b:Z
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1285
    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mHasMenu:Z

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-eq v4, v5, :cond_0

    .line 1286
    iget-boolean v4, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mHasMenu:Z

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1288
    :cond_0
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1293
    .end local v0           #b:Z
    .end local v2           #f:Landroid/app/Fragment;
    .end local v3           #fHasMenu:Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 1288
    .restart local v0       #b:Z
    .restart local v2       #f:Landroid/app/Fragment;
    .restart local v3       #fHasMenu:Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v4

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1290
    .end local v0           #b:Z
    .end local v2           #f:Landroid/app/Fragment;
    .end local v3           #fHasMenu:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 1291
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CarouselFragmentApp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v5, v5, Lcom/htc/fragment/widget/CarouselHost;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/fragment/widget/CarouselLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getCacheView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->getCacheView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Landroid/content/Intent;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .locals 4
    .parameter "intent"
    .parameter "labelRes"

    .prologue
    .line 1190
    new-instance v0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;-><init>(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;Landroid/content/Intent;Lcom/htc/fragment/widget/CarouselHost$1;)V

    invoke-virtual {v0, p2}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->setLabel(Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    .line 1191
    return-object p0
.end method

.method public setContent(Landroid/content/Intent;Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .locals 4
    .parameter "intent"
    .parameter "label"

    .prologue
    .line 1198
    new-instance v0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;-><init>(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;Landroid/content/Intent;Lcom/htc/fragment/widget/CarouselHost$1;)V

    invoke-virtual {v0, p2}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->setLabel(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    .line 1199
    return-object p0
.end method

.method public setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$TabSpec;
    .locals 8
    .parameter "label"
    .parameter "icon"
    .parameter "selectedIcon"
    .parameter "showIcon"

    .prologue
    .line 1179
    new-instance v0, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v6, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/htc/fragment/widget/CarouselHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/fragment/widget/CarouselHost;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;Lcom/htc/fragment/widget/CarouselHost$1;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    .line 1180
    return-object p0
.end method

.method public sync(Lcom/htc/fragment/widget/TaskInfo;)V
    .locals 3
    .parameter "taskInfo"

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1231
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Strange ! tasktag is different "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    invoke-interface {v0, p1}, Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;->sync(Lcom/htc/fragment/widget/TaskInfo;)V

    .line 1234
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TabSpec[mTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IndicatorStrategy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/fragment/widget/CarouselHost$IndicatorStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mContentStrategy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
