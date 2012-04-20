.class public Lcom/android/camera/menu/ResolutionMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "ResolutionMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/ResolutionMenuItem$1;,
        Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;
    }
.end annotation


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_Items:[Lcom/android/camera/menu/MenuItem;

.field private final mode:Lcom/android/camera/CameraMode;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraMode;I)V
    .locals 1
    .parameter "cameraActivity"
    .parameter "mode"
    .parameter "titleResId"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    .line 62
    iput-object p1, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 63
    iput-object p2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/menu/ResolutionMenuItem;Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/menu/ResolutionMenuItem;->onResolutionSelected(Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;)V

    return-void
.end method

.method private onResolutionSelected(Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;)V
    .locals 6
    .parameter "menuItem"

    .prologue
    const/4 v3, 0x0

    .line 73
    sget-object v2, Lcom/android/camera/menu/ResolutionMenuItem$1;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v4, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    invoke-virtual {v4}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 76
    :pswitch_0
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v1

    .line 84
    .local v1, modeHandler:Lcom/android/camera/ModeHandler;
    :goto_1
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v1, v5, v2}, Lcom/android/camera/ModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p1, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->resolutionItem:Lcom/android/camera/ResolutionMenuItem;

    iget-object v5, v5, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 90
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->restartPreview(I)Z

    .line 93
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    sget-object v4, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v2, v4, :cond_0

    .line 94
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->resolutionSelectedEvent:Lcom/android/camera/event/Event;

    new-instance v4, Lcom/android/camera/OneValueEventArgs;

    iget-object v5, p1, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->resolutionItem:Lcom/android/camera/ResolutionMenuItem;

    iget-object v5, v5, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-direct {v4, v5}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    if-eqz v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_2

    .line 100
    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v4, v2, v0

    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v4, v2}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    .line 99
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 79
    .end local v0           #i:I
    .end local v1           #modeHandler:Lcom/android/camera/ModeHandler;
    :pswitch_1
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v1

    .line 80
    .restart local v1       #modeHandler:Lcom/android/camera/ModeHandler;
    goto :goto_1

    .restart local v0       #i:I
    :cond_1
    move v2, v3

    .line 100
    goto :goto_3

    .line 102
    .end local v0           #i:I
    :cond_2
    iget-object v2, p1, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->resolutionItem:Lcom/android/camera/ResolutionMenuItem;

    iget v2, v2, Lcom/android/camera/ResolutionMenuItem;->resStringId:I

    invoke-virtual {p0, v2}, Lcom/android/camera/menu/ResolutionMenuItem;->setSummary(I)V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public updateContent()V
    .locals 14

    .prologue
    .line 113
    sget-object v12, Lcom/android/camera/menu/ResolutionMenuItem$1;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v13, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    invoke-virtual {v13}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 116
    :pswitch_0
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v7

    .line 124
    .local v7, modeHandler:Lcom/android/camera/ModeHandler;
    :goto_1
    new-instance v9, Ljava/util/TreeSet;

    iget-object v13, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v12, v12, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v12}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/CameraType;

    invoke-virtual {v7, v13, v12}, Lcom/android/camera/ModeHandler;->getResolutionMenuItem(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/util/LinkedList;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 127
    .local v9, resolutions:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/camera/ResolutionMenuItem;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v8, normalResolutions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v11, wideResolutions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    sget-object v12, Lcom/android/camera/menu/ResolutionMenuItem$1;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v13, p0, Lcom/android/camera/menu/ResolutionMenuItem;->mode:Lcom/android/camera/CameraMode;

    invoke-virtual {v13}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_1

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v12}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v12

    iget-object v12, v12, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    invoke-virtual {v12}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 135
    .local v3, isWidePhoto:Z
    if-eqz v3, :cond_0

    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v12, v12, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v12}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/CameraType;

    invoke-virtual {v12}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v12

    if-nez v12, :cond_0

    .line 136
    const/4 v3, 0x0

    .line 137
    :cond_0
    invoke-virtual {v9}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ResolutionMenuItem;

    .line 139
    .local v4, item:Lcom/android/camera/ResolutionMenuItem;
    iget-object v12, v4, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v12}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 140
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isWidePhoto:Z
    .end local v4           #item:Lcom/android/camera/ResolutionMenuItem;
    .end local v7           #modeHandler:Lcom/android/camera/ModeHandler;
    .end local v8           #normalResolutions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    .end local v9           #resolutions:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/camera/ResolutionMenuItem;>;"
    .end local v11           #wideResolutions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    :pswitch_2
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v7

    .line 120
    .restart local v7       #modeHandler:Lcom/android/camera/ModeHandler;
    goto :goto_1

    .line 142
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #isWidePhoto:Z
    .restart local v4       #item:Lcom/android/camera/ResolutionMenuItem;
    .restart local v8       #normalResolutions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    .restart local v9       #resolutions:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/camera/ResolutionMenuItem;>;"
    .restart local v11       #wideResolutions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    :cond_1
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 149
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isWidePhoto:Z
    .end local v4           #item:Lcom/android/camera/ResolutionMenuItem;
    :pswitch_3
    const/4 v3, 0x0

    .line 150
    .restart local v3       #isWidePhoto:Z
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    :cond_2
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 158
    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 161
    iget-object v13, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v12, v12, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v12}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/CameraType;

    invoke-virtual {v7, v13, v12}, Lcom/android/camera/ModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v0

    .line 164
    .local v0, currentResolution:Lcom/android/camera/Resolution;
    if-eqz v3, :cond_4

    move-object v5, v11

    .line 165
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    :goto_3
    const/4 v10, 0x0

    .line 166
    .local v10, summary:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lcom/android/camera/menu/MenuItem;

    iput-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    .line 167
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v12, v12

    if-ge v1, v12, :cond_5

    .line 169
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ResolutionMenuItem;

    .line 170
    .restart local v4       #item:Lcom/android/camera/ResolutionMenuItem;
    new-instance v6, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;

    iget v12, v4, Lcom/android/camera/ResolutionMenuItem;->resStringId:I

    invoke-direct {v6, p0, v12, v4}, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;-><init>(Lcom/android/camera/menu/ResolutionMenuItem;ILcom/android/camera/ResolutionMenuItem;)V

    .line 171
    .local v6, menuItem:Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;
    iget-object v12, v4, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v0, v12}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 173
    iget v10, v4, Lcom/android/camera/ResolutionMenuItem;->resStringId:I

    .line 174
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;->setChecked(Z)V

    .line 176
    :cond_3
    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aput-object v6, v12, v1

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1           #i:I
    .end local v4           #item:Lcom/android/camera/ResolutionMenuItem;
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    .end local v6           #menuItem:Lcom/android/camera/menu/ResolutionMenuItem$SubMenuItem;
    .end local v10           #summary:I
    :cond_4
    move-object v5, v8

    .line 164
    goto :goto_3

    .line 178
    .restart local v1       #i:I
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/camera/ResolutionMenuItem;>;"
    .restart local v10       #summary:I
    :cond_5
    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    invoke-virtual {p0, v12}, Lcom/android/camera/menu/ResolutionMenuItem;->setItems([Lcom/android/camera/menu/MenuItem;)V

    .line 179
    if-nez v10, :cond_6

    .line 181
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/ResolutionMenuItem;

    iget v10, v12, Lcom/android/camera/ResolutionMenuItem;->resStringId:I

    .line 182
    iget-object v12, p0, Lcom/android/camera/menu/ResolutionMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    .line 186
    :cond_6
    invoke-virtual {p0, v10}, Lcom/android/camera/menu/ResolutionMenuItem;->setSummary(I)V

    goto/16 :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 130
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
