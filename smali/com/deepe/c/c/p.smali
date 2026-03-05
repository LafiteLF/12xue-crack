.class public Lcom/deepe/c/c/p;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/deepe/c/c/p;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/deepe/c/c/r$c;

.field private c:Lcom/deepe/c/c/r;

.field private d:Lcom/deepe/c/c/j;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/p;->a:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/deepe/c/c/p;
    .locals 1

    invoke-static {}, Lcom/deepe/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/c/p;->a(Landroid/content/Context;)Lcom/deepe/c/c/p;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/deepe/c/c/p;
    .locals 1

    sget-object v0, Lcom/deepe/c/c/p;->e:Lcom/deepe/c/c/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/p;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/deepe/c/c/p;->e:Lcom/deepe/c/c/p;

    invoke-direct {v0}, Lcom/deepe/c/c/p;->b()V

    :cond_0
    sget-object p0, Lcom/deepe/c/c/p;->e:Lcom/deepe/c/c/p;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/c/c/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;
    .locals 4

    invoke-virtual {p0}, Lcom/deepe/c/c/s;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/deepe/c/c/p;->d(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/deepe/c/c/p;->a()Lcom/deepe/c/c/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/p;->a(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/deepe/c/c/p;->d(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/deepe/c/c/m;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/deepe/c/c/m;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/deepe/c/c/s;->b:I

    iget v3, p0, Lcom/deepe/c/c/s;->c:I

    invoke-static {v1, v2, v3}, Lcom/deepe/c/i/g;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/deepe/c/c/m;->a(Landroid/graphics/Bitmap;)Lcom/deepe/c/c/m;

    move-result-object v0

    invoke-static {p0}, Lcom/deepe/c/c/b;->a(Lcom/deepe/c/c/s;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/deepe/c/c/p;->a()Lcom/deepe/c/c/p;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/deepe/c/c/p;->a(Ljava/lang/String;Lcom/deepe/c/c/m;)V

    :cond_2
    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/c/r;->a(Landroid/content/Context;)Lcom/deepe/c/c/r;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/c/p;->c:Lcom/deepe/c/c/r;

    invoke-virtual {v0}, Lcom/deepe/c/c/r;->c()Lcom/deepe/c/c/r$c;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/c/p;->b:Lcom/deepe/c/c/r$c;

    iget-object v0, p0, Lcom/deepe/c/c/p;->c:Lcom/deepe/c/c/r;

    iget-object v1, p0, Lcom/deepe/c/c/p;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/deepe/c/c/j;->a(Lcom/deepe/c/c/x;Landroid/content/Context;)Lcom/deepe/c/c/j;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/c/p;->d:Lcom/deepe/c/c/j;

    return-void
.end method

.method private c(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;
    .locals 2

    invoke-static {}, Lcom/deepe/c/c/p;->a()Lcom/deepe/c/c/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/p;->a(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/deepe/c/c/k;->a(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/deepe/c/c/p;->a(Lcom/deepe/c/c/k;)Lcom/deepe/c/c/g;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, p1, Lcom/deepe/c/c/s;->g:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/deepe/c/c/g;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/deepe/c/c/g;->b:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lcom/deepe/c/c/s;->a(Ljava/lang/String;)Lcom/deepe/c/c/s;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/deepe/c/c/s;->g:Z

    invoke-static {v0}, Lcom/deepe/c/c/p;->d(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/deepe/c/c/b;->a(Lcom/deepe/c/c/s;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/deepe/c/c/p;->a()Lcom/deepe/c/c/p;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/deepe/c/c/p;->a(Ljava/lang/String;Lcom/deepe/c/c/m;)V

    :cond_2
    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private static final d(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;
    .locals 2

    iget-object p0, p0, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Lcom/deepe/c/c/y;->a(Ljava/lang/String;)Lcom/deepe/c/c/m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/deepe/c/c/k;)Lcom/deepe/c/c/g;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/p;->d:Lcom/deepe/c/c/j;

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/j;->a(Lcom/deepe/c/c/k;)Lcom/deepe/c/c/g;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/p;->c:Lcom/deepe/c/c/r;

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/r;->a(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;

    move-result-object p1

    return-object p1
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/p;->d:Lcom/deepe/c/c/j;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/c/j;->a(J)V

    return-void
.end method

.method public final a(Lcom/deepe/c/c/k;Lcom/deepe/c/c/i;)V
    .locals 1

    new-instance v0, Lcom/deepe/c/c/p$2;

    invoke-direct {v0, p0, p2}, Lcom/deepe/c/c/p$2;-><init>(Lcom/deepe/c/c/p;Lcom/deepe/c/c/i;)V

    iget-object p2, p0, Lcom/deepe/c/c/p;->d:Lcom/deepe/c/c/j;

    invoke-virtual {p2, p1, v0}, Lcom/deepe/c/c/j;->a(Lcom/deepe/c/c/k;Lcom/deepe/c/c/j$c;)Lcom/deepe/c/c/j$b;

    return-void
.end method

.method public final a(Lcom/deepe/c/c/s;Lcom/deepe/c/c/q;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepe/c/c/p;->c(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2, v0}, Lcom/deepe/c/c/q;->onGetSuccess(Lcom/deepe/c/c/m;)V

    return-void

    :cond_1
    new-instance v0, Lcom/deepe/c/c/p$1;

    invoke-direct {v0, p0, p2}, Lcom/deepe/c/c/p$1;-><init>(Lcom/deepe/c/c/p;Lcom/deepe/c/c/q;)V

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p2, p1, Lcom/deepe/c/c/s;->f:Landroid/graphics/Bitmap$Config;

    iget-object p2, p0, Lcom/deepe/c/c/p;->c:Lcom/deepe/c/c/r;

    invoke-virtual {p2, p1, v0}, Lcom/deepe/c/c/r;->a(Lcom/deepe/c/c/s;Lcom/deepe/c/c/r$d;)Lcom/deepe/c/c/r$b;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/deepe/c/c/m;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/p;->b:Lcom/deepe/c/c/r$c;

    invoke-interface {v0, p1, p2}, Lcom/deepe/c/c/r$c;->a(Ljava/lang/String;Lcom/deepe/c/c/m;)V

    return-void
.end method
