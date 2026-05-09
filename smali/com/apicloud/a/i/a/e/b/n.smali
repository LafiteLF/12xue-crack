.class final Lcom/apicloud/a/i/a/e/b/n;
.super Lcom/apicloud/a/i/a/e/b/b;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/a/i/a/e/b/n;->a:[C

    return-void

    :array_0
    .array-data 2
        0x3fs
        0x53s
        0x44s
        0x44s
        0x44s
        0x44s
        0x44s
        0x44s
        0x44s
        0x44s
    .end array-data
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 2

    sget-object v0, Lcom/apicloud/a/i/a/e/b/n;->a:[C

    const-string v1, "drawImage"

    invoke-direct {p0, p1, v1, v0}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;[C)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/e/b/n;Lcom/apicloud/a/i/a/e/b/x;Landroid/graphics/drawable/Drawable;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/e/b/n;->a(Lcom/apicloud/a/i/a/e/b/x;Landroid/graphics/drawable/Drawable;Lcom/apicloud/a/i/a/e/a/d;)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/e/b/x;Landroid/graphics/Bitmap;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 2

    invoke-interface {p3}, Lcom/apicloud/a/i/a/e/a/d;->b()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/e/b/n;->d(Lcom/apicloud/a/i/a/e/b/x;Landroid/graphics/Bitmap;Lcom/apicloud/a/i/a/e/a/d;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "The \'drawImage\' has to be a 4, 6 or 10 element tuple but is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/apicloud/a/i/a/e/a/d;->b()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " element tuple."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/e/b/n;->c(Lcom/apicloud/a/i/a/e/b/x;Landroid/graphics/Bitmap;Lcom/apicloud/a/i/a/e/a/d;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/e/b/n;->b(Lcom/apicloud/a/i/a/e/b/x;Landroid/graphics/Bitmap;Lcom/apicloud/a/i/a/e/a/d;)V

    :goto_0
    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->f()V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/e/b/x;Landroid/graphics/drawable/Drawable;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 1

    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/e/b/n;->a(Lcom/apicloud/a/i/a/e/b/x;Landroid/graphics/Bitmap;Lcom/apicloud/a/i/a/e/a/d;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Canvas operation \'drawImage\' expects a BitmapDrawable but received a "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/apicloud/a/i/a/e/b/x;Ljava/lang/String;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/deepe/c/c/s;->b(Ljava/lang/String;)Lcom/deepe/c/c/s;

    move-result-object p2

    const/4 v0, 0x0

    iput v0, p2, Lcom/deepe/c/c/s;->b:I

    iput v0, p2, Lcom/deepe/c/c/s;->c:I

    iput-boolean v0, p2, Lcom/deepe/c/c/s;->g:Z

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/b/n;->c()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->f()Lcom/apicloud/a/d/g;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/i/a/e/b/n$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/apicloud/a/i/a/e/b/n$1;-><init>(Lcom/apicloud/a/i/a/e/b/n;Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V

    invoke-virtual {v0, p2, v1}, Lcom/apicloud/a/d/g;->a(Lcom/deepe/c/c/s;Lcom/apicloud/a/d/g$a;)V

    return-void
.end method

.method private final b(Lcom/apicloud/a/i/a/e/b/x;Landroid/graphics/Bitmap;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 2

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v0

    const/4 v1, 0x3

    invoke-interface {p3, v1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result p3

    invoke-interface {p1, p2, v0, p3}, Lcom/apicloud/a/i/a/e/b/x;->a(Landroid/graphics/Bitmap;FF)V

    return-void
.end method

.method private final c(Lcom/apicloud/a/i/a/e/b/x;Landroid/graphics/Bitmap;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x2

    invoke-interface {p3, v1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v1

    const/4 v2, 0x3

    invoke-interface {p3, v2}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v2

    const/4 v3, 0x4

    invoke-interface {p3, v3}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v3

    add-float/2addr v3, v1

    const/4 v4, 0x5

    invoke-interface {p3, v4}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result p3

    add-float/2addr p3, v2

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v2, v3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, p2, v0, v4}, Lcom/apicloud/a/i/a/e/b/x;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method private final d(Lcom/apicloud/a/i/a/e/b/x;Landroid/graphics/Bitmap;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 8

    const/4 v0, 0x2

    invoke-interface {p3, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x3

    invoke-interface {p3, v1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x4

    invoke-interface {p3, v2}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x5

    invoke-interface {p3, v3}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x6

    invoke-interface {p3, v4}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v4

    const/4 v5, 0x7

    invoke-interface {p3, v5}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v5

    const/16 v6, 0x8

    invoke-interface {p3, v6}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v6

    const/16 v7, 0x9

    invoke-interface {p3, v7}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result p3

    new-instance v7, Landroid/graphics/Rect;

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr v6, v4

    add-float/2addr p3, v5

    invoke-direct {v0, v4, v5, v6, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1, p2, v7, v0}, Lcom/apicloud/a/i/a/e/b/x;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/b/n;->c()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/apicloud/a/e/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/apicloud/a/i/a/g/a;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/apicloud/a/i/a/g/a;

    invoke-interface {v1}, Lcom/apicloud/a/i/a/g/a;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v1, p2}, Lcom/apicloud/a/i/a/e/b/n;->a(Lcom/apicloud/a/i/a/e/b/x;Landroid/graphics/Bitmap;Lcom/apicloud/a/i/a/e/a/d;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, v0, p2}, Lcom/apicloud/a/i/a/e/b/n;->a(Lcom/apicloud/a/i/a/e/b/x;Ljava/lang/String;Lcom/apicloud/a/i/a/e/a/d;)V

    return-void
.end method
