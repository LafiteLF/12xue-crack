.class Lcom/apicloud/a/i/a/e/b/bg;
.super Lcom/apicloud/a/i/a/e/b/ao;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/a/i/a/e/b/bg;->a:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3fs
        0x53s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/apicloud/a/i/a/e/b/bg;->a:[C

    const-string v1, "strokeStyle"

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/i/a/e/b/ao;-><init>(Ljava/lang/String;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/e/b/bg;->a:[C

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/e/b/ao;-><init>(Ljava/lang/String;[C)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/b/z;)V
    .locals 0

    invoke-interface {p2}, Lcom/apicloud/a/i/a/e/b/z;->c()Landroid/graphics/Shader;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->d()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/b/x;I)V
    .locals 0

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/e/b/x;->a(I)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/e/b/bg;->a:[C

    array-length v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/apicloud/a/i/a/e/b/bg;->a(Lcom/apicloud/a/i/a/e/a/d;I)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/apicloud/a/i/a/e/b/x;->a(Ljava/lang/String;)Lcom/apicloud/a/i/a/e/b/z;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/e/b/bg;->a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/b/z;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/e/b/ao;->a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V

    return-void
.end method
