.class public Lcom/htc/music/util/ProjectSettings;
.super Ljava/lang/Object;
.source "ProjectSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[ProjectSettings]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnableDLNA(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 102
    const v2, 0x7f0701e5

    invoke-static {p0, v2}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 105
    .local v0, enableDLNA:Z
    :goto_0
    const/16 v2, 0xdf

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v3, :cond_0

    const/16 v2, 0xe2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v2, v3, :cond_0

    const/16 v2, 0xe3

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v2, v3, :cond_2

    .line 130
    :cond_0
    :goto_1
    return v1

    .line 102
    .end local v0           #enableDLNA:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    .restart local v0       #enableDLNA:Z
    :cond_2
    if-eqz v0, :cond_4

    .line 114
    const/16 v1, 0x62

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v2, :cond_3

    const/16 v1, 0x42

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v2, :cond_3

    const/16 v1, 0x5b

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v2, :cond_3

    const/16 v1, 0xe4

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v2, :cond_3

    const/16 v1, 0xe5

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v2, :cond_3

    const/16 v1, 0x31

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v1, v2, :cond_3

    const/16 v1, 0x32

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v1, v2, :cond_4

    .line 126
    :cond_3
    const/4 v0, 0x0

    :cond_4
    move v1, v0

    .line 130
    goto :goto_1
.end method

.method public static getEnableDrmWarning(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const v0, 0x7f0701e3

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getEnableEnhancer(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 134
    const v2, 0x7f0701e6

    invoke-static {p0, v2}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    .line 135
    .local v0, enableEnhancer:I
    if-ne v0, v1, :cond_0

    .line 138
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEnableExpList(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 53
    const v1, 0x7f0701e1

    invoke-static {p0, v1}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 57
    .local v0, enableExp:Z
    :goto_0
    if-nez v0, :cond_1

    .line 58
    const/4 v1, 0x2

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0xa8

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0x9b

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v2, :cond_0

    const/16 v1, 0x94

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v1, v2, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x1

    .line 66
    :cond_1
    return v0

    .line 53
    .end local v0           #enableExp:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableFfRw(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    const v0, 0x7f0701e2

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnableLandscapeHorizontalSDError(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 157
    const v2, 0x7f0701e7

    invoke-static {p0, v2}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    .line 158
    .local v0, enablelandscapeHorizontalSDError:I
    if-ne v0, v1, :cond_0

    .line 161
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEnablePlugin(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public static getEnableUseAsNotificationRingtone(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const v0, 0x7f0701e0

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEnalbeShow3PratyTabsInFirst(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    const v0, 0x7f0701e4

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIntValue(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const-string v0, "[ProjectSettings]"

    const-string v1, "getIntValue with null context!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static getMaxRingtoneSize(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const v0, 0x7f0701df

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getProjectName(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const v0, 0x7f0701de

    invoke-static {p0, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static isSrsAsDefaultSoundEffect()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportBypassPincode()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method
