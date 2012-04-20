.class Lcom/android/camera/OnScreenPreference$5;
.super Ljava/lang/Object;
.source "OnScreenPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/OnScreenPreference;->show_reset_dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/OnScreenPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/OnScreenPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1150
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    .line 1153
    .local v0, settings:Lcom/android/camera/CameraSettings;
    if-eqz v0, :cond_0

    .line 1159
    sput-boolean v3, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    .line 1160
    invoke-static {v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->setDefault(Z)V

    .line 1167
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isWideScreen()Z

    move-result v2

    #setter for: Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z
    invoke-static {v1, v2}, Lcom/android/camera/OnScreenPreference;->access$402(Lcom/android/camera/OnScreenPreference;Z)Z

    .line 1169
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z
    invoke-static {v1, v3}, Lcom/android/camera/OnScreenPreference;->access$502(Lcom/android/camera/OnScreenPreference;Z)Z

    .line 1170
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z
    invoke-static {v1, v3}, Lcom/android/camera/OnScreenPreference;->access$602(Lcom/android/camera/OnScreenPreference;Z)Z

    .line 1171
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z
    invoke-static {v1, v3}, Lcom/android/camera/OnScreenPreference;->access$702(Lcom/android/camera/OnScreenPreference;Z)Z

    .line 1172
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z
    invoke-static {v1, v3}, Lcom/android/camera/OnScreenPreference;->access$802(Lcom/android/camera/OnScreenPreference;Z)Z

    .line 1173
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z
    invoke-static {v1, v4}, Lcom/android/camera/OnScreenPreference;->access$902(Lcom/android/camera/OnScreenPreference;Z)Z

    .line 1174
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$1000(Lcom/android/camera/OnScreenPreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1175
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$1000(Lcom/android/camera/OnScreenPreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z
    invoke-static {v2}, Lcom/android/camera/OnScreenPreference;->access$900(Lcom/android/camera/OnScreenPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1177
    :cond_2
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bShutterSound:Z
    invoke-static {v1, v3}, Lcom/android/camera/OnScreenPreference;->access$1102(Lcom/android/camera/OnScreenPreference;Z)Z

    .line 1179
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bVideoStabilization:Z
    invoke-static {v1, v4}, Lcom/android/camera/OnScreenPreference;->access$1202(Lcom/android/camera/OnScreenPreference;Z)Z

    .line 1182
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z
    invoke-static {v1, v4}, Lcom/android/camera/OnScreenPreference;->access$1302(Lcom/android/camera/OnScreenPreference;Z)Z

    .line 1183
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #setter for: Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z
    invoke-static {v1, v3}, Lcom/android/camera/OnScreenPreference;->access$1402(Lcom/android/camera/OnScreenPreference;Z)Z

    .line 1185
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    const-string v2, "no_review"

    #setter for: Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/OnScreenPreference;->access$1502(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;

    .line 1188
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHWShareButton()Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1189
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    const-string v2, "3s"

    #setter for: Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/OnScreenPreference;->access$1502(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;

    .line 1193
    :cond_3
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    const-string v2, "mpo"

    #setter for: Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/OnScreenPreference;->access$1602(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;

    .line 1196
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    const-string v2, "3gpp"

    #setter for: Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/OnScreenPreference;->access$1702(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;

    .line 1198
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v1

    if-ne v1, v3, :cond_4

    .line 1199
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->restartCamera()V

    .line 1203
    :cond_4
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/HTCCamera;->enableGeoTagging(Z)V

    .line 1206
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_record_with_audio"

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 1207
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->resetIndicatorLayout()V

    .line 1214
    iget-object v1, v0, Lcom/android/camera/CameraSettings;->isContinuousBurstEnabled:Lcom/android/camera/property/Property;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    .line 1217
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v1}, Lcom/android/camera/SelfTimerValue;->isOn()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1219
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    const-string v2, "pref_camera_self_timer"

    const-string v3, "none"

    invoke-static {v1, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1221
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1222
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    sget-object v2, Lcom/android/camera/SelfTimerValue;->Countdown_0s:Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->setSelfTimerInterval(Lcom/android/camera/SelfTimerValue;)V

    .line 1226
    :cond_5
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$1800(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/CameraThread;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1227
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference$5;->this$0:Lcom/android/camera/OnScreenPreference;

    #getter for: Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v1}, Lcom/android/camera/OnScreenPreference;->access$1800(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->checkStorageState()V

    .line 1231
    :cond_6
    const-string v1, "[ANALYTIC_com.android.camera]"

    const-string v2, "[reset_default]complete"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
