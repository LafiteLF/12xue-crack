.class public Lcom/apicloud/a/i/a/e/e;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/e/b;",
        ">;"
    }
.end annotation


# static fields
.field static a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/apicloud/a/i/a/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "toBlob"

    const-string v1, "toDataURL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/e/e;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/e/d;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/e/d;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/e;->b:Lcom/apicloud/a/i/a/e/d;

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/e/b;Lcom/apicloud/a/c;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/e/e;->c(Lcom/apicloud/a/i/a/e/b;Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/e/c/b;

    move-result-object p1

    const-string v0, "onSuccess"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apicloud/a/c/j;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/c/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/apicloud/a/i/a/e/c/b;->b:[B

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/e;->e()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/a/c/y;->a([BLcom/apicloud/a/d;)Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    iget-object p1, p1, Lcom/apicloud/a/i/a/e/c/b;->a:Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {p2, v1}, Lcom/apicloud/a/c/j;->a([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8ArrayBuffer;->close()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c/j;->a([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/e/b;Lcom/apicloud/a/c;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/e/e;->c(Lcom/apicloud/a/i/a/e/b;Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/e/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/c/b;->a()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/apicloud/a/i/a/e/c/b;->b:[B

    invoke-static {p2}, Lcom/deepe/c/c/w;->b([B)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/apicloud/a/i/a/e/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";base64,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "data:,"

    return-object p1
.end method

.method private c(Lcom/apicloud/a/i/a/e/b;Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/e/c/b;
    .locals 4

    new-instance v0, Lcom/apicloud/a/i/a/e/c/b;

    invoke-direct {v0}, Lcom/apicloud/a/i/a/e/c/b;-><init>()V

    :try_start_0
    const-string v1, "mimeType"

    invoke-virtual {p2, v1}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apicloud/a/i/a/e/a/c;->a(Ljava/lang/String;)Lcom/apicloud/a/i/a/e/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/e/a/c;->c()I

    move-result v2

    const-string v3, "quality"

    invoke-virtual {p2, v3}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p2, v2

    float-to-int v2, p2

    :cond_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/b;->e()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/e/a/c;->b()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v3

    invoke-virtual {p1, v3, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, v0, Lcom/apicloud/a/i/a/e/c/b;->b:[B

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/e/a/c;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/apicloud/a/i/a/e/c/b;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/e;->e()Lcom/apicloud/a/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/apicloud/a/d;->h()Lcom/apicloud/a/d/c;

    move-result-object p2

    const-string v1, "canvas to byte array error. "

    invoke-static {v1, p1}, Lcom/apicloud/a/c/b;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/apicloud/a/c/b;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/apicloud/a/d/c;->b(Lcom/apicloud/a/c/b;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/e/e;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/e/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/e/b;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/e/e;->a(Lcom/apicloud/a/i/a/e/b;)Lcom/apicloud/a/i/a/e/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/e/b;)Lcom/apicloud/a/i/a/e/d;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/e/e;->b:Lcom/apicloud/a/i/a/e/d;

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/e/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/e/e;->a(Lcom/apicloud/a/i/a/e/b;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/e/b;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    const v0, -0x33d20348    # -4.5609696E7f

    if-eq p4, v0, :cond_2

    const v0, -0xd1d6596

    if-eq p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, "toDataURL"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/e/e;->b(Lcom/apicloud/a/i/a/e/b;Lcom/apicloud/a/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p4, "toBlob"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/e/e;->a(Lcom/apicloud/a/i/a/e/b;Lcom/apicloud/a/c;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "canvas"

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/e/b;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/e/b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/e;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/e/b;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method

.method public bridge synthetic b(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/e/b;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/e/e;->b(Lcom/apicloud/a/i/a/e/b;)V

    return-void
.end method

.method public b(Lcom/apicloud/a/i/a/e/b;)V
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/b;->d()V

    invoke-super {p0, p1}, Lcom/apicloud/a/i/e;->b(Landroid/view/View;)V

    return-void
.end method
