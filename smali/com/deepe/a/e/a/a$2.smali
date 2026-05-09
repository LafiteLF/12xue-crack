.class Lcom/deepe/a/e/a/a$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/a/e/a/a;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Landroid/graphics/Bitmap;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    iput-object p2, p0, Lcom/deepe/a/e/a/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepe/a/e/a/a$2;->b:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/deepe/a/e/a/a$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/deepe/a/e/a/a$2;->d:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/deepe/a/e/a/a$2;->a:Ljava/lang/String;

    const-string v1, "base64"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/a/e/a/a$2;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/deepe/c/c/w;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    move v0, v1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/deepe/a/e/a/a$2;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object v3, p0, Lcom/deepe/a/e/a/a$2;->b:Landroid/graphics/Bitmap;

    invoke-static {v3, v0}, Lcom/deepe/c/c/w;->a(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/uzmap/pkg/b/b/c;->a()Lcom/uzmap/pkg/b/b/c;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ScreenCapture savePicture failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/uzmap/pkg/b/b/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    new-instance v3, Lcom/deepe/c/i/i;

    invoke-direct {v3}, Lcom/deepe/c/i/i;-><init>()V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepe/a/e/a/a$2;->c:Ljava/lang/String;

    const-string v4, "savePath"

    invoke-virtual {v3, v4, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "base64Data"

    invoke-virtual {v3, v0, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/a/e/a/a$2;->d:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v3}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    goto :goto_1

    :cond_2
    const-string v0, "msg"

    const-string v1, "save picture aborted."

    invoke-virtual {v3, v0, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/a/e/a/a$2;->d:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v3}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;)V

    :goto_1
    return-void
.end method
