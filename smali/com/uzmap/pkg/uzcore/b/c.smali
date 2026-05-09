.class final Lcom/uzmap/pkg/uzcore/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/deepe/c/i/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/uzmap/pkg/b/c/c;->b(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/b/c;->f:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/uzmap/pkg/b/c/c;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p2}, Lcom/uzmap/pkg/b/c/c;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget p1, Lcom/uzmap/pkg/b/a/b;->a:I

    if-lt p1, v1, :cond_0

    invoke-static {v2}, Lcom/uzmap/pkg/b/c/c;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/uzmap/pkg/uzcore/b/c;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    if-lt v0, v1, :cond_2

    invoke-static {v2}, Lcom/uzmap/pkg/b/c/c;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_2
    return-object p1
.end method


# virtual methods
.method final a()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/c;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/c;->e:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/b/c;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/c;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    invoke-static {v1}, Lcom/uzmap/pkg/b/c/c;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/c;->b:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/c;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/b/c;->f:Ljava/lang/String;

    return-void
.end method

.method final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/c;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/c;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/b/c;->e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/c;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/b/c;->e:Ljava/lang/String;

    return-void
.end method

.method final c()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/c;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/b/c;->e(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/b/c;->d:Ljava/lang/String;

    return-void
.end method

.method final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/b/c;->c:Ljava/lang/String;

    return-void
.end method
