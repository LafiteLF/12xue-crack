.class public Lcom/deepe/a/e/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Activity;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Lcom/deepe/a/e/a/a$1;

    invoke-direct {v4, p1}, Lcom/deepe/a/e/a/a$1;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    aget p1, v2, p1

    const/4 v5, 0x1

    aget v2, v2, v5

    add-int/2addr v0, p1

    add-int/2addr v1, v2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p1, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0, v5, v3, v4, p1}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-object v3
.end method

.method public static a(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;FLcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    invoke-interface {p1, p2}, Lcom/uzmap/pkg/uzcore/a;->i(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/deepe/c/i/i;

    invoke-direct {p0}, Lcom/deepe/c/i/i;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "do not find view: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg"

    invoke-virtual {p0, p2, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    new-instance p2, Landroid/graphics/ColorMatrix;

    invoke-direct {p2}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {p2, p3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance p3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p3, p2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static final a(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p1, p2}, Lcom/uzmap/pkg/uzcore/a;->i(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p0, Lcom/deepe/c/i/i;

    invoke-direct {p0}, Lcom/deepe/c/i/i;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "do not find view: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg"

    invoke-virtual {p0, p2, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/deepe/a/e/a/a;->a(Landroid/app/Activity;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p4, :cond_1

    invoke-static {p0, p3, p4, p5}, Lcom/deepe/a/e/a/a;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 7

    if-nez p0, :cond_0

    new-instance p0, Lcom/deepe/c/i/i;

    invoke-direct {p0}, Lcom/deepe/c/i/i;-><init>()V

    const-string p1, "msg"

    const-string p3, "save picture aborted."

    invoke-virtual {p0, p1, p3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    new-instance v6, Lcom/deepe/a/e/a/a$2;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deepe-ScreenCaptureSave-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v6

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/deepe/a/e/a/a$2;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-virtual {v6}, Lcom/deepe/a/e/a/a$2;->start()V

    return-void
.end method
