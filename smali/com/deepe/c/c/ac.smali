.class public Lcom/deepe/c/c/ac;
.super Lcom/deepe/c/c/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/ac$a;
    }
.end annotation


# instance fields
.field private b:Lcom/deepe/c/c/a/c;

.field private c:[B

.field private final d:Lcom/deepe/c/c/a/b;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/deepe/c/c/u;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/deepe/c/c/ac;->c:[B

    new-instance p1, Lcom/deepe/c/c/a/b;

    invoke-direct {p1}, Lcom/deepe/c/c/a/b;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/ac;->d:Lcom/deepe/c/c/a/b;

    return-void
.end method

.method static a(F)F
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/c/w;->b(F)F

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/deepe/c/c/z;->a()Lcom/deepe/c/c/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/c/z$a;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/deepe/c/c/z$a;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final a([BLjava/lang/String;)Lcom/deepe/c/c/a/c;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/deepe/c/c/a/c;->a([B)Lcom/deepe/c/c/a/c;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Could not decodeSVGFromBytes at: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/c/a/a/l;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/deepe/c/c/ac;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/ac;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/deepe/c/c/ac;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/ac;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Lcom/deepe/c/c/z$a;

    invoke-direct {v0}, Lcom/deepe/c/c/z$a;-><init>()V

    iput-object p1, v0, Lcom/deepe/c/c/z$a;->a:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/deepe/c/c/z;->a()Lcom/deepe/c/c/z;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/deepe/c/c/z;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static b(F)F
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/c/w;->a(F)F

    move-result p0

    return p0
.end method

.method public static final b([BLjava/lang/String;)Lcom/deepe/c/c/ac;
    .locals 1

    new-instance v0, Lcom/deepe/c/c/ac;

    invoke-direct {v0, p0, p1}, Lcom/deepe/c/c/ac;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/deepe/c/c/u;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/ac;->c:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/ac;->b:Lcom/deepe/c/c/a/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/c/ac;->b()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/c/c/ac;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, p1, v0}, Lcom/deepe/c/c/ac;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    :cond_2
    new-instance p1, Lcom/deepe/c/c/ac$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/deepe/c/c/ac$a;-><init>(Lcom/deepe/c/c/ac;Lcom/deepe/c/c/ac$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/ac$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private b()Z
    .locals 5

    invoke-virtual {p0}, Lcom/deepe/c/c/ac;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/deepe/c/c/ac;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method static synthetic b(Lcom/deepe/c/c/ac;)[B
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/ac;->c:[B

    return-object p0
.end method

.method static c(F)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/deepe/c/c/ac;)Lcom/deepe/c/c/a/c;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/ac;->b:Lcom/deepe/c/c/a/c;

    return-object p0
.end method

.method private final c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SVG("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepe/c/c/ac;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepe/c/c/ac;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/c/c/ac;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/deepe/c/c/ac;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "empty svg"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/deepe/c/c/ac;)Lcom/deepe/c/c/a/b;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/ac;->d:Lcom/deepe/c/c/a/b;

    return-object p0
.end method

.method private final d()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/c/ac;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/q;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/c/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/deepe/c/c/u;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/c/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/deepe/c/c/u;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/deepe/c/c/u;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/ac;->b(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/c/ac;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
