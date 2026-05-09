.class final Lcom/deepe/c/c/ac$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/ac;


# direct methods
.method private constructor <init>(Lcom/deepe/c/c/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/ac$a;->a:Lcom/deepe/c/c/ac;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/deepe/c/c/ac;Lcom/deepe/c/c/ac$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/ac$a;-><init>(Lcom/deepe/c/c/ac;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 14

    iget-object p1, p0, Lcom/deepe/c/c/ac$a;->a:Lcom/deepe/c/c/ac;

    invoke-static {p1}, Lcom/deepe/c/c/ac;->a(Lcom/deepe/c/c/ac;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/c/ac;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/ac$a;->a:Lcom/deepe/c/c/ac;

    iget-object v0, v0, Lcom/deepe/c/c/ac;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/deepe/c/c/ac$a;->a:Lcom/deepe/c/c/ac;

    invoke-static {v1}, Lcom/deepe/c/c/ac;->b(Lcom/deepe/c/c/ac;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/deepe/c/c/ac$a;->a:Lcom/deepe/c/c/ac;

    invoke-static {v2}, Lcom/deepe/c/c/ac;->c(Lcom/deepe/c/c/ac;)Lcom/deepe/c/c/a/c;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Lcom/deepe/c/c/ac;->a([BLjava/lang/String;)Lcom/deepe/c/c/a/c;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    invoke-static {}, Lcom/deepe/c/k/j;->f()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/deepe/c/c/ac$a;->a:Lcom/deepe/c/c/ac;

    invoke-static {v0}, Lcom/deepe/c/c/ac;->d(Lcom/deepe/c/c/ac;)Lcom/deepe/c/c/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/c/ac$a;->a:Lcom/deepe/c/c/ac;

    invoke-virtual {v1}, Lcom/deepe/c/c/ac;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2}, Lcom/deepe/c/c/a/c;->b()F

    move-result v3

    invoke-virtual {v2}, Lcom/deepe/c/c/a/c;->a()F

    move-result v4

    invoke-virtual {v2}, Lcom/deepe/c/c/a/c;->c()Landroid/graphics/RectF;

    move-result-object v5

    const/4 v6, 0x0

    cmpl-float v7, v3, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v7, :cond_3

    move v7, v8

    goto :goto_1

    :cond_3
    move v7, v9

    :goto_1
    cmpl-float v10, v4, v6

    if-lez v10, :cond_4

    move v10, v8

    goto :goto_2

    :cond_4
    move v10, v9

    :goto_2
    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move v8, v9

    :goto_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    if-nez v7, :cond_7

    if-eqz v8, :cond_6

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v3, v7

    mul-float/2addr v3, v9

    invoke-static {v3}, Lcom/deepe/c/c/ac;->a(F)F

    move-result v3

    goto :goto_4

    :cond_6
    const/high16 v3, 0x43160000    # 150.0f

    :goto_4
    invoke-static {v3}, Lcom/deepe/c/c/ac;->b(F)F

    move-result v11

    :cond_7
    if-nez v10, :cond_9

    if-eqz v8, :cond_8

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    goto :goto_5

    :cond_8
    const/high16 v4, 0x43960000    # 300.0f

    div-float/2addr v4, v3

    :goto_5
    mul-float/2addr v4, v3

    invoke-static {v3}, Lcom/deepe/c/c/ac;->b(F)F

    move-result v11

    :cond_9
    invoke-static {v4}, Lcom/deepe/c/c/ac;->b(F)F

    move-result v5

    invoke-static {v3}, Lcom/deepe/c/c/ac;->b(F)F

    move-result v7

    cmpl-float v12, v11, v7

    if-ltz v12, :cond_a

    div-float v12, v11, v7

    goto :goto_6

    :cond_a
    div-float v12, v9, v5

    :goto_6
    iget-object v13, p0, Lcom/deepe/c/c/ac$a;->a:Lcom/deepe/c/c/ac;

    invoke-virtual {v13}, Lcom/deepe/c/c/ac;->a()Z

    move-result v13

    if-eqz v13, :cond_b

    mul-float v9, v5, v12

    mul-float v11, v7, v12

    :cond_b
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_c

    mul-float v11, v7, v12

    :cond_c
    if-nez v8, :cond_e

    invoke-virtual {v2, v6, v6, v4, v3}, Lcom/deepe/c/c/a/c;->a(FFFF)V

    if-eqz v10, :cond_d

    sget-object v1, Lcom/deepe/c/c/a/a;->b:Lcom/deepe/c/c/a/a;

    goto :goto_7

    :cond_d
    sget-object v1, Lcom/deepe/c/c/a/a;->d:Lcom/deepe/c/c/a/a;

    :goto_7
    invoke-virtual {v2, v1}, Lcom/deepe/c/c/a/c;->a(Lcom/deepe/c/c/a/a;)V

    :cond_e
    invoke-virtual {v2, v9}, Lcom/deepe/c/c/a/c;->a(F)V

    invoke-virtual {v2, v11}, Lcom/deepe/c/c/a/c;->b(F)V

    invoke-virtual {v0, v6, v6, v9, v11}, Lcom/deepe/c/c/a/b;->a(FFFF)Lcom/deepe/c/c/a/b;

    :try_start_0
    invoke-static {v9}, Lcom/deepe/c/c/ac;->c(F)I

    move-result v1

    invoke-static {v11}, Lcom/deepe/c/c/ac;->c(F)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3, v0}, Lcom/deepe/c/c/a/c;->a(Landroid/graphics/Canvas;Lcom/deepe/c/c/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_f

    invoke-static {p1, v1}, Lcom/deepe/c/c/ac;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_f
    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/deepe/c/k/j;->f()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/ac$a;->a:Lcom/deepe/c/c/ac;

    invoke-static {v0, p1}, Lcom/deepe/c/c/ac;->a(Lcom/deepe/c/c/ac;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/ac$a;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/ac$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
