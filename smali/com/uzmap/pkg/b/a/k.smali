.class public Lcom/uzmap/pkg/b/a/k;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/uzmap/pkg/b/a/k;


# instance fields
.field private a:Lcom/deepe/a/d/g;

.field private b:Lcom/uzmap/pkg/uzcore/g/h;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/k;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/uzmap/pkg/b/a/k;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/b/a/k;->d:Lcom/uzmap/pkg/b/a/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/b/a/k;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/a/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uzmap/pkg/b/a/k;->d:Lcom/uzmap/pkg/b/a/k;

    :cond_0
    sget-object p0, Lcom/uzmap/pkg/b/a/k;->d:Lcom/uzmap/pkg/b/a/k;

    return-object p0
.end method

.method private final b()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/k;->b:Lcom/uzmap/pkg/uzcore/g/h;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/h;->a()Lcom/uzmap/pkg/uzcore/g/h;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/k;->b:Lcom/uzmap/pkg/uzcore/g/h;

    :cond_0
    return-void
.end method

.method private final c()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/k;->a:Lcom/deepe/a/d/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/a/d/g;->a(Landroid/content/Context;)Lcom/deepe/a/d/g;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/k;->a:Lcom/deepe/a/d/g;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/k;->b()V

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/k;->b:Lcom/uzmap/pkg/uzcore/g/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/g/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/k;->b()V

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/k;->b:Lcom/uzmap/pkg/uzcore/g/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/g/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/k;->b()V

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/k;->b:Lcom/uzmap/pkg/uzcore/g/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/uzmap/pkg/uzcore/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/k;->b()V

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/k;->b:Lcom/uzmap/pkg/uzcore/g/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/g/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final clickEffect(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/k;->c()V

    iget-object p1, p0, Lcom/uzmap/pkg/b/a/k;->a:Lcom/deepe/a/d/g;

    invoke-virtual {p1}, Lcom/deepe/a/d/g;->a()V

    return-void
.end method
