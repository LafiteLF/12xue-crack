.class public final Lcom/deepe/c/a/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/deepe/c/a/h;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/res/Resources;

.field private e:Lcom/deepe/c/a/g;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/a/h;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    return-void
.end method

.method public static a()Lcom/deepe/c/a/h;
    .locals 1

    invoke-static {}, Lcom/deepe/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/h;->a(Landroid/content/Context;)Lcom/deepe/c/a/h;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/deepe/c/a/h;
    .locals 1

    sget-object v0, Lcom/deepe/c/a/h;->a:Lcom/deepe/c/a/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/a/h;

    invoke-direct {v0, p0}, Lcom/deepe/c/a/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/deepe/c/a/h;->a:Lcom/deepe/c/a/h;

    :cond_0
    sget-object p0, Lcom/deepe/c/a/h;->a:Lcom/deepe/c/a/h;

    return-object p0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "layout"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b()Lcom/deepe/c/a/g;
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/a/h;->e:Lcom/deepe/c/a/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/a/g;

    iget-object v1, p0, Lcom/deepe/c/a/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/deepe/c/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepe/c/a/h;->e:Lcom/deepe/c/a/g;

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/a/h;->e:Lcom/deepe/c/a/g;

    return-object v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "anim"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "app_name"

    invoke-virtual {p0, v0}, Lcom/deepe/c/a/h;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "animator"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/a/h;->b()Lcom/deepe/c/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/a/g;->b()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    const-string v0, "uz_icon"

    invoke-virtual {p0, v0}, Lcom/deepe/c/a/h;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "attr"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "color"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "dimen"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "raw"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public j(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public k(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "style"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public l(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "styleable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public m(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "xml"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public n(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "interpolator"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public o(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "menu"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public p(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "mipmap"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public q(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "array"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public r(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "bool"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public s(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "string-array"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public t(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/deepe/c/a/h;->j(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "integer"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/deepe/c/a/h;->c:Ljava/lang/String;

    const-string v2, "integer-array"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public w(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/deepe/c/a/h;->u(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method

.method public x(Ljava/lang/String;)[I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/deepe/c/a/h;->v(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/deepe/c/a/h;->d:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    return-object p1
.end method
