.class public Lcom/htc/music/AddAppShortcutActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "AddAppShortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;
    }
.end annotation


# static fields
.field private static final PACKAGE_NAME_FM_RADIO:Ljava/lang/String; = "com.htc.fm"

.field private static final PACKAGE_NAME_GOOGLE_MUSIC:Ljava/lang/String; = "com.google.android.music"

.field private static final TAG:Ljava/lang/String; = "[AddAppShortcutActivity]"


# instance fields
.field mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mResolveInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 199
    new-instance v0, Lcom/htc/music/AddAppShortcutActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/AddAppShortcutActivity$2;-><init>(Lcom/htc/music/AddAppShortcutActivity;)V

    iput-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/AddAppShortcutActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super/range {p0 .. p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AddAppShortcutActivity;->requestWindowFeature(I)Z

    .line 49
    const v3, 0x7f030036

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AddAppShortcutActivity;->setContentView(I)V

    .line 52
    new-instance v10, Lcom/htc/widget/ActionBarText;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    .line 53
    .local v10, actionBarTitle:Lcom/htc/widget/ActionBarText;
    const v3, 0x7f0701ce

    invoke-virtual {v10, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 55
    new-instance v9, Lcom/htc/widget/ActionBarExt;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v3}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    .line 56
    .local v9, actionBarExt:Lcom/htc/widget/ActionBarExt;
    invoke-virtual {v9}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v8

    .line 57
    .local v8, actionBarContainer:Lcom/htc/widget/ActionBarContainer;
    invoke-virtual {v8, v10}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "currentpkg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 60
    .local v19, pkgNameList:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "currentcls"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, clsNameList:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "autoaddlist"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 62
    .local v11, autoAddList:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 63
    const-string v11, ""

    .line 67
    :cond_0
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1

    .line 68
    new-instance v3, Lcom/htc/music/AddAppShortcutActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/music/AddAppShortcutActivity$1;-><init>(Lcom/htc/music/AddAppShortcutActivity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.htc.music.lockscreen_start"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/AddAppShortcutActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    :cond_1
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v14, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v14, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v22

    .line 82
    .local v22, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVMMIntent()Landroid/content/Intent;

    move-result-object v14

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v14, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    new-instance v14, Landroid/content/Intent;

    .end local v14           #intent:Landroid/content/Intent;
    const-string v3, "com.htc.bpmrss.action.VIEW"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .restart local v14       #intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v14, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 92
    .local v20, pm:Landroid/content/pm/PackageManager;
    const/4 v15, 0x0

    .line 93
    .local v15, isExist:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_8

    .line 94
    const/4 v15, 0x0

    .line 95
    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    .line 96
    .local v21, resolveInfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v4, "/data/app/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.htc.fm"

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.google.android.music"

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 93
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 103
    :cond_3
    if-eqz v19, :cond_6

    if-eqz v12, :cond_6

    .line 104
    const/16 v17, 0x0

    .local v17, j:I
    :goto_2
    move-object/from16 v0, v19

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_6

    .line 105
    aget-object v3, v19, v17

    if-eqz v3, :cond_4

    aget-object v3, v19, v17

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 106
    aget-object v3, v12, v17

    if-eqz v3, :cond_5

    .line 107
    aget-object v3, v12, v17

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    const/4 v15, 0x1

    .line 104
    :cond_4
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 111
    :cond_5
    const/4 v15, 0x1

    goto :goto_3

    .line 118
    .end local v17           #j:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 119
    const/4 v15, 0x1

    .line 122
    :cond_7
    if-nez v15, :cond_2

    .line 123
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v16, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "Icon"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v3, "Name"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 132
    .end local v16           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_8
    new-instance v2, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    const/high16 v5, 0x7f03

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "Icon"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    const-string v7, "Name"

    aput-object v7, v6, v3

    const/4 v3, 0x2

    new-array v7, v3, [I

    fill-array-data v7, :array_0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 136
    .local v2, adapter:Lcom/htc/music/AddAppShortcutActivity$AppShortcutAdapter;
    const v3, 0x102000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AddAppShortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/HtcListView;

    .line 137
    .local v18, listView:Lcom/htc/widget/HtcListView;
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/AddAppShortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2080035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_9

    .line 142
    const v3, 0x7f0701d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/AddAppShortcutActivity;->showEmptyView(I)V

    .line 145
    :cond_9
    return-void

    .line 132
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x8t 0x7ft
        0x5t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 150
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 152
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/AddAppShortcutActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/AddAppShortcutActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 161
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[AddAppShortcutActivity]"

    const-string v2, "onDestroy, fail to unregisterReceiver(mUnlockReceiver)"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
