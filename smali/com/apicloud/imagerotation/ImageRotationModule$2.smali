.class Lcom/apicloud/imagerotation/ImageRotationModule$2;
.super Ljava/lang/Object;
.source "ImageRotationModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/imagerotation/ImageRotationModule;->jsmethod_rotatedImageByDegree(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/imagerotation/ImageRotationModule;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$degree:I

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$uzModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/apicloud/imagerotation/ImageRotationModule;Landroid/graphics/Bitmap;ILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/apicloud/imagerotation/ImageRotationModule$2;->this$0:Lcom/apicloud/imagerotation/ImageRotationModule;

    iput-object p2, p0, Lcom/apicloud/imagerotation/ImageRotationModule$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/apicloud/imagerotation/ImageRotationModule$2;->val$degree:I

    iput-object p4, p0, Lcom/apicloud/imagerotation/ImageRotationModule$2;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/apicloud/imagerotation/ImageRotationModule$2;->val$uzModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/apicloud/imagerotation/ImageRotationModule$2;->this$0:Lcom/apicloud/imagerotation/ImageRotationModule;

    invoke-virtual {v0}, Lcom/apicloud/imagerotation/ImageRotationModule;->context()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/imagerotation/ImageRotationModule$2;->val$bitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/apicloud/imagerotation/ImageRotationModule$2;->val$degree:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/apicloud/imagerotation/utils/BitmapUtil;->rotateBitmapByDegree(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/imagerotation/ImageRotationModule$2;->this$0:Lcom/apicloud/imagerotation/ImageRotationModule;

    invoke-static {v2}, Lcom/apicloud/imagerotation/ImageRotationModule;->access$000(Lcom/apicloud/imagerotation/ImageRotationModule;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/imagerotation/ImageRotationModule$2;->val$type:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-static {v0, v1, v2, v4, v3}, Lcom/apicloud/imagerotation/utils/BitmapUtil;->saveImageToGallery(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[rotatedImageByDegree] result === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apicloud/imagerotation/utils/LogUtil;->logd(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/apicloud/imagerotation/ImageRotationModule$2;->this$0:Lcom/apicloud/imagerotation/ImageRotationModule;

    invoke-static {v1}, Lcom/apicloud/imagerotation/ImageRotationModule;->access$100(Lcom/apicloud/imagerotation/ImageRotationModule;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcom/apicloud/imagerotation/ImageRotationModule$2;->this$0:Lcom/apicloud/imagerotation/ImageRotationModule;

    invoke-static {v1}, Lcom/apicloud/imagerotation/ImageRotationModule;->access$100(Lcom/apicloud/imagerotation/ImageRotationModule;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/apicloud/imagerotation/ImageRotationModule$2;->val$uzModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v1, p0, Lcom/apicloud/imagerotation/ImageRotationModule$2;->this$0:Lcom/apicloud/imagerotation/ImageRotationModule;

    invoke-static {v1}, Lcom/apicloud/imagerotation/ImageRotationModule;->access$100(Lcom/apicloud/imagerotation/ImageRotationModule;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/imagerotation/MouleUtil;->successResult(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/LinkedHashMap;)V

    .line 122
    iget-object v0, p0, Lcom/apicloud/imagerotation/ImageRotationModule$2;->this$0:Lcom/apicloud/imagerotation/ImageRotationModule;

    invoke-static {v0}, Lcom/apicloud/imagerotation/ImageRotationModule;->access$100(Lcom/apicloud/imagerotation/ImageRotationModule;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method
