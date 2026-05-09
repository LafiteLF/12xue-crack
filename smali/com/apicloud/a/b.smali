.class public Lcom/apicloud/a/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/apicloud/a/d;

.field private b:Lcom/apicloud/a/c/e;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Lcom/apicloud/a/f/a/a;

.field private f:Lcom/apicloud/a/c/g$a;

.field private g:Lcom/apicloud/a/c/c;

.field private h:Lcom/apicloud/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/b;->c:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/b;->a:Lcom/apicloud/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/apicloud/a/d;->a(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/apicloud/a/b;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->t()V

    :cond_0
    iput-object v1, p0, Lcom/apicloud/a/b;->b:Lcom/apicloud/a/c/e;

    iput-object v1, p0, Lcom/apicloud/a/b;->a:Lcom/apicloud/a/d;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/b;Lcom/apicloud/a/c/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/b;->a(Lcom/apicloud/a/c/e;)V

    return-void
.end method

.method private final a(Lcom/apicloud/a/c/e;)V
    .locals 7

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/apicloud/a/c/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/b;->f:Lcom/apicloud/a/c/g$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/c/e;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/apicloud/a/b;->f:Lcom/apicloud/a/c/g$a;

    sget-object v2, Lcom/apicloud/a/c/g$b;->e:Lcom/apicloud/a/c/g$b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "start js \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" do not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/apicloud/a/c/g$a;->a(Lcom/apicloud/a/c/g$b;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/deepe/d/g;->i()Lcom/deepe/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/d/g;->e()V

    iget-object v0, p0, Lcom/apicloud/a/b;->a:Lcom/apicloud/a/d;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/apicloud/a/d;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/apicloud/a/b;->a()V

    :cond_2
    iput-object p1, p0, Lcom/apicloud/a/b;->b:Lcom/apicloud/a/c/e;

    new-instance v0, Lcom/apicloud/a/c/n;

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/n;-><init>(Lcom/apicloud/a/b;)V

    invoke-virtual {v0, p1}, Lcom/apicloud/a/c/n;->a(Lcom/apicloud/a/c/e;)Lcom/apicloud/a/d;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/b;->a:Lcom/apicloud/a/d;

    invoke-virtual {v0}, Lcom/apicloud/a/c/n;->a()V

    invoke-static {}, Lcom/deepe/d/g;->i()Lcom/deepe/d/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepe/d/g;->h()V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "start js can not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static final e(Ljava/lang/String;)Lcom/apicloud/a/c/e;
    .locals 2

    new-instance v0, Lcom/apicloud/a/a/b;

    invoke-direct {v0, p0}, Lcom/apicloud/a/a/b;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/apicloud/a/c/e;

    invoke-virtual {v0}, Lcom/apicloud/a/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/apicloud/a/c/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/apicloud/a/a/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/c/e;->a(Ljava/util/Map;)V

    const-string v0, "widget/modules"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/c/e;->a(Landroid/net/Uri;)V

    return-object p0
.end method

.method public static n()V
    .locals 0

    invoke-static {}, Lcom/apicloud/a/g/h;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/apicloud/a/c/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/b;->f:Lcom/apicloud/a/c/g$a;

    return-void
.end method

.method public final a(Lcom/apicloud/a/f/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/b;->e:Lcom/apicloud/a/f/a/a;

    return-void
.end method

.method public a(Lcom/apicloud/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/b;->h:Lcom/apicloud/b/c;

    return-void
.end method

.method public b(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/b;->a:Lcom/apicloud/a/d;

    invoke-interface {v0, p1}, Lcom/apicloud/a/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apicloud/a/b$1;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/a/b$1;-><init>(Lcom/apicloud/a/b;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/apicloud/a/a/c;->a(Lcom/apicloud/a/a/c$b;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/b;->e(Ljava/lang/String;)Lcom/apicloud/a/c/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/b;->a(Lcom/apicloud/a/c/e;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "start uri can not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/b;->a:Lcom/apicloud/a/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/apicloud/a/d;->a(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/apicloud/a/b;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->u()V

    :cond_0
    iput-object v1, p0, Lcom/apicloud/a/b;->b:Lcom/apicloud/a/c/e;

    iput-object v1, p0, Lcom/apicloud/a/b;->a:Lcom/apicloud/a/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/b;->d:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AndroidReferer destroy ... "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apicloud/a/b;->a:Lcom/apicloud/a/d;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/d/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/b;->a:Lcom/apicloud/a/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/apicloud/a/d;->a()Lcom/apicloud/a/c/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/apicloud/a/c/o;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e()Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Lcom/apicloud/a/f/a/a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/b;->e:Lcom/apicloud/a/f/a/a;

    return-object v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/b;->g:Lcom/apicloud/a/c/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apicloud/a/c/c;->a()V

    :cond_0
    return-void
.end method

.method public final h()Lcom/apicloud/a/c/g$a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/b;->f:Lcom/apicloud/a/c/g$a;

    return-object v0
.end method

.method public final i()Lcom/apicloud/b/c;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/b;->h:Lcom/apicloud/b/c;

    return-object v0
.end method

.method public final j()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/b;->d:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    invoke-static {}, Lcom/deepe/a;->b()Z

    move-result v0

    return v0
.end method

.method public final m()Lcom/apicloud/a/c/e;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/b;->b:Lcom/apicloud/a/c/e;

    return-object v0
.end method
