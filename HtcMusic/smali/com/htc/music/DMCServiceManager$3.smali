.class Lcom/htc/music/DMCServiceManager$3;
.super Landroid/os/Handler;
.source "DMCServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/music/DMCServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2068
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private showError(I)V
    .locals 5
    .parameter "errType"

    .prologue
    const/4 v4, 0x2

    .line 2216
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->isWifiEnabled()Z
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$3300(Lcom/htc/music/DMCServiceManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2223
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->setDMCLine(I)V
    invoke-static {v1, v4}, Lcom/htc/music/DMCServiceManager;->access$1600(Lcom/htc/music/DMCServiceManager;I)V

    .line 2257
    :goto_0
    return-void

    .line 2228
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2230
    :pswitch_0
    const-string v1, "[DMCServiceManager]"

    const-string v2, "DMR disconnected"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    invoke-static {}, Lcom/htc/music/DMCServiceManager;->access$000()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurCookie:I
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$500(Lcom/htc/music/DMCServiceManager;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/htc/music/DMCServiceManager;->access$000()Landroid/app/Activity;

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2238
    .local v0, prefDMR:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2240
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->setDMCLine(I)V
    invoke-static {v1, v4}, Lcom/htc/music/DMCServiceManager;->access$1600(Lcom/htc/music/DMCServiceManager;I)V

    goto :goto_0

    .line 2244
    .end local v0           #prefDMR:Landroid/content/SharedPreferences;
    :pswitch_1
    const-string v1, "[DMCServiceManager]"

    const-string v2, "DMS timeout"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->setDMCLine(I)V
    invoke-static {v1, v4}, Lcom/htc/music/DMCServiceManager;->access$1600(Lcom/htc/music/DMCServiceManager;I)V

    goto :goto_0

    .line 2254
    :pswitch_2
    const-string v1, "[DMCServiceManager]"

    const-string v2, "DMS disconnected"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2072
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 2211
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2074
    :sswitch_1
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->refreshInfo()V

    .line 2075
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->refreshListIndex()V

    .line 2077
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    const-string v4, "com.htc.music.dmcsvcman.metachanged"

    #calls: Lcom/htc/music/DMCServiceManager;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/DMCServiceManager;->access$2800(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2082
    :sswitch_2
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    const-string v4, "com.htc.music.dmcsvcman.metachanged"

    #calls: Lcom/htc/music/DMCServiceManager;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/DMCServiceManager;->access$2800(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2085
    :sswitch_3
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->refreshListIndex()V

    .line 2087
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    const-string v4, "com.htc.music.dmcsvcman.metachanged"

    #calls: Lcom/htc/music/DMCServiceManager;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/DMCServiceManager;->access$2800(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2090
    :sswitch_4
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshTime()V

    goto :goto_0

    .line 2093
    :sswitch_5
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/DMCServiceManager$DMCStatus;->checkState()V

    .line 2094
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-virtual {v3, v6}, Lcom/htc/music/DMCServiceManager;->UIRefreshPlayState(Z)V

    .line 2096
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    const-string v4, "com.htc.music.dmcsvcman.playstatechanged"

    #calls: Lcom/htc/music/DMCServiceManager;->notifyChange(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/music/DMCServiceManager;->access$2800(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2099
    :sswitch_6
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshRS(I)V

    goto :goto_0

    .line 2102
    :sswitch_7
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshRS(I)V

    goto :goto_0

    .line 2105
    :sswitch_8
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshVolume()V

    goto :goto_0

    .line 2108
    :sswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 2109
    .local v1, bdR:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    const-string v4, "arg0"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/music/DMCServiceManager;->access$2902(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 2110
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$2900(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2111
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    const-string v4, ""

    #setter for: Lcom/htc/music/DMCServiceManager;->mCurDMRName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/music/DMCServiceManager;->access$2902(Lcom/htc/music/DMCServiceManager;Ljava/lang/String;)Ljava/lang/String;

    .line 2114
    :cond_1
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->setDMCLine(I)V
    invoke-static {v3, v7}, Lcom/htc/music/DMCServiceManager;->access$1600(Lcom/htc/music/DMCServiceManager;I)V

    goto/16 :goto_0

    .line 2119
    .end local v1           #bdR:Landroid/os/Bundle;
    :sswitch_a
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->DMCPreparePlaying()Z
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$3000(Lcom/htc/music/DMCServiceManager;)Z

    goto/16 :goto_0

    .line 2124
    :sswitch_b
    const-string v3, "[DMCServiceManager]"

    const-string v4, "DMR Request timeout"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    invoke-direct {p0, v7}, Lcom/htc/music/DMCServiceManager$3;->showError(I)V

    goto/16 :goto_0

    .line 2129
    :sswitch_c
    const-string v3, "[DMCServiceManager]"

    const-string v4, "DMR Request waiting..."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2133
    :sswitch_d
    const-string v3, "[DMCServiceManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMR Removed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    invoke-direct {p0, v6}, Lcom/htc/music/DMCServiceManager$3;->showError(I)V

    goto/16 :goto_0

    .line 2138
    :sswitch_e
    const-string v3, "[DMCServiceManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMS Removed - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurSource:I
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$400(Lcom/htc/music/DMCServiceManager;)I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 2145
    :sswitch_f
    const-string v3, "[DMCServiceManager]"

    const-string v4, "Showing details..."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2150
    :sswitch_10
    const-string v3, "[DMCServiceManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CtrlErr - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2153
    .local v0, bdN:Landroid/os/Bundle;
    const-string v3, "arg0"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2155
    .local v2, errMsg:Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    sparse-switch v3, :sswitch_data_1

    .line 2193
    const-string v3, "[DMCServiceManager]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ML Error ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2158
    :sswitch_11
    invoke-direct {p0, v6}, Lcom/htc/music/DMCServiceManager$3;->showError(I)V

    goto/16 :goto_0

    .line 2161
    :sswitch_12
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurSource:I
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$400(Lcom/htc/music/DMCServiceManager;)I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 2167
    :sswitch_13
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mOncePlayed:Z
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$1500(Lcom/htc/music/DMCServiceManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2172
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #calls: Lcom/htc/music/DMCServiceManager;->setDMCLine(I)V
    invoke-static {v3, v7}, Lcom/htc/music/DMCServiceManager;->access$1600(Lcom/htc/music/DMCServiceManager;I)V

    goto/16 :goto_0

    .line 2177
    :sswitch_14
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mOncePlayed:Z
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$1500(Lcom/htc/music/DMCServiceManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2180
    invoke-static {}, Lcom/htc/music/DMCServiceManager;->access$000()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2188
    :sswitch_15
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/music/DMCServiceManager$DMCStatus;->refreshTime()V

    goto/16 :goto_0

    .line 2199
    .end local v0           #bdN:Landroid/os/Bundle;
    .end local v2           #errMsg:Ljava/lang/String;
    :sswitch_16
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/music/DMCServiceManager;->DMRPowerOff(I)V

    goto/16 :goto_0

    .line 2203
    :sswitch_17
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$3100(Lcom/htc/music/DMCServiceManager;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2204
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mVolumeDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/htc/music/DMCServiceManager;->access$3100(Lcom/htc/music/DMCServiceManager;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 2208
    :sswitch_18
    iget-object v3, p0, Lcom/htc/music/DMCServiceManager$3;->this$0:Lcom/htc/music/DMCServiceManager;

    #setter for: Lcom/htc/music/DMCServiceManager;->mVolSetBlocked:Z
    invoke-static {v3, v6}, Lcom/htc/music/DMCServiceManager;->access$3202(Lcom/htc/music/DMCServiceManager;Z)Z

    goto/16 :goto_0

    .line 2072
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0x64 -> :sswitch_10
        0x66 -> :sswitch_16
        0x67 -> :sswitch_d
        0x68 -> :sswitch_b
        0x69 -> :sswitch_c
        0x6a -> :sswitch_e
        0x6b -> :sswitch_f
        0xc9 -> :sswitch_17
        0xca -> :sswitch_18
    .end sparse-switch

    .line 2155
    :sswitch_data_1
    .sparse-switch
        -0x13e -> :sswitch_0
        -0x13a -> :sswitch_15
        -0x134 -> :sswitch_14
        -0x12d -> :sswitch_12
        -0x12c -> :sswitch_11
        0x2 -> :sswitch_11
        0x2c0 -> :sswitch_13
        0x2ca -> :sswitch_13
        0x2cc -> :sswitch_14
    .end sparse-switch
.end method
