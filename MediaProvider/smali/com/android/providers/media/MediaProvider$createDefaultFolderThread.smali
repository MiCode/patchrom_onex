.class Lcom/android/providers/media/MediaProvider$createDefaultFolderThread;
.super Ljava/lang/Thread;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "createDefaultFolderThread"
.end annotation


# instance fields
.field private db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$DatabaseHelper;)V
    .locals 0
    .parameter
    .parameter "db"

    .prologue
    .line 8591
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$createDefaultFolderThread;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8592
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$createDefaultFolderThread;->db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 8593
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8596
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$createDefaultFolderThread;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$createDefaultFolderThread;->db:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    #calls: Lcom/android/providers/media/MediaProvider;->createDefaultFolders(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->access$2100(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 8597
    return-void
.end method
