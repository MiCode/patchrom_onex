.class public final Lcom/android/camera/component/NewMediaBroadcaster;
.super Lcom/android/camera/component/UIComponent;
.source "NewMediaBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "New Media Broadcaster"


# instance fields
.field private final COUNT:I

.field private counter:I

.field eventArgs:[Lcom/android/camera/MediaEventArgs;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4
    .parameter "cameraActivity"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 136
    const-string v0, "New Media Broadcaster"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    .line 21
    iput v3, p0, Lcom/android/camera/component/NewMediaBroadcaster;->COUNT:I

    .line 22
    iput v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    .line 23
    new-array v0, v3, [Lcom/android/camera/MediaEventArgs;

    iput-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/NewMediaBroadcaster;Lcom/android/camera/MediaEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera/component/NewMediaBroadcaster;->saveEventArgsinBuffer(Lcom/android/camera/MediaEventArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/NewMediaBroadcaster;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/NewMediaBroadcaster;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/NewMediaBroadcaster;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private broadcastIntent(Landroid/net/Uri;Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;)V
    .locals 3
    .parameter "uri"
    .parameter "mediatype"

    .prologue
    .line 165
    const-string v0, ""

    .line 166
    .local v0, action:Ljava/lang/String;
    sget-object v2, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Picture:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    if-ne p2, v2, :cond_0

    .line 167
    const-string v0, "android.hardware.action.NEW_PICTURE"

    .line 170
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, captureIntent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    return-void

    .line 169
    .end local v1           #captureIntent:Landroid/content/Intent;
    :cond_0
    const-string v0, "android.hardware.action.NEW_VIDEO"

    goto :goto_0
.end method

.method private checkAndBroadcastIntent()V
    .locals 4

    .prologue
    .line 146
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    aget-object v2, v2, v1

    iget-object v0, v2, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    .line 150
    .local v0, contenturi:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    invoke-virtual {v2}, Lcom/android/camera/io/FileFormat;->isImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    sget-object v2, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Picture:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/component/NewMediaBroadcaster;->broadcastIntent(Landroid/net/Uri;Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;)V

    .line 155
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 146
    .end local v0           #contenturi:Landroid/net/Uri;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .restart local v0       #contenturi:Landroid/net/Uri;
    :cond_1
    sget-object v2, Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;->Video:Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/component/NewMediaBroadcaster;->broadcastIntent(Landroid/net/Uri;Lcom/android/camera/component/NewMediaBroadcaster$MEDIATYPE;)V

    goto :goto_1

    .line 159
    .end local v0           #contenturi:Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    .line 160
    return-void
.end method

.method private saveEventArgsinBuffer(Lcom/android/camera/MediaEventArgs;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster;->eventArgs:[Lcom/android/camera/MediaEventArgs;

    iget v1, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/camera/component/NewMediaBroadcaster;->counter:I

    aput-object p1, v0, v1

    .line 142
    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 8

    .prologue
    .line 33
    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 36
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    new-instance v3, Lcom/android/camera/component/NewMediaBroadcaster$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/NewMediaBroadcaster$1;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    .line 60
    .local v3, m_MediaSavedFinishedEventHandler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<Lcom/android/camera/MediaEventArgs;>;"
    new-instance v1, Lcom/android/camera/component/NewMediaBroadcaster$2;

    invoke-direct {v1, p0}, Lcom/android/camera/component/NewMediaBroadcaster$2;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    .line 93
    .local v1, m_DeletedFinishedEventHandler:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<Lcom/android/camera/MediaEventArgs;>;"
    new-instance v4, Lcom/android/camera/component/NewMediaBroadcaster$3;

    invoke-direct {v4, p0, v0, v3, v1}, Lcom/android/camera/component/NewMediaBroadcaster$3;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;Lcom/android/camera/CameraThread;Lcom/android/camera/event/EventHandler;Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 104
    iget-object v4, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/component/NewMediaBroadcaster$4;

    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/camera/component/NewMediaBroadcaster$4;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v2, Lcom/android/camera/component/NewMediaBroadcaster$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/NewMediaBroadcaster$5;-><init>(Lcom/android/camera/component/NewMediaBroadcaster;)V

    .line 126
    .local v2, m_HideUIHandlerWithSetParam:Lcom/android/camera/event/EventHandler;,"Lcom/android/camera/event/EventHandler<Lcom/android/camera/event/EventArgs;>;"
    invoke-virtual {p0}, Lcom/android/camera/component/NewMediaBroadcaster;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v4, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 128
    return-void
.end method
