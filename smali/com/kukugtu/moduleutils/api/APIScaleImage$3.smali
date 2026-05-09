.class Lcom/kukugtu/moduleutils/api/APIScaleImage$3;
.super Ljava/lang/Object;
.source "APIScaleImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kukugtu/moduleutils/api/APIScaleImage;->jsmethod_showImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

.field final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/kukugtu/moduleutils/api/APIScaleImage;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$3;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    iput-object p2, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$3;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const-string p1, "\u4fdd\u5b58\u5931\u8d25"

    const/4 v0, 0x1

    .line 109
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 111
    iget-object v3, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$3;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    invoke-static {v3}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$200(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/kukugtu/moduleutils/apiutils/FileUtils;->saveImageBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "clickID"

    const-string v5, "clickID_save"

    .line 113
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "imageSavePath"

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$3;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {v1, v3, v0}, Lcom/kukugtu/moduleutils/apiutils/ReturnUtils;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/Map;Z)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$3;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {p1, v1, v0}, Lcom/kukugtu/moduleutils/apiutils/ReturnUtils;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    iget-object v1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$3;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {p1, v1, v0}, Lcom/kukugtu/moduleutils/apiutils/ReturnUtils;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    :goto_0
    return-void
.end method
