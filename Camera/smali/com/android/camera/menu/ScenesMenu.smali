.class public Lcom/android/camera/menu/ScenesMenu;
.super Lcom/android/camera/menu/MenuListView;
.source "ScenesMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/menu/ScenesMenu$SubItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScenesMenu"


# instance fields
.field private m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SceneList:Lcom/android/camera/effect/EffectList;

.field private m_Settings:Lcom/android/camera/Settings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/camera/menu/MenuListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    .line 90
    instance-of v0, p1, Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lcom/android/camera/HTCCamera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    .line 93
    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_Settings:Lcom/android/camera/Settings;

    .line 94
    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectManager;->getSceneList()Lcom/android/camera/effect/EffectList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_SceneList:Lcom/android/camera/effect/EffectList;

    .line 98
    return-void

    .line 97
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-static {p0}, Lcom/android/camera/menu/ScenesMenu;->getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/menu/ScenesMenu;)Lcom/android/camera/effect/EffectList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_SceneList:Lcom/android/camera/effect/EffectList;

    return-object v0
.end method

.method private static getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;
    .locals 7
    .parameter "scene"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f02008d

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, name:Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-array v1, v2, [Ljava/lang/Integer;

    const-string v2, "com.htc.R.drawable.icon_btn_auto_dark"

    invoke-static {v2}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 133
    :goto_0
    return-object v1

    .line 109
    :cond_0
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    new-array v1, v2, [Ljava/lang/Integer;

    const-string v2, "com.htc.R.drawable.icon_btn_people_dark"

    invoke-static {v2}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 111
    :cond_1
    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020088

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01d4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 113
    :cond_2
    const-string v1, "smartshot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020086

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 115
    :cond_3
    const-string v1, "sports"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_0

    .line 117
    :cond_4
    const-string v1, "burst"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01d6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 119
    :cond_5
    instance-of v1, p0, Lcom/android/camera/effect/ContinuousBurstScene;

    if-eqz v1, :cond_6

    .line 120
    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 121
    :cond_6
    const-string v1, "panorama"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 122
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02008b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00b3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 123
    :cond_7
    const-string v1, "hdr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 124
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020087

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a00b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 125
    :cond_8
    const-string v1, "B_whiteboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 126
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02008e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01da

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 127
    :cond_9
    const-string v1, "flowers"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 128
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f02008a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 129
    :cond_a
    const-string v1, "backlight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 130
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020085

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 131
    :cond_b
    const-string v1, "night"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 132
    new-array v1, v2, [Ljava/lang/Integer;

    const v2, 0x7f020089

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a01e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    goto/16 :goto_0

    .line 133
    :cond_c
    new-array v1, v2, [Ljava/lang/Integer;

    aput-object v6, v1, v3

    aput-object v6, v1, v4

    goto/16 :goto_0
.end method

.method private updateCameraSceneItem()V
    .locals 15

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 165
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v14

    .line 169
    .local v14, startMode:Lcom/android/camera/CameraStartMode;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    new-instance v0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Settings:Lcom/android/camera/Settings;

    const-string v2, "pref_fast_fps"

    const v3, 0x7f0a00ac

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IIIZ)V

    .line 177
    .local v0, menuItem:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setIcon(I)V

    .line 178
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setId(I)V

    .line 180
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->setChecked(Z)V

    .line 181
    iget-boolean v1, v14, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/menu/MenuItem;->setEnabled(Z)V

    .line 183
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Lcom/android/camera/menu/SeparatorMenuItem;

    .end local v0           #menuItem:Lcom/android/camera/menu/MenuItem;
    const v1, 0x7f0a00b5

    invoke-direct {v0, v1}, Lcom/android/camera/menu/SeparatorMenuItem;-><init>(I)V

    .line 187
    .restart local v0       #menuItem:Lcom/android/camera/menu/MenuItem;
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v0           #menuItem:Lcom/android/camera/menu/MenuItem;
    :cond_0
    const/4 v9, 0x0

    .local v9, i:I
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectList;->getCurrentEffectCount()I

    move-result v7

    .local v7, count:I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v1, v9}, Lcom/android/camera/effect/EffectList;->getEffect(I)Lcom/android/camera/effect/EffectBase;

    move-result-object v13

    .line 197
    .local v13, scene:Lcom/android/camera/effect/EffectBase;
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/menu/ScenesMenu$SubItem;

    invoke-direct {v2, p0, v13}, Lcom/android/camera/menu/ScenesMenu$SubItem;-><init>(Lcom/android/camera/menu/ScenesMenu;Lcom/android/camera/effect/EffectBase;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 201
    .end local v13           #scene:Lcom/android/camera/effect/EffectBase;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/ScenesMenu;->setItems(Ljava/util/List;)V

    .line 204
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_SceneList:Lcom/android/camera/effect/EffectList;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectList;->getCurrentEffect()Lcom/android/camera/effect/EffectBase;

    move-result-object v8

    .line 205
    .local v8, currentScene:Lcom/android/camera/effect/EffectBase;
    :goto_1
    const/4 v10, 0x0

    .line 206
    .local v10, isSceneFound:Z
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    :goto_2
    if-ltz v9, :cond_5

    .line 208
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/menu/ScenesMenu$SubItem;

    if-nez v1, :cond_3

    .line 206
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 204
    .end local v8           #currentScene:Lcom/android/camera/effect/EffectBase;
    .end local v10           #isSceneFound:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 211
    .restart local v8       #currentScene:Lcom/android/camera/effect/EffectBase;
    .restart local v10       #isSceneFound:Z
    :cond_3
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/menu/ScenesMenu$SubItem;

    .line 212
    .local v11, item:Lcom/android/camera/menu/ScenesMenu$SubItem;
    #getter for: Lcom/android/camera/menu/ScenesMenu$SubItem;->scene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v11}, Lcom/android/camera/menu/ScenesMenu$SubItem;->access$200(Lcom/android/camera/menu/ScenesMenu$SubItem;)Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    if-eq v1, v8, :cond_4

    .line 213
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/camera/menu/ScenesMenu$SubItem;->setChecked(Z)V

    goto :goto_3

    .line 216
    :cond_4
    const/4 v10, 0x1

    .line 217
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/android/camera/menu/ScenesMenu$SubItem;->setChecked(Z)V

    goto :goto_3

    .line 221
    .end local v11           #item:Lcom/android/camera/menu/ScenesMenu$SubItem;
    :cond_5
    if-nez v10, :cond_6

    .line 223
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v12, 0x2

    .line 224
    .local v12, num:I
    :goto_4
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/menu/ScenesMenu$SubItem;

    #getter for: Lcom/android/camera/menu/ScenesMenu$SubItem;->scene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1}, Lcom/android/camera/menu/ScenesMenu$SubItem;->access$200(Lcom/android/camera/menu/ScenesMenu$SubItem;)Lcom/android/camera/effect/EffectBase;

    move-result-object v8

    .line 225
    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu;->m_Items:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/menu/MenuItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    .line 227
    .end local v12           #num:I
    :cond_6
    return-void

    .line 223
    :cond_7
    const/4 v12, 0x0

    goto :goto_4
.end method


# virtual methods
.method protected onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V
    .locals 2
    .parameter "item"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 143
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/menu/MenuListView;->onMenuItemClicked(Lcom/android/camera/menu/MenuItem;II)V

    .line 146
    packed-switch p3, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->restartPreview(I)Z

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch
.end method

.method public updateItemContents()V
    .locals 0

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/camera/menu/ScenesMenu;->beginUpdate()V

    .line 241
    invoke-direct {p0}, Lcom/android/camera/menu/ScenesMenu;->updateCameraSceneItem()V

    .line 242
    invoke-super {p0}, Lcom/android/camera/menu/MenuListView;->updateItemContents()V

    .line 245
    invoke-virtual {p0}, Lcom/android/camera/menu/ScenesMenu;->endUpdate()V

    .line 246
    return-void
.end method
