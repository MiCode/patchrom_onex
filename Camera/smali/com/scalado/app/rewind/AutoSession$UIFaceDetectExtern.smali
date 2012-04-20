.class Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;
.super Ljava/lang/Object;
.source "AutoSession.java"

# interfaces
.implements Lcom/scalado/app/rewind/RectTracker$RectFaceDetectExtern;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/AutoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIFaceDetectExtern"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scalado/app/rewind/AutoSession;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/AutoSession;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;->this$0:Lcom/scalado/app/rewind/AutoSession;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/AutoSession;Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;-><init>(Lcom/scalado/app/rewind/AutoSession;)V

    return-void
.end method


# virtual methods
.method public getBlinkValue(I)I
    .locals 1
    .parameter "face_index"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;->getBlinkValue(I)I

    move-result v0

    return v0
.end method

.method public getFaceID(I)I
    .locals 1
    .parameter "face_index"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;->getFaceID(I)I

    move-result v0

    return v0
.end method

.method public getFaceNum()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;->getFaceNum()I

    move-result v0

    return v0
.end method

.method public getFaceRect(I)Landroid/graphics/Rect;
    .locals 2
    .parameter "face_index"

    .prologue
    .line 223
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;->getFaceRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 225
    .local v0, tmpRect:Landroid/graphics/Rect;
    return-object v0
.end method

.method public getLeftEyeRect(I)Landroid/graphics/Rect;
    .locals 2
    .parameter "face_index"

    .prologue
    .line 230
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;->getLeftEyeRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 232
    .local v0, left:Landroid/graphics/Rect;
    return-object v0
.end method

.method public getMouthRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "face_index"

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, mouth:Landroid/graphics/Rect;
    return-object v0
.end method

.method public getNoseRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "face_index"

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, Nose:Landroid/graphics/Rect;
    return-object v0
.end method

.method public getRightEyeRect(I)Landroid/graphics/Rect;
    .locals 2
    .parameter "face_index"

    .prologue
    .line 237
    iget-object v1, p0, Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;
    invoke-static {v1}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;->getRightEyeRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 239
    .local v0, right:Landroid/graphics/Rect;
    return-object v0
.end method

.method public getSmileValue(I)I
    .locals 1
    .parameter "face_index"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;->getSmileValue(I)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

    move-result-object v0

    invoke-interface {v0}, Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;->reset()V

    .line 269
    return-void
.end method

.method public setImagebuffer(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/scalado/app/rewind/AutoSession$UIFaceDetectExtern;->this$0:Lcom/scalado/app/rewind/AutoSession;

    #getter for: Lcom/scalado/app/rewind/AutoSession;->mFaceDetectExtern:Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;
    invoke-static {v0}, Lcom/scalado/app/rewind/AutoSession;->access$0(Lcom/scalado/app/rewind/AutoSession;)Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;->setImagebuffer(Landroid/graphics/Bitmap;)V

    .line 212
    return-void
.end method
