.class Lcom/android/server/WifiService$13;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 2126
    iput-object p1, p0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2129
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2131
    .local v1, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wifi_idle_ms"

    const-wide/32 v15, 0xdbba0

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 2134
    .local v2, idleMillis:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "stay_on_while_plugged_in"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 2137
    .local v7, stayAwakeConditions:I
    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->actionScreenOn()V
    invoke-static {v13}, Lcom/android/server/WifiService;->access$4000(Lcom/android/server/WifiService;)V

    .line 2256
    :cond_0
    :goto_0
    return-void

    .line 2139
    :cond_1
    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->actionScreenOff()V
    invoke-static {v13}, Lcom/android/server/WifiService;->access$4100(Lcom/android/server/WifiService;)V

    goto :goto_0

    .line 2141
    :cond_2
    const-string v13, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    const/4 v14, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v13, v14}, Lcom/android/server/WifiService;->access$4200(Lcom/android/server/WifiService;Z)V

    goto :goto_0

    .line 2144
    :cond_3
    const-string v13, "com.android.server.WifiManager.action.UPDATE_WIFI_STATE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2145
    const-string v13, "WifiService"

    const-string v14, "Got ACTION_UPDATE_WIFI_STATE"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v13}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)V

    goto :goto_0

    .line 2148
    :cond_4
    const-string v13, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2156
    const-string v13, "plugged"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2158
    .local v5, pluggedType:I
    const-string v13, "WifiService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_BATTERY_CHANGED pluggedType: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v13}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v14}, Lcom/android/server/WifiService;->access$4300(Lcom/android/server/WifiService;)I

    move-result v14

    #calls: Lcom/android/server/WifiService;->shouldWifiStayAwake(II)Z
    invoke-static {v13, v7, v14}, Lcom/android/server/WifiService;->access$4400(Lcom/android/server/WifiService;II)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->shouldWifiStayAwake(II)Z
    invoke-static {v13, v7, v5}, Lcom/android/server/WifiService;->access$4400(Lcom/android/server/WifiService;II)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    add-long v10, v13, v2

    .line 2164
    .local v10, triggerTime:J
    const-string v13, "WifiService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$4600(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/WifiService;->access$4500(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v13, v14, v10, v11, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2168
    .end local v10           #triggerTime:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v13, v5}, Lcom/android/server/WifiService;->access$4302(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 2170
    .end local v5           #pluggedType:I
    :cond_6
    const-string v13, "android.net.hotspot.ASSOCLIST"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2172
    const-string v13, "com.android.server.HotspotManager.action.DEVICE_IDLE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v13

    const/16 v14, 0xd

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->getWifiApClients()I

    move-result v13

    if-nez v13, :cond_0

    .line 2175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 2179
    const/4 v12, 0x0

    .line 2181
    .local v12, wifiSavedState:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wifi_saved_state"

    invoke-static {v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    .line 2184
    :goto_1
    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 2185
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 2186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wifi_saved_state"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2187
    const-string v13, "WifiService"

    const-string v14, "Restore wifi when hotspot is off"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2191
    .end local v12           #wifiSavedState:I
    :cond_7
    const-string v13, "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2192
    const-string v13, "WifiService"

    const-string v14, "Got ACTION_WIFI_AP_CONN_REQ_TIMEOUT"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V

    goto/16 :goto_0

    .line 2195
    :cond_8
    const-string v13, "android.net.hotspot.connecitonrequest"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2196
    const-string v13, "WifiService"

    const-string v14, "Got HOTSPOT_CONNECTION_REQUEST"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V

    .line 2198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->CancelNotifyWIFIAPreqtimer()V

    .line 2199
    const-string v13, "hotspot_block_mac"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2200
    .local v4, mac:Ljava/lang/String;
    const-string v13, "hotspot_lastest_time_of_request"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 2201
    .local v8, time:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13, v4, v8, v9}, Landroid/net/wifi/WifiStateMachine;->updateConnectionList(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 2204
    .end local v4           #mac:Ljava/lang/String;
    .end local v8           #time:J
    :cond_9
    const-string v13, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2205
    const-string v13, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2207
    .local v6, state:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_0

    .line 2208
    .end local v6           #state:I
    :cond_a
    const-string v13, "com.android.server.HotspotManager.action.DEVICE_IDLE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v13

    const/16 v14, 0xd

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiStateMachine;->getWifiApClients()I

    move-result v13

    if-nez v13, :cond_0

    .line 2213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v13}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 2214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 2218
    const/4 v12, 0x0

    .line 2220
    .restart local v12       #wifiSavedState:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wifi_saved_state"

    invoke-static {v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    .line 2224
    :goto_2
    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 2225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 2226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "wifi_saved_state"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2227
    const-string v13, "WifiService"

    const-string v14, "Restore wifi when hotspot is off"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2252
    .end local v12           #wifiSavedState:I
    :cond_b
    const-string v13, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2253
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    const-string v14, "phoneinECMState"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static {v13, v14}, Lcom/android/server/WifiService;->access$4702(Lcom/android/server/WifiService;Z)Z

    .line 2254
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/WifiService$13;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v13}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 2222
    .restart local v12       #wifiSavedState:I
    :catch_0
    move-exception v13

    goto :goto_2

    .line 2182
    :catch_1
    move-exception v13

    goto/16 :goto_1
.end method
