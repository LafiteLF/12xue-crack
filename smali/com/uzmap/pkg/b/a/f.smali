.class public Lcom/uzmap/pkg/b/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/b/a/f$a;,
        Lcom/uzmap/pkg/b/a/f$b;
    }
.end annotation


# instance fields
.field private a:Lcom/deepe/a/d/c;

.field private b:Lcom/deepe/a/d/d;

.field private c:Landroid/content/Context;

.field private d:Lcom/uzmap/pkg/b/a/f$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/f;->c:Landroid/content/Context;

    return-void
.end method

.method private final f()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/f;->b:Lcom/deepe/a/d/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/f;->d:Lcom/uzmap/pkg/b/a/f$b;

    invoke-virtual {v0, v1}, Lcom/deepe/a/d/d;->a(Lcom/deepe/a/d/d$a;)V

    :cond_0
    return-void
.end method

.method private final g()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/f;->a:Lcom/deepe/a/d/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/a/d/c;

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/f;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/deepe/a/d/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/f;->a:Lcom/deepe/a/d/c;

    :cond_0
    return-void
.end method

.method private final h()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/f;->b:Lcom/deepe/a/d/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/a/d/d;

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/f;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/deepe/a/d/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/b/a/f;->b:Lcom/deepe/a/d/d;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/f;->a:Lcom/deepe/a/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/d/c;->b()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/uzmap/pkg/b/a/f$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/f;->g()V

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/f;->a:Lcom/deepe/a/d/c;

    invoke-virtual {v0, p1}, Lcom/deepe/a/d/c;->a(Lcom/deepe/a/d/b;)V

    return-void
.end method

.method public final a(Lcom/uzmap/pkg/b/a/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/f;->d:Lcom/uzmap/pkg/b/a/f$b;

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/f;->f()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/f;->h()V

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/f;->b:Lcom/deepe/a/d/d;

    invoke-static {p2}, Lcom/deepe/a/d/a;->a(Ljava/lang/String;)Lcom/deepe/a/d/a;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/deepe/a/d/d;->a(Ljava/lang/String;Lcom/deepe/a/d/a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/f;->g()V

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/f;->a:Lcom/deepe/a/d/c;

    invoke-virtual {v0, p1}, Lcom/deepe/a/d/c;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/f;->a:Lcom/deepe/a/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/d/c;->c()V

    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/f;->b:Lcom/deepe/a/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/d/d;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/f;->b:Lcom/deepe/a/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/d/d;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()V
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/a/f;->b()V

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/f;->f()V

    return-void
.end method
