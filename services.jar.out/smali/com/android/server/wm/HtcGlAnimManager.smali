.class public Lcom/android/server/wm/HtcGlAnimManager;
.super Ljava/lang/Object;
.source "HtcGlAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;,
        Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final CUSTOMIZE_FOR_ROSIE:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_ANIM:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_ANIM_CHOOSEN:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_ANIM_PROGRESS:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_API:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_TO_NATIVE:Z = false

#the value of this static final field might be set in the static constructor
.field static final HIDE_STATUS_BAR:Z = false

#the value of this static final field might be set in the static constructor
.field static final RECENTAPP_WITH_STARTING_WINDOW:Z = false

#the value of this static final field might be set in the static constructor
.field static final SKIP_OOBE_DO_ZOOM_ANIM:Z = false

.field static final TAG:Ljava/lang/String; = "HtcGlAnimation"

#the value of this static final field might be set in the static constructor
.field static final USE_HTC_TRANSITION_ANIM:Z = false

.field static final overrideHtcGlAnimString:Ljava/lang/String; = "overrideHtcGlAnim:: "


# instance fields
.field final DELTA_CONTINUOUS_ANIM:I

.field final FOR_CONTENTZOOM_AREA:Z

.field final FOR_ZOOM_POINT:Z

.field final OOBE_LANGUGE_SETUP:Ljava/lang/String;

.field final OOBE_PACKAGE_NAME:Ljava/lang/String;

.field mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

.field private mAnimatingWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mExcludeFromRecent:Z

.field mHomeKeyAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mHomeKeyAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field private mIsClearingCurrentAnim:Z

.field mIsHomeKeyPressed:Z

.field mIsMeetContinuousTrans:Z

.field mIsOpen:Z

.field mIsOverrideAppTranAnim:Z

.field mIsRecentAppInvolve:Z

.field mIsRosieInvolve:Z

.field mLastAnimMillis:F

.field mOverrideAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mOverrideAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mOverrideAppTranAnimType:I

.field mOverrideIsOpen:I

.field mOverrideTouchPoint:Landroid/graphics/Point;

.field mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

.field mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

.field mRosieAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mRosieAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mService:Lcom/android/server/wm/WindowManagerService;

.field mSetAppTranAnimDuration:I

.field mSetAppTranAnimRate:I

.field mTouchPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 33
    sget-boolean v2, Lcom/htc/view/animation/HtcGlTransAnimFactory;->USE_HTC_TRANSITION_ANIM:Z

    sput-boolean v2, Lcom/android/server/wm/HtcGlAnimManager;->USE_HTC_TRANSITION_ANIM:Z

    .line 38
    const-string v2, "debug_more_htcgl_log"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcGlAnimManager;->DEBUG_ANIM:Z

    .line 40
    const-string v2, "debug_api"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcGlAnimManager;->DEBUG_API:Z

    .line 42
    const-string v2, "debug_to_native"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcGlAnimManager;->DEBUG_TO_NATIVE:Z

    .line 44
    const-string v2, "debug_anim_progress"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcGlAnimManager;->DEBUG_ANIM_PROGRESS:Z

    .line 46
    const-string v2, "debug_anim_choosen"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcGlAnimManager;->DEBUG_ANIM_CHOOSEN:Z

    .line 104
    const-string v2, "skip_OOBE_do_zoom"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcGlAnimManager;->SKIP_OOBE_DO_ZOOM_ANIM:Z

    .line 113
    const-string v2, "customize_for_rosie"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xdf

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe2

    if-eq v2, v3, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/wm/HtcGlAnimManager;->CUSTOMIZE_FOR_ROSIE:Z

    .line 119
    const-string v0, "hide_status_bar"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/HtcGlAnimManager;->HIDE_STATUS_BAR:Z

    .line 123
    const-string v0, "recentapp_starting"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/HtcGlAnimManager;->RECENTAPP_WITH_STARTING_WINDOW:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .locals 2
    .parameter "service"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    .line 57
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsMeetContinuousTrans:Z

    .line 58
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mLastAnimMillis:F

    .line 59
    const-string v0, "cont_anim_criteria"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->DELTA_CONTINUOUS_ANIM:I

    .line 63
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsHomeKeyPressed:Z

    .line 66
    new-instance v0, Lcom/htc/view/animation/HtcGlTransAnimFactory;

    invoke-direct {v0}, Lcom/htc/view/animation/HtcGlTransAnimFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    .line 70
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRosieInvolve:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRecentAppInvolve:Z

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimDuration:I

    .line 83
    iput v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimRate:I

    .line 98
    const-string v0, "for_contentzoom_area"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->FOR_CONTENTZOOM_AREA:Z

    .line 99
    const-string v0, "for_zoom_point"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->FOR_ZOOM_POINT:Z

    .line 106
    const-string v0, "com.htc.android.htcsetupwizard"

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->OOBE_PACKAGE_NAME:Ljava/lang/String;

    .line 107
    const-string v0, "com.android.settings.LocalePickerSetupWizard"

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->OOBE_LANGUGE_SETUP:Ljava/lang/String;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mExcludeFromRecent:Z

    .line 135
    iput-object p1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 136
    iput-object p2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mContext:Landroid/content/Context;

    .line 137
    return-void
.end method

.method private checkContinuousTrans()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    long-to-float v1, v2

    .line 282
    .local v1, time:F
    iget v2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mLastAnimMillis:F

    sub-float v0, v1, v2

    .line 284
    .local v0, delta:F
    iget v2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mLastAnimMillis:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/server/wm/HtcGlAnimManager;->DELTA_CONTINUOUS_ANIM:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 285
    iput-boolean v4, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsMeetContinuousTrans:Z

    .line 286
    iput-boolean v4, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOverrideAppTranAnim:Z

    .line 294
    :cond_0
    iput v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mLastAnimMillis:F

    .line 295
    return-void
.end method

.method private debugApiIsWorking(Lcom/htc/view/animation/HtcBaseGlTransAnim;Lcom/htc/view/animation/HtcBaseGlTransAnim;)V
    .locals 9
    .parameter "animEnter"
    .parameter "animExit"

    .prologue
    .line 1106
    const-string v6, "HtcGlAnimation"

    const-string v7, "==== debug API ===="

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    move-object v0, p1

    .line 1110
    .local v0, animObj:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "anim name= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transit type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getTransitType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1170
    :goto_0
    const-string v6, "HtcGlAnimation"

    const-string v7, "==== debug API end ===="

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return-void

    :pswitch_0
    move-object v1, v0

    .line 1119
    check-cast v1, Lcom/htc/view/animation/HtcGlZoomTransAnim;

    .line 1121
    .local v1, animObj2:Lcom/htc/view/animation/HtcGlZoomTransAnim;
    :try_start_0
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "point="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getZoomPoint()Landroid/graphics/Point;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1123
    :catch_0
    move-exception v5

    .line 1124
    .local v5, e:Ljava/lang/NullPointerException;
    const-string v6, "HtcGlAnimation"

    const-string v7, "null pointer exception"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #animObj2:Lcom/htc/view/animation/HtcGlZoomTransAnim;
    .end local v5           #e:Ljava/lang/NullPointerException;
    :pswitch_1
    move-object v2, v0

    .line 1129
    check-cast v2, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;

    .line 1131
    .local v2, animObj3:Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;
    :try_start_1
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "header="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "footer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1137
    :catch_1
    move-exception v5

    .line 1138
    .restart local v5       #e:Ljava/lang/NullPointerException;
    const-string v6, "HtcGlAnimation"

    const-string v7, "null pointer exception"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2           #animObj3:Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;
    .end local v5           #e:Ljava/lang/NullPointerException;
    :pswitch_2
    move-object v3, v0

    .line 1143
    check-cast v3, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;

    .line 1145
    .local v3, animObj4:Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;
    :try_start_2
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "header="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "footer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1151
    :catch_2
    move-exception v5

    .line 1152
    .restart local v5       #e:Ljava/lang/NullPointerException;
    const-string v6, "HtcGlAnimation"

    const-string v7, "null pointer exception"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3           #animObj4:Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;
    .end local v5           #e:Ljava/lang/NullPointerException;
    :pswitch_3
    move-object v4, v0

    .line 1157
    check-cast v4, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;

    .line 1159
    .local v4, animObj5:Lcom/htc/view/animation/HtcGlContentZoomTransAnim;
    :try_start_3
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "header="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1163
    :catch_3
    move-exception v5

    .line 1164
    .restart local v5       #e:Ljava/lang/NullPointerException;
    const-string v6, "HtcGlAnimation"

    const-string v7, "null pointer exception"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1116
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private debugTransitType(I)V
    .locals 2
    .parameter "transit"

    .prologue
    .line 1174
    sparse-switch p1, :sswitch_data_0

    .line 1200
    :goto_0
    return-void

    .line 1176
    :sswitch_0
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_ACTIVITY_OPEN"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1180
    :sswitch_1
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_TASK_OPEN"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1184
    :sswitch_2
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_TASK_TO_FRONT"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1188
    :sswitch_3
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_ACTIVITY_CLOSE"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1192
    :sswitch_4
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_TASK_CLOSE"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1196
    :sswitch_5
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_TASK_TO_BACK"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1174
    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_1
        0x100a -> :sswitch_2
        0x2007 -> :sswitch_3
        0x2009 -> :sswitch_4
        0x200b -> :sswitch_5
    .end sparse-switch
.end method

.method private doRecentAppTransition(IZ)V
    .locals 9
    .parameter "type"
    .parameter "really"

    .prologue
    const/4 v7, 0x1

    .line 1005
    iput-boolean v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRecentAppInvolve:Z

    .line 1006
    iput-boolean v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOverrideAppTranAnim:Z

    .line 1008
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v8, "recentapp_zoom"

    invoke-virtual {v7, v8}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v7

    check-cast v7, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    iput-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .line 1009
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v8, "recentapp_zoom"

    invoke-virtual {v7, v8}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v7

    check-cast v7, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    iput-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .line 1011
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v7, p1}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setRecentAppAnimType(I)V

    .line 1012
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v7, p1}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setRecentAppAnimType(I)V

    .line 1014
    if-nez p1, :cond_1

    .line 1016
    if-eqz p2, :cond_3

    .line 1018
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v5

    .line 1021
    .local v5, rotation:I
    if-eqz v5, :cond_0

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    .line 1023
    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x4050004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 1026
    .local v2, left:I
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x4050005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 1029
    .local v6, top:I
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x4050006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 1032
    .local v4, right:I
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x4050007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v0, v7

    .line 1051
    .local v0, bottom:I
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v6, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v4           #right:I
    .end local v5           #rotation:I
    .end local v6           #top:I
    .local v3, rect:Landroid/graphics/Rect;
    :goto_1
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v7, v3}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setLayerArea(Landroid/graphics/Rect;)V

    .line 1065
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    const-string v8, "Close"

    invoke-virtual {v7, v8}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setOpenOrClose(Ljava/lang/String;)V

    .line 1066
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v7, v3}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setLayerArea(Landroid/graphics/Rect;)V

    .line 1067
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    const-string v8, "Close"

    invoke-virtual {v7, v8}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setOpenOrClose(Ljava/lang/String;)V

    .line 1073
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_1
    return-void

    .line 1037
    .restart local v5       #rotation:I
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x4050008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 1040
    .restart local v2       #left:I
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x4050009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 1043
    .restart local v6       #top:I
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x405000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 1046
    .restart local v4       #right:I
    iget-object v7, p0, Lcom/android/server/wm/HtcGlAnimManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x405000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    float-to-int v0, v7

    .restart local v0       #bottom:I
    goto :goto_0

    .line 1053
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v4           #right:I
    .end local v5           #rotation:I
    .end local v6           #top:I
    :catch_0
    move-exception v1

    .line 1054
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v7, "HtcGlAnimation"

    const-string v8, "Unhandled exception when load rect..."

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1055
    const/4 v3, 0x0

    .line 1056
    .restart local v3       #rect:Landroid/graphics/Rect;
    goto :goto_1

    .line 1058
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #rect:Landroid/graphics/Rect;
    goto :goto_1
.end method

.method private handleCentralZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 8
    .parameter "wtoken"
    .parameter "baseAnim"
    .parameter "isEnter"

    .prologue
    const/4 v7, 0x0

    .line 806
    move-object v0, p2

    check-cast v0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;

    .line 808
    .local v0, centralAnim:Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 811
    .local v4, mainWin:Lcom/android/server/wm/WindowState;
    if-nez v4, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_2

    .line 820
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 825
    :cond_2
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_3

    .line 826
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setFooterArea(Landroid/graphics/Rect;)V

    .line 831
    :cond_3
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_0

    .line 832
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 834
    .local v5, winFrame:Landroid/graphics/Rect;
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v3

    .line 835
    .local v3, header:Landroid/graphics/Rect;
    if-nez v3, :cond_4

    .line 836
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #header:Landroid/graphics/Rect;
    invoke-direct {v3, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 839
    .restart local v3       #header:Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v2

    .line 840
    .local v2, footer:Landroid/graphics/Rect;
    if-nez v2, :cond_5

    .line 841
    new-instance v2, Landroid/graphics/Rect;

    .end local v2           #footer:Landroid/graphics/Rect;
    invoke-direct {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 844
    .restart local v2       #footer:Landroid/graphics/Rect;
    :cond_5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 846
    .local v1, content:Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_8

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_8

    .line 851
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 852
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 853
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 854
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 874
    :cond_6
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 875
    move-object v1, v5

    .line 876
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v6}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 877
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v6}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setFooterArea(Landroid/graphics/Rect;)V

    .line 879
    :cond_7
    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setContentArea(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 856
    :cond_8
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-ne v6, v7, :cond_6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v7, :cond_6

    .line 858
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-lt v6, v7, :cond_9

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_9

    .line 860
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 861
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 862
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 863
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 864
    :cond_9
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_6

    .line 866
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 867
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 868
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 869
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private handleContentZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 7
    .parameter "wtoken"
    .parameter "baseAnim"
    .parameter "isEnter"

    .prologue
    const/4 v6, 0x0

    .line 887
    move-object v1, p2

    check-cast v1, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;

    .line 889
    .local v1, contentAnim:Lcom/htc/view/animation/HtcGlContentZoomTransAnim;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 892
    .local v3, mainWin:Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_1

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_2

    .line 901
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 906
    :cond_2
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_0

    .line 907
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 909
    .local v4, winFrame:Landroid/graphics/Rect;
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v2

    .line 910
    .local v2, header:Landroid/graphics/Rect;
    if-nez v2, :cond_3

    .line 911
    new-instance v2, Landroid/graphics/Rect;

    .end local v2           #header:Landroid/graphics/Rect;
    invoke-direct {v2, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 914
    .restart local v2       #header:Landroid/graphics/Rect;
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 916
    .local v0, content:Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    if-lt v5, v6, :cond_6

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    if-gt v5, v6, :cond_6

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v5, v6, :cond_6

    .line 919
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 920
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 921
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 922
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 934
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 935
    move-object v0, v4

    .line 936
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v5}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 938
    :cond_5
    invoke-virtual {v1, v0}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->setContentArea(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 924
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v5, v6, :cond_4

    .line 926
    iget-boolean v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->FOR_CONTENTZOOM_AREA:Z

    if-eqz v5, :cond_4

    .line 927
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 928
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 929
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 930
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private handleCubicRotateTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 8
    .parameter "wtoken"
    .parameter "baseAnim"
    .parameter "isEnter"

    .prologue
    const/4 v7, 0x0

    .line 725
    move-object v1, p2

    check-cast v1, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;

    .line 727
    .local v1, cubicAnim:Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 730
    .local v4, mainWin:Lcom/android/server/wm/WindowState;
    if-nez v4, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_2

    .line 739
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 744
    :cond_2
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_3

    .line 745
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setFooterArea(Landroid/graphics/Rect;)V

    .line 750
    :cond_3
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_0

    .line 751
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 753
    .local v5, winFrame:Landroid/graphics/Rect;
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v3

    .line 754
    .local v3, header:Landroid/graphics/Rect;
    if-nez v3, :cond_4

    .line 755
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #header:Landroid/graphics/Rect;
    invoke-direct {v3, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 758
    .restart local v3       #header:Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v2

    .line 759
    .local v2, footer:Landroid/graphics/Rect;
    if-nez v2, :cond_5

    .line 760
    new-instance v2, Landroid/graphics/Rect;

    .end local v2           #footer:Landroid/graphics/Rect;
    invoke-direct {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 763
    .restart local v2       #footer:Landroid/graphics/Rect;
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 765
    .local v0, content:Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_8

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_8

    .line 770
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 771
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 772
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 773
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 793
    :cond_6
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 794
    move-object v0, v5

    .line 795
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v6}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 796
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v6}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setFooterArea(Landroid/graphics/Rect;)V

    .line 798
    :cond_7
    invoke-virtual {v1, v0}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setContentArea(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 775
    :cond_8
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-ne v6, v7, :cond_6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v7, :cond_6

    .line 777
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-lt v6, v7, :cond_9

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_9

    .line 779
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 780
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 781
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 782
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 783
    :cond_9
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_6

    .line 785
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 786
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 787
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 788
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private handleZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 6
    .parameter "wtoken"
    .parameter "baseAnim"
    .parameter "isEnter"

    .prologue
    const/4 v0, 0x1

    .line 675
    sget-boolean v4, Lcom/android/server/wm/HtcGlAnimManager;->SKIP_OOBE_DO_ZOOM_ANIM:Z

    if-eqz v4, :cond_4

    .line 676
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 678
    .local v1, mainWin:Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_3

    .line 679
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.android.htcsetupwizard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.settings.LocalePickerSetupWizard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getTransitType()I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 685
    .local v0, isSkip:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 689
    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setDuration(J)V

    .line 721
    .end local v0           #isSkip:Z
    .end local v1           #mainWin:Lcom/android/server/wm/WindowState;
    :cond_1
    :goto_1
    return-void

    .line 679
    .restart local v1       #mainWin:Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 683
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #isSkip:Z
    goto :goto_0

    .end local v0           #isSkip:Z
    .end local v1           #mainWin:Lcom/android/server/wm/WindowState;
    :cond_4
    move-object v2, p2

    .line 695
    check-cast v2, Lcom/htc/view/animation/HtcGlZoomTransAnim;

    .line 698
    .local v2, zoomAnim:Lcom/htc/view/animation/HtcGlZoomTransAnim;
    iget-boolean v4, p0, Lcom/android/server/wm/HtcGlAnimManager;->FOR_ZOOM_POINT:Z

    if-eqz v4, :cond_7

    .line 699
    invoke-virtual {v2}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getZoomPoint()Landroid/graphics/Point;

    move-result-object v3

    .line 700
    .local v3, zoomPoint:Landroid/graphics/Point;
    if-nez v3, :cond_1

    .line 702
    iget-boolean v4, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOpen:Z

    if-eqz v4, :cond_6

    .line 703
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mTouchPoint:Landroid/graphics/Point;

    .line 704
    if-nez v3, :cond_5

    .line 705
    new-instance v3, Landroid/graphics/Point;

    .end local v3           #zoomPoint:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 707
    .restart local v3       #zoomPoint:Landroid/graphics/Point;
    :cond_5
    invoke-virtual {v2, v3}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setZoomPoint(Landroid/graphics/Point;)V

    goto :goto_1

    .line 709
    :cond_6
    new-instance v3, Landroid/graphics/Point;

    .end local v3           #zoomPoint:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 710
    .restart local v3       #zoomPoint:Landroid/graphics/Point;
    invoke-virtual {v2, v3}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setZoomPoint(Landroid/graphics/Point;)V

    goto :goto_1

    .line 718
    .end local v3           #zoomPoint:Landroid/graphics/Point;
    :cond_7
    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 719
    .restart local v3       #zoomPoint:Landroid/graphics/Point;
    invoke-virtual {v2, v3}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setZoomPoint(Landroid/graphics/Point;)V

    goto :goto_1
.end method


# virtual methods
.method public applyAnimationLockedInner(Lcom/android/server/wm/AppWindowToken;Landroid/view/animation/Animation;Z)Z
    .locals 7
    .parameter "wtoken"
    .parameter "a"
    .parameter "isEnter"

    .prologue
    const/4 v6, 0x0

    .line 418
    instance-of v5, p2, Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v5, :cond_1

    :cond_0
    move-object v0, p2

    .line 464
    check-cast v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 465
    .local v0, baseAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    iget-boolean v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOpen:Z

    invoke-virtual {v0, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOpenOrClose(Z)V

    .line 466
    invoke-virtual {v0, p3}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setEnterOrExit(Z)V

    .line 467
    iget-object v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOrientation(I)V

    .line 468
    iget-object v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getStatusBarRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setStatusBarRect(Landroid/graphics/Rect;)V

    .line 472
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 490
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/server/wm/AppWindowToken;->setHtcGlAnimation(Lcom/htc/view/animation/HtcBaseGlTransAnim;)V

    .line 491
    const/4 v5, 0x1

    .end local v0           #baseAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    :goto_1
    return v5

    .line 425
    :cond_1
    instance-of v5, p2, Landroid/view/animation/AnimationSet;

    if-eqz v5, :cond_5

    move-object v5, p2

    .line 428
    check-cast v5, Landroid/view/animation/AnimationSet;

    invoke-virtual {v5}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 430
    .local v2, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 432
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 437
    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_3

    .line 438
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    .line 439
    .local v1, child:Landroid/view/animation/Animation;
    instance-of v5, v1, Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v5, :cond_4

    .line 440
    move-object p2, v1

    .line 444
    .end local v1           #child:Landroid/view/animation/Animation;
    :cond_3
    instance-of v5, p2, Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-nez v5, :cond_0

    move v5, v6

    .line 453
    goto :goto_1

    .line 437
    .restart local v1       #child:Landroid/view/animation/Animation;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v1           #child:Landroid/view/animation/Animation;
    .end local v2           #children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_5
    move v5, v6

    .line 460
    goto :goto_1

    .line 474
    .restart local v0       #baseAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    :pswitch_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/wm/HtcGlAnimManager;->handleZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V

    goto :goto_0

    .line 478
    :pswitch_1
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/wm/HtcGlAnimManager;->handleCubicRotateTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V

    goto :goto_0

    .line 482
    :pswitch_2
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/wm/HtcGlAnimManager;->handleCentralZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V

    goto :goto_0

    .line 486
    :pswitch_3
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/wm/HtcGlAnimManager;->handleContentZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V

    goto :goto_0

    .line 472
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public applyOverrideAppTranAnimLocked(Z)Landroid/view/animation/Animation;
    .locals 3
    .parameter "isEnter"

    .prologue
    const-wide/16 v1, 0x0

    .line 307
    iget-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsMeetContinuousTrans:Z

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;

    invoke-direct {v0, p1}, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;-><init>(Z)V

    .line 403
    :goto_0
    return-object v0

    .line 315
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRecentAppInvolve:Z

    if-eqz v0, :cond_1

    .line 320
    if-eqz p1, :cond_3

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->getRecentAppAnimType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 370
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/android/server/wm/HtcGlAnimManager;->CUSTOMIZE_FOR_ROSIE:Z

    if-eqz v0, :cond_8

    .line 372
    iget-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsHomeKeyPressed:Z

    if-eqz v0, :cond_6

    .line 377
    if-eqz p1, :cond_5

    .line 378
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_0

    .line 325
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->getLayerArea()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    goto :goto_0

    .line 330
    :cond_2
    new-instance v0, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;

    invoke-direct {v0, p1}, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;-><init>(Z)V

    goto :goto_0

    .line 337
    :pswitch_1
    new-instance v0, Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;

    invoke-direct {v0, p1}, Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;-><init>(Z)V

    goto :goto_0

    .line 340
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setDuration(J)V

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    goto :goto_0

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->getRecentAppAnimType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 349
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->getLayerArea()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    goto :goto_0

    .line 354
    :cond_4
    new-instance v0, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;

    invoke-direct {v0, p1}, Lcom/android/server/wm/HtcGlAnimManager$FadeInOutAnimation;-><init>(Z)V

    goto :goto_0

    .line 361
    :pswitch_4
    new-instance v0, Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;

    invoke-direct {v0, p1}, Lcom/android/server/wm/HtcGlAnimManager$FadeOutAnimation;-><init>(Z)V

    goto :goto_0

    .line 364
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0, v1, v2}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setDuration(J)V

    .line 365
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    goto :goto_0

    .line 380
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_0

    .line 384
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRosieInvolve:Z

    if-eqz v0, :cond_8

    .line 389
    if-eqz p1, :cond_7

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRosieAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_0

    .line 392
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRosieAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_0

    .line 400
    :cond_8
    if-eqz p1, :cond_9

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mOverrideAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_0

    .line 403
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mOverrideAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 346
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public cleanAnimParamsLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 498
    iput-boolean v2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsMeetContinuousTrans:Z

    .line 500
    iput-boolean v2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsHomeKeyPressed:Z

    .line 501
    iput-object v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 502
    iput-object v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 504
    iput-boolean v2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRosieInvolve:Z

    .line 505
    iput-object v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRosieAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 506
    iput-object v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRosieAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 508
    iput-boolean v2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRecentAppInvolve:Z

    .line 509
    iput-object v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .line 510
    iput-object v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mExcludeFromRecent:Z

    .line 513
    iput-boolean v2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOverrideAppTranAnim:Z

    .line 514
    iput-object v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mOverrideAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 515
    iput-object v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mOverrideAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 517
    iput-object v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mTouchPoint:Landroid/graphics/Point;

    .line 521
    return-void
.end method

.method public clearCurrentAnimationLocked()V
    .locals 4

    .prologue
    .line 651
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsClearingCurrentAnim:Z

    .line 652
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 662
    .local v0, N:I
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 663
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v1, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 664
    .local v1, appToken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_0

    .line 665
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->clearHtcGlAnimation()V

    .line 662
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 668
    .end local v1           #appToken:Lcom/android/server/wm/AppWindowToken;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 669
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsClearingCurrentAnim:Z

    .line 670
    return-void
.end method

.method public deinitAnimationLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 4
    .parameter "appToken"

    .prologue
    .line 625
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v3, :cond_3

    .line 626
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 627
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_3

    .line 628
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 630
    .local v2, w:Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v3, p1, :cond_2

    .line 631
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_0

    .line 632
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->destroy3DAnimation()V

    .line 639
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsClearingCurrentAnim:Z

    if-nez v3, :cond_1

    .line 640
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 642
    :cond_1
    const/high16 v3, -0x4080

    iput v3, v2, Lcom/android/server/wm/WindowState;->mLastAnimProgress:F

    .line 627
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 646
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_3
    return-void
.end method

.method doHack(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, openingApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, closingApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v5, 0x0

    .line 947
    sget-boolean v4, Lcom/android/server/wm/HtcGlAnimManager;->CUSTOMIZE_FOR_ROSIE:Z

    if-eqz v4, :cond_6

    .line 950
    const/4 v2, 0x0

    .line 953
    .local v2, tokenName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 954
    .local v0, NN:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 955
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 956
    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eqz v4, :cond_0

    .line 957
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 959
    :cond_0
    if-eqz v2, :cond_2

    const-string v4, "com.htc.launcher"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 960
    invoke-virtual {p0}, Lcom/android/server/wm/HtcGlAnimManager;->doZoomTransition()V

    .line 998
    .end local v0           #NN:I
    .end local v1           #i:I
    .end local v2           #tokenName:Ljava/lang/String;
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_1
    :goto_1
    return-void

    .line 954
    .restart local v0       #NN:I
    .restart local v1       #i:I
    .restart local v2       #tokenName:Ljava/lang/String;
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 965
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 966
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 967
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 968
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eqz v4, :cond_4

    .line 969
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 971
    :cond_4
    if-eqz v2, :cond_5

    const-string v4, "com.htc.launcher"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 972
    invoke-virtual {p0}, Lcom/android/server/wm/HtcGlAnimManager;->doZoomTransition()V

    goto :goto_1

    .line 966
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 978
    .end local v0           #NN:I
    .end local v1           #i:I
    .end local v2           #tokenName:Ljava/lang/String;
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_6
    sget-boolean v4, Lcom/android/server/wm/HtcGlAnimManager;->RECENTAPP_WITH_STARTING_WINDOW:Z

    if-eqz v4, :cond_1

    .line 982
    const/4 v2, 0x0

    .line 985
    .restart local v2       #tokenName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 986
    .restart local v0       #NN:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v0, :cond_1

    .line 987
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 988
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eqz v4, :cond_7

    .line 989
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 991
    :cond_7
    if-eqz v2, :cond_9

    const-string v4, "com.android.systemui/.recent.RecentAppFxActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 992
    iget-boolean v4, p0, Lcom/android/server/wm/HtcGlAnimManager;->mExcludeFromRecent:Z

    if-nez v4, :cond_8

    const/4 v4, 0x1

    :goto_4
    invoke-direct {p0, v5, v4}, Lcom/android/server/wm/HtcGlAnimManager;->doRecentAppTransition(IZ)V

    goto :goto_1

    :cond_8
    move v4, v5

    goto :goto_4

    .line 986
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method doZoomTransition()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1085
    iput-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRosieInvolve:Z

    .line 1086
    iput-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOverrideAppTranAnim:Z

    .line 1090
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v1, "zoom"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRosieAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 1093
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v1, "zoom"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRosieAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 1095
    return-void
.end method

.method public includeWindowForAnimationLocked(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;III)V
    .locals 8
    .parameter "w"
    .parameter "attrs"
    .parameter "attrFlags"
    .parameter "innerDw"
    .parameter "innerDh"

    .prologue
    const/4 v7, 0x1

    .line 525
    iget-object v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v5, :cond_1

    .line 536
    iget-object v5, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    sget-boolean v5, Lcom/android/server/wm/HtcGlAnimManager;->HIDE_STATUS_BAR:Z

    if-eqz v5, :cond_4

    .line 545
    invoke-virtual {p1, p4, p5}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 547
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 548
    .local v2, mainWin:Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_2

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, 0x800

    if-nez v5, :cond_2

    .line 552
    const/4 v0, 0x0

    .line 563
    .end local v2           #mainWin:Lcom/android/server/wm/WindowState;
    .local v0, isHideStatusBarArea:Z
    :goto_0
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {v5, v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setIsHideStatusBarArea(Z)V

    .line 566
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v5, v7, :cond_0

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 568
    :cond_0
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v7, :cond_5

    .line 570
    const/4 v1, 0x1

    .line 580
    .local v1, isMainWindow:Z
    :goto_1
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {v5, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setIsMainWindow(Z)V

    .line 584
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->encodeGlobalParamsToArray()[Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, outputGParams:[Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->encodeSpecificParamsToArray()[Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, outputSParams:[Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v3, v4}, Landroid/view/Surface;->set3DAnimationAttribute([Ljava/lang/String;[Ljava/lang/String;)V

    .line 601
    const/high16 v5, -0x4080

    iput v5, p1, Lcom/android/server/wm/WindowState;->mLastAnimProgress:F

    .line 603
    .end local v0           #isHideStatusBarArea:Z
    .end local v1           #isMainWindow:Z
    .end local v3           #outputGParams:[Ljava/lang/String;
    .end local v4           #outputSParams:[Ljava/lang/String;
    :cond_1
    return-void

    .line 554
    .restart local v2       #mainWin:Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v0, 0x1

    .restart local v0       #isHideStatusBarArea:Z
    goto :goto_0

    .line 557
    .end local v0           #isHideStatusBarArea:Z
    .end local v2           #mainWin:Lcom/android/server/wm/WindowState;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #isHideStatusBarArea:Z
    goto :goto_0

    .line 561
    .end local v0           #isHideStatusBarArea:Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #isHideStatusBarArea:Z
    goto :goto_0

    .line 572
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #isMainWindow:Z
    goto :goto_1

    .line 578
    .end local v1           #isMainWindow:Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #isMainWindow:Z
    goto :goto_1
.end method

.method public isOverrideAnimDuration()Z
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimDuration:I

    if-ltz v0, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverrideAnimRate()Z
    .locals 2

    .prologue
    const/16 v1, 0x3c

    .line 166
    iget v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimRate:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimRate:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimRate:I

    if-gt v0, v1, :cond_0

    .line 169
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public monitorTransAnim(Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 0
    .parameter "targetAnim"
    .parameter "isStart"

    .prologue
    .line 1100
    invoke-virtual {p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->monitorTransAnim(Z)V

    .line 1101
    return-void
.end method

.method public overrideHtcGlAppTransAnimLocked(Lcom/htc/view/animation/HtcBaseGlTransAnim;Lcom/htc/view/animation/HtcBaseGlTransAnim;)V
    .locals 3
    .parameter "animEnter"
    .parameter "animExit"

    .prologue
    const/4 v2, 0x1

    .line 203
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOverrideAppTranAnim:Z

    .line 213
    if-ne p1, p2, :cond_2

    .line 217
    invoke-virtual {p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v1, "swipe_cubic"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object p2

    move-object v0, p2

    .line 220
    check-cast v0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;

    move-object v1, p1

    check-cast v1, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;

    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->getDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->setDirection(I)V

    .line 225
    :cond_2
    invoke-virtual {p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    move-object v0, p1

    .line 227
    check-cast v0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    move-object v0, p2

    .line 228
    check-cast v0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .line 229
    iput-boolean v2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsRecentAppInvolve:Z

    .line 236
    :goto_1
    sget-boolean v0, Lcom/android/server/wm/HtcGlAnimManager;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/HtcGlAnimManager;->debugApiIsWorking(Lcom/htc/view/animation/HtcBaseGlTransAnim;Lcom/htc/view/animation/HtcBaseGlTransAnim;)V

    goto :goto_0

    .line 232
    :cond_3
    iput-object p1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mOverrideAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 233
    iput-object p2, p0, Lcom/android/server/wm/HtcGlAnimManager;->mOverrideAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_1
.end method

.method public prepareRecentAppTransitionAnimation(Z)V
    .locals 0
    .parameter "isExcludeFromRecent"

    .prologue
    .line 1077
    iput-boolean p1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mExcludeFromRecent:Z

    .line 1078
    return-void
.end method

.method public progressAnimationLocked()V
    .locals 4

    .prologue
    .line 608
    iget-object v3, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 609
    .local v2, w:Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_0

    .line 610
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {v3}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getCurrentProgress()F

    move-result v1

    .line 611
    .local v1, progress:F
    iget v3, v2, Lcom/android/server/wm/WindowState;->mLastAnimProgress:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_0

    .line 617
    iput v1, v2, Lcom/android/server/wm/WindowState;->mLastAnimProgress:F

    .line 618
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v1}, Landroid/view/Surface;->step3DAnimation(F)V

    goto :goto_0

    .line 622
    .end local v1           #progress:F
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method sendActionUpPositionForAnimationLocked(Lcom/android/server/wm/WindowState;FF)V
    .locals 3
    .parameter "win"
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 179
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mTouchPoint:Landroid/graphics/Point;

    if-nez v0, :cond_1

    .line 188
    new-instance v0, Landroid/graphics/Point;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mTouchPoint:Landroid/graphics/Point;

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mTouchPoint:Landroid/graphics/Point;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 142
    iput p1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimDuration:I

    .line 147
    return-void
.end method

.method public setAnimationRate(I)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 150
    iput p1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mSetAppTranAnimRate:I

    .line 155
    return-void
.end method

.method public setTransitLocked(I)V
    .locals 1
    .parameter "transit"

    .prologue
    .line 260
    sparse-switch p1, :sswitch_data_0

    .line 277
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/HtcGlAnimManager;->checkContinuousTrans()V

    .line 278
    return-void

    .line 264
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOpen:Z

    goto :goto_0

    .line 269
    :sswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOpen:Z

    goto :goto_0

    .line 260
    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_0
        0x100a -> :sswitch_0
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_1
        0x200b -> :sswitch_1
    .end sparse-switch
.end method

.method public startHomeByHomeKey()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 244
    sget-boolean v0, Lcom/android/server/wm/HtcGlAnimManager;->CUSTOMIZE_FOR_ROSIE:Z

    if-eqz v0, :cond_0

    .line 248
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsHomeKeyPressed:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/server/wm/HtcGlAnimManager;->mIsOverrideAppTranAnim:Z

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v1, "zoom"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOpenOrClose(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v1, "zoom"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 255
    iget-object v0, p0, Lcom/android/server/wm/HtcGlAnimManager;->mHomeKeyAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOpenOrClose(Ljava/lang/String;)V

    .line 257
    :cond_0
    return-void
.end method
