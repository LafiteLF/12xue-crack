.class public Lcom/uzmap/pkg/uzcore/z;
.super Ljava/lang/Object;


# static fields
.field public static c:F

.field public static g:Z

.field private static j:I

.field private static k:I

.field private static l:Lcom/uzmap/pkg/uzcore/z;


# instance fields
.field public a:I

.field public b:I

.field public d:I

.field public e:I

.field public f:I

.field private h:Landroid/util/DisplayMetrics;

.field private i:Lcom/deepe/c/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/uzmap/pkg/uzcore/z;->c:F

    const/4 v0, -0x1

    sput v0, Lcom/uzmap/pkg/uzcore/z;->j:I

    const/4 v0, 0x0

    sput v0, Lcom/uzmap/pkg/uzcore/z;->k:I

    sput-boolean v0, Lcom/uzmap/pkg/uzcore/z;->g:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/z;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a()Lcom/uzmap/pkg/uzcore/z;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/z;->l:Lcom/uzmap/pkg/uzcore/z;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/z;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/z;->l:Lcom/uzmap/pkg/uzcore/z;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/z;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/z;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uzmap/pkg/uzcore/z;->l:Lcom/uzmap/pkg/uzcore/z;

    :cond_0
    sget-object p0, Lcom/uzmap/pkg/uzcore/z;->l:Lcom/uzmap/pkg/uzcore/z;

    return-object p0
.end method

.method public static a(I)V
    .locals 1

    sget v0, Lcom/uzmap/pkg/uzcore/z;->j:I

    if-eq v0, p0, :cond_0

    sput p0, Lcom/uzmap/pkg/uzcore/z;->j:I

    :cond_0
    return-void
.end method

.method public static b(I)V
    .locals 1

    sget v0, Lcom/uzmap/pkg/uzcore/z;->k:I

    if-eq v0, p0, :cond_0

    sput p0, Lcom/uzmap/pkg/uzcore/z;->k:I

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/b/m;->b(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/z;->h:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/z;->a:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/z;->h:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/z;->b:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/z;->h:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/uzmap/pkg/uzcore/z;->c:F

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/z;->h:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/z;->d:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/z;->f:I

    sget v0, Lcom/uzmap/pkg/uzcore/z;->c:F

    const/high16 v1, 0x42340000    # 45.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/z;->e:I

    invoke-static {p1}, Lcom/uzmap/pkg/b/a/i;->c(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzcore/z;->k:I

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/z;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Z
    .locals 2

    sget v0, Lcom/uzmap/pkg/uzcore/z;->j:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static c(I)I
    .locals 1

    int-to-float p0, p0

    sget v0, Lcom/uzmap/pkg/uzcore/z;->c:F

    div-float/2addr p0, v0

    const v0, 0x3efae148    # 0.49f

    add-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/deepe/c/a/d;->c()Z

    move-result p1

    sput-boolean p1, Lcom/uzmap/pkg/uzcore/z;->g:Z

    return-void
.end method

.method public static d(I)I
    .locals 1

    sget v0, Lcom/uzmap/pkg/uzcore/z;->c:F

    int-to-float p0, p0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/z;->c()Lcom/deepe/c/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepe/c/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/deepe/c/a/g;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/z;->i:Lcom/deepe/c/a/g;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/deepe/c/a/h;->a()Lcom/deepe/c/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/a/h;->b()Lcom/deepe/c/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/z;->i:Lcom/deepe/c/a/g;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/z;->i:Lcom/deepe/c/a/g;

    return-object v0
.end method

.method public d()Landroid/content/pm/PackageInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/z;->c()Lcom/deepe/c/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/a/g;->b()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/content/pm/ApplicationInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/z;->c()Lcom/deepe/c/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/a/g;->c()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/z;->e()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/z;->d()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/z;->d()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method public i()Z
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/z;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/z;->c()Lcom/deepe/c/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/a/g;->d()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/z;->c()Lcom/deepe/c/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/a/g;->e()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/z;->c()Lcom/deepe/c/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/a/g;->a()Z

    move-result v0

    return v0
.end method
