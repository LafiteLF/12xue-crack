.class final Lcom/uzmap/pkg/uzcore/uzmodule/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

.field private b:Landroid/app/AlertDialog;

.field private c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private d:Ljava/lang/String;

.field private e:Lcom/uzmap/pkg/b/a/f;

.field private f:Lcom/uzmap/pkg/b/a/j;

.field private g:Lcom/uzmap/pkg/b/a/e$a;

.field private h:Lcom/deepe/f/b/a;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "amr"

    if-nez v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "pcm"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "record_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/deepe/c/i/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_a."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    move-object v1, p1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/b/l;I)Ljava/lang/String;
    .locals 7

    const/4 v0, -0x1

    const/16 v1, 0x64

    :try_start_0
    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->c()Z

    move-result v2

    const/16 v3, 0x5f

    if-eqz v2, :cond_0

    iget v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->i:I

    iget v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->j:I

    mul-int/2addr v0, v1

    move v1, v3

    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_1
    if-lez p3, :cond_3

    if-gez v0, :cond_3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v1

    iget v1, v1, Lcom/uzmap/pkg/uzcore/z;->a:I

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v5

    iget v5, v5, Lcom/uzmap/pkg/uzcore/z;->b:I

    mul-int/2addr v1, v5

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v5, v0

    div-int/lit8 v5, v5, 0x2

    if-lt v5, v1, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/deepe/c/c/af;->b(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    if-lez p3, :cond_4

    invoke-static {v0, p3}, Lcom/deepe/c/c/af;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_6

    new-instance p3, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->f:I

    if-lez v1, :cond_5

    iget v3, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->f:I

    :cond_5
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, p2, v3, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-object p1
.end method

.method private a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->id:Ljava/lang/String;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/deepe/c/a/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/deepe/c/a/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "msg"

    invoke-virtual {v0, v1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "status"

    invoke-virtual {v0, p2, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Intent;Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->b:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;)Lcom/uzmap/pkg/b/a/f;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->e:Lcom/uzmap/pkg/b/a/f;

    return-object p0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "picture_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/deepe/c/i/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "capture_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/deepe/c/i/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->id:Ljava/lang/String;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/g/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->id:Ljava/lang/String;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/g/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 4

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "msg"

    const-string v1, "code"

    new-instance v2, Lcom/deepe/c/i/i;

    invoke-direct {v2}, Lcom/deepe/c/i/i;-><init>()V

    const/4 v3, 0x1

    :try_start_0
    invoke-static {p1, p2}, Lcom/deepe/c/i/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "data"

    invoke-virtual {v2, p2, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "status"

    invoke-virtual {v2, p1, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const-string p1, "\u627e\u4e0d\u5230\u6587\u4ef6"

    invoke-virtual {v2, v0, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v2, v1, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v2}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "status"

    new-instance v1, Lcom/deepe/c/i/i;

    invoke-direct {v1}, Lcom/deepe/c/i/i;-><init>()V

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/deepe/c/i/h;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    const/4 p1, 0x1

    invoke-virtual {v1, v0, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    invoke-virtual {v1, v0, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg"

    invoke-virtual {v1, p2, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->e:Lcom/uzmap/pkg/b/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/a/f;->a()V

    :cond_0
    return-void
.end method

.method protected a(ILandroid/content/Intent;)V
    .locals 2

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, -0x1

    const/4 v0, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    new-instance p2, Lcom/deepe/c/i/i;

    invoke-direct {p2}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "status"

    invoke-virtual {p2, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p2}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method

.method public a(Landroid/content/Context;IIILjava/lang/Boolean;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/uzmap/pkg/b/a/i;->a(Landroid/content/Context;IIILjava/lang/Boolean;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/k;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->activity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/k;->b:Ljava/lang/String;

    iget v2, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/k;->a:F

    invoke-static {v0, p1, v1, v2, p2}, Lcom/deepe/a/e/b;->a(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;FLcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 8

    const/4 v0, 0x0

    const-string v1, "region"

    invoke-virtual {p2, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "destinationType"

    invoke-virtual {p2, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->activity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->f()Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v2 .. v7}, Lcom/deepe/a/e/b;->a(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    const-string v0, "recipients"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "attachments"

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "subject"

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "body"

    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/deepe/c/i/j;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$2;

    invoke-direct {v4, p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$2;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;)V

    invoke-static {v1, v4}, Lcom/deepe/c/i/j;->a(Lorg/json/JSONArray;Lcom/deepe/c/i/e$a;)[Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1, v0, v3, v2}, Lcom/deepe/c/a/e;->a([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    sget-object v2, Lcom/deepe/b;->X:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const/4 v1, 0x0

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    :goto_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/l;)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->i()V

    iget v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->c:I

    if-ne v0, v2, :cond_2

    iget p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->g:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/deepe/c/a/e;->a(ILandroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    const/16 v1, 0x4e88

    goto :goto_0

    :cond_2
    iget-boolean v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->h:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->h:Z

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->k:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->d:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->d:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/deepe/c/a/e;->a(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    const/16 v1, 0x4e86

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->c:I

    invoke-static {p1}, Lcom/deepe/c/a/e;->a(I)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    const/16 v1, 0x4e87

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/n;)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/a/g;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/a/g;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/n;)I

    move-result v0

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/deepe/c/i/i;

    invoke-direct {v1}, Lcom/deepe/c/i/i;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    if-gez v0, :cond_0

    const-string v2, "msg"

    const-string v3, "Alarm Exception!"

    invoke-virtual {v1, v2, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x1

    if-ltz v0, :cond_1

    invoke-virtual {v1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->success(Lorg/json/JSONObject;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/deepe/c/a/e;->a(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)Z
    .locals 10

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/deepe/c/a/e;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const-string v2, "androidPkg"

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "appParam"

    invoke-virtual {p1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->callbackAble()Z

    move-result v6

    invoke-static {v5}, Lcom/deepe/c/a/e;->b(Landroid/content/Intent;)Z

    move-result v5

    const/16 v7, 0x4e85

    const/high16 v8, 0x30000000

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v4, :cond_1

    invoke-direct {p0, v0, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a(Landroid/content/Intent;Lorg/json/JSONObject;)V

    :cond_1
    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v6, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v1, v0, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->startActivityForResult(Landroid/content/Intent;I)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v3

    :catch_1
    sget-object p1, Lcom/deepe/b;->aa:Ljava/lang/String;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V

    return v9

    :cond_4
    const-string v0, "mimeType"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const-string v2, "android.intent.action.VIEW"

    :goto_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :try_start_2
    invoke-static {v1, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_8
    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    :goto_2
    if-eqz v4, :cond_a

    invoke-direct {p0, v5, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a(Landroid/content/Intent;Lorg/json/JSONObject;)V

    :cond_a
    if-eqz v5, :cond_d

    invoke-static {v5}, Lcom/deepe/c/a/e;->b(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v6, :cond_c

    :try_start_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0, v5, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->startActivityForResult(Landroid/content/Intent;I)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    return v3

    :cond_d
    :goto_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_4
    const-string v1, "msg"

    sget-object v2, Lcom/deepe/b;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    return v9
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->e:Lcom/uzmap/pkg/b/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/a/f;->b()V

    :cond_0
    return-void
.end method

.method protected b(ILandroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    check-cast v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const-string v4, ""

    if-eq v2, p1, :cond_1

    move-object p1, v4

    move-object p2, p1

    goto/16 :goto_2

    :cond_1
    iget p1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->c:I

    if-eq p1, v3, :cond_8

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->d:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->d:Ljava/lang/String;

    iget-boolean p2, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->h:Z

    if-eqz p2, :cond_5

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/uzmap/pkg/uzcore/g/e;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_5
    :goto_0
    invoke-static {p1}, Lcom/deepe/c/c/af;->a(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->a()Z

    move-result v2

    if-nez v2, :cond_6

    if-lez p2, :cond_7

    :cond_6
    invoke-direct {p0, p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/b/l;I)Ljava/lang/String;

    move-result-object p1

    :cond_7
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->b()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->bitmapToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->d:Ljava/lang/String;

    :goto_1
    invoke-static {p1}, Lcom/deepe/c/c/af;->b(Ljava/lang/String;)I

    move-result v1

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    :cond_a
    move-object p2, v4

    :goto_2
    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    move-object v4, p1

    :goto_3
    new-instance p1, Lcom/deepe/c/i/i;

    invoke-direct {p1}, Lcom/deepe/c/i/i;-><init>()V

    const-string v2, "data"

    invoke-virtual {p1, v2, v4}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "base64Data"

    invoke-virtual {p1, v2, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    div-int/lit16 v1, v1, 0x3e8

    const-string p2, "duration"

    invoke-virtual {p1, p2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->success(Lorg/json/JSONObject;Z)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/l;->d()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->d:Ljava/lang/String;

    if-eqz p1, :cond_c

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->d:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_c
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method

.method public b(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->b(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "msg"

    const/4 v4, 0x0

    const-string v5, "status"

    if-nez v2, :cond_0

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    invoke-virtual {v0, v5, v4}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    const-string v2, "no storage permissions"

    invoke-virtual {v0, v3, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void

    :cond_0
    const-string v2, "path"

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v6, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    invoke-virtual {v0, v5, v4}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    const-string v2, "path can not be empty"

    invoke-virtual {v0, v3, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void

    :cond_1
    const-string v1, "groupName"

    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/uzmap/pkg/uzcore/g/e;

    invoke-direct {v1, v2, v0, p1}, Lcom/uzmap/pkg/uzcore/g/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/g/e;->start()V

    return-void
.end method

.method public b(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 4

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "numbers"

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/i/j;->a(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "silent"

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ""

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v1, v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    invoke-static {v1, v0}, Lcom/deepe/f/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    const/16 v2, 0x4e8a

    invoke-virtual {v1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->startActivityForResult(Landroid/content/Intent;I)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void

    :cond_2
    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->h:Lcom/deepe/f/b/a;

    if-nez v2, :cond_3

    new-instance v2, Lcom/deepe/f/b/a;

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->context()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/deepe/f/b/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->h:Lcom/deepe/f/b/a;

    :cond_3
    new-instance v2, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$1;

    invoke-direct {v2, p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$1;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->h:Lcom/deepe/f/b/a;

    invoke-virtual {v3, v1, v0, v2}, Lcom/deepe/f/b/a;->a([Ljava/lang/String;Ljava/lang/String;Lcom/deepe/f/b/a$a;)Lcom/deepe/f/b/a$b;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/deepe/c/i/i;

    invoke-direct {v1}, Lcom/deepe/c/i/i;-><init>()V

    iget-boolean v2, v0, Lcom/deepe/f/b/a$b;->a:Z

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object v0, v0, Lcom/deepe/f/b/a$b;->b:Ljava/lang/String;

    const-string v2, "msg"

    invoke-virtual {v1, v2, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    :cond_4
    return-void
.end method

.method public b(Lcom/uzmap/pkg/uzcore/uzmodule/b/n;)V
    .locals 1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->optInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/a/g;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/a/g;->a(I)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p1}, Lcom/deepe/a/f/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$9;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$9;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->runOnUiThread(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->g:Lcom/uzmap/pkg/b/a/e$a;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/a/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->g:Lcom/uzmap/pkg/b/a/e$a;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/b/a/e;->a(Lcom/uzmap/pkg/b/a/e$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->g:Lcom/uzmap/pkg/b/a/e$a;

    :cond_1
    return-void
.end method

.method protected c(ILandroid/content/Intent;)V
    .locals 3

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    invoke-static {p2}, Lcom/deepe/c/a/c;->b(Landroid/net/Uri;)Lcom/deepe/c/a/c$a;

    move-result-object p2

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    iget-boolean v1, p2, Lcom/deepe/c/a/c$a;->c:Z

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object v1, p2, Lcom/deepe/c/a/c$a;->a:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/deepe/c/a/c$a;->b:Ljava/lang/String;

    const-string v1, "phone"

    invoke-virtual {v0, v1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method

.method public c(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 5

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->b:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "picker has opened!"

    invoke-direct {p0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    :cond_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseDateToMills(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->context()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$3;

    invoke-direct {v3, p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$3;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V

    invoke-static {v2, v0, v4, v3}, Lcom/uzmap/pkg/uzcore/external/f;->a(Landroid/content/Context;ILjava/util/Calendar;Lcom/uzmap/pkg/uzcore/external/f$c;)Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$4;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$4;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->b:Landroid/app/AlertDialog;

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->e:Lcom/uzmap/pkg/b/a/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/a/f;->e()V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->e:Lcom/uzmap/pkg/b/a/f;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->f:Lcom/uzmap/pkg/b/a/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/a/j;->a()V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->f:Lcom/uzmap/pkg/b/a/j;

    :cond_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->h:Lcom/deepe/f/b/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/deepe/f/b/a;->a()V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->h:Lcom/deepe/f/b/a;

    :cond_2
    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->d:Ljava/lang/String;

    return-void
.end method

.method protected d(ILandroid/content/Intent;)V
    .locals 8

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz p1, :cond_5

    new-instance p1, Lcom/deepe/c/i/i;

    invoke-direct {p1}, Lcom/deepe/c/i/i;-><init>()V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    array-length v6, v4

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_1

    invoke-virtual {p1, v2, v5}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    aget-object v7, v4, v3

    :try_start_0
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    :goto_3
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string v0, "uri"

    invoke-virtual {p1, v0, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method

.method public d(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/deepe/c/a/e;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/e;->b(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "\u672a\u627e\u5230\u901a\u8baf\u5f55\u7a0b\u5e8f!"

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    const/16 v2, 0x4e89

    invoke-virtual {v1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->startActivityForResult(Landroid/content/Intent;I)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method

.method public e(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 4

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/f/c;->e(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v2, "msg"

    const-string v3, "no record permissions"

    invoke-virtual {v0, v2, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->error(Lorg/json/JSONObject;Z)V

    return-void

    :cond_0
    const-string v0, "path"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "format"

    invoke-virtual {p1, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->e:Lcom/uzmap/pkg/b/a/f;

    if-nez v1, :cond_3

    new-instance v1, Lcom/uzmap/pkg/b/a/f;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/b/a/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->e:Lcom/uzmap/pkg/b/a/f;

    :cond_3
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->e:Lcom/uzmap/pkg/b/a/f;

    invoke-virtual {v1, v0, p1}, Lcom/uzmap/pkg/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 3

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/f/c;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "msg"

    const-string v2, "no record permissions"

    invoke-virtual {v0, v1, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->error(Lorg/json/JSONObject;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->e:Lcom/uzmap/pkg/b/a/f;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$5;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$5;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/b/a/f;->a(Lcom/uzmap/pkg/b/a/f$b;)V

    :cond_1
    return-void
.end method

.method public g(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 3

    const-string v0, "path"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->e:Lcom/uzmap/pkg/b/a/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/uzmap/pkg/b/a/f;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/b/a/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->e:Lcom/uzmap/pkg/b/a/f;

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->e:Lcom/uzmap/pkg/b/a/f;

    new-instance v2, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$6;

    invoke-direct {v2, p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$6;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/b/a/f;->a(Lcom/uzmap/pkg/b/a/f$a;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->e:Lcom/uzmap/pkg/b/a/f;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/b/a/f;->a(Ljava/lang/String;)Z

    return-void

    :cond_1
    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const/4 v1, 0x0

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    const-string v1, "msg"

    const-string v2, "path not valid"

    invoke-virtual {v0, v1, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public h(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 11

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "accuracy"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v4, "filter"

    invoke-virtual {p1, v4, v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v6, v2

    const-string v2, "autoStop"

    invoke-virtual {p1, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const/4 v1, 0x0

    const-string v2, "regeo"

    invoke-virtual {p1, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-wide/16 v1, -0x1

    const-string v3, "timeout"

    invoke-virtual {p1, v3, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c()V

    new-instance v1, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$7;

    invoke-direct {v1, p0, p1, v9}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$7;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;Z)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->g:Lcom/uzmap/pkg/b/a/e$a;

    new-instance p1, Lcom/uzmap/pkg/b/a/e$c;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/uzmap/pkg/b/a/e$c;-><init>(Ljava/lang/Integer;FJZZ)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/a/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->g:Lcom/uzmap/pkg/b/a/e$a;

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/b/a/e;->a(Lcom/uzmap/pkg/b/a/e$c;Lcom/uzmap/pkg/b/a/e$a;)V

    return-void
.end method

.method public i(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 9

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->c()V

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$8;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$8;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->g:Lcom/uzmap/pkg/b/a/e$a;

    const-string v0, "regeo"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v0, "accuracy"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    const-wide/16 v0, -0x1

    const-string v2, "timeout"

    invoke-virtual {p1, v2, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "filter"

    invoke-virtual {p1, v2, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v4, v0

    new-instance p1, Lcom/uzmap/pkg/b/a/e$c;

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/uzmap/pkg/b/a/e$c;-><init>(Ljava/lang/Integer;FJZZ)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->a:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/a/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->g:Lcom/uzmap/pkg/b/a/e$a;

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/b/a/e;->b(Lcom/uzmap/pkg/b/a/e$c;Lcom/uzmap/pkg/b/a/e$a;)V

    return-void
.end method

.method public j(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 4

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->f:Lcom/uzmap/pkg/b/a/j;

    if-nez v2, :cond_0

    new-instance v2, Lcom/uzmap/pkg/b/a/j;

    invoke-direct {v2}, Lcom/uzmap/pkg/b/a/j;-><init>()V

    iput-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->f:Lcom/uzmap/pkg/b/a/j;

    :cond_0
    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->f:Lcom/uzmap/pkg/b/a/j;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3, p1}, Lcom/uzmap/pkg/b/a/j;->a(IILcom/uzmap/pkg/uzcore/uzmodule/b/m;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    const-string v1, "msg"

    const-string v2, "Hardware did not supported!"

    invoke-virtual {v0, v1, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    :cond_1
    return-void
.end method

.method public k(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->f:Lcom/uzmap/pkg/b/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/a/j;->a(I)V

    :cond_0
    return-void
.end method
