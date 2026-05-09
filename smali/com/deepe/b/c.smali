.class public Lcom/deepe/b/c;
.super Ljava/lang/Object;


# static fields
.field private static h:Lcom/deepe/b/c;


# instance fields
.field private a:Lcom/deepe/b/a/a;

.field private b:Lcom/deepe/b/a;

.field private c:Lcom/deepe/b/d/a;

.field private d:Lcom/uzmap/pkg/uzcore/f/c;

.field private e:Lcom/deepe/b/g/a;

.field private f:Lcom/deepe/b/g/b;

.field private g:Lcom/deepe/b/c/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/deepe/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/deepe/b/a;->a(Landroid/content/Context;Lcom/deepe/b/b;)Lcom/deepe/b/a;

    move-result-object p2

    iput-object p2, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-static {p1, p2}, Lcom/deepe/b/a/a;->a(Landroid/content/Context;Lcom/deepe/b/a;)Lcom/deepe/b/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/b/c;->a:Lcom/deepe/b/a/a;

    new-instance p1, Lcom/deepe/b/d/a;

    iget-object p2, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-direct {p1, p2}, Lcom/deepe/b/d/a;-><init>(Lcom/deepe/b/a;)V

    iput-object p1, p0, Lcom/deepe/b/c;->c:Lcom/deepe/b/d/a;

    new-instance p1, Lcom/uzmap/pkg/uzcore/f/c;

    iget-object p2, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-direct {p1, p2}, Lcom/uzmap/pkg/uzcore/f/c;-><init>(Lcom/deepe/b/a;)V

    iput-object p1, p0, Lcom/deepe/b/c;->d:Lcom/uzmap/pkg/uzcore/f/c;

    new-instance p1, Lcom/deepe/b/g/a;

    iget-object p2, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-direct {p1, p2}, Lcom/deepe/b/g/a;-><init>(Lcom/deepe/b/a;)V

    iput-object p1, p0, Lcom/deepe/b/c;->e:Lcom/deepe/b/g/a;

    new-instance p1, Lcom/deepe/b/g/b;

    iget-object p2, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-direct {p1, p2}, Lcom/deepe/b/g/b;-><init>(Lcom/deepe/b/a;)V

    iput-object p1, p0, Lcom/deepe/b/c;->f:Lcom/deepe/b/g/b;

    new-instance p1, Lcom/deepe/b/c/a;

    iget-object p2, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-direct {p1, p2}, Lcom/deepe/b/c/a;-><init>(Lcom/deepe/b/a;)V

    iput-object p1, p0, Lcom/deepe/b/c;->g:Lcom/deepe/b/c/a;

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/deepe/b/b;)Lcom/deepe/b/c;
    .locals 1

    sget-object v0, Lcom/deepe/b/c;->h:Lcom/deepe/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/b/c;

    invoke-direct {v0, p0, p1}, Lcom/deepe/b/c;-><init>(Landroid/content/Context;Lcom/deepe/b/b;)V

    sput-object v0, Lcom/deepe/b/c;->h:Lcom/deepe/b/c;

    :cond_0
    sget-object p0, Lcom/deepe/b/c;->h:Lcom/deepe/b/c;

    return-object p0
.end method

.method static synthetic a(Lcom/deepe/b/c;)Lcom/deepe/b/d/a;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/c;->c:Lcom/deepe/b/d/a;

    return-object p0
.end method

.method private f()V
    .locals 3

    new-instance v0, Lcom/deepe/b/c$1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deepe-startupReport-YMPD-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/deepe/b/c$1;-><init>(Lcom/deepe/b/c;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepe/b/c$1;->start()V

    return-void
.end method

.method private g()V
    .locals 3

    new-instance v0, Lcom/deepe/b/c$2;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Deepe-startupReport-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/deepe/b/c$2;-><init>(Lcom/deepe/b/c;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepe/b/c$2;->start()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, "MAM DisPatchAppResume"

    invoke-static {v0}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepe/b/c;->a:Lcom/deepe/b/a/a;

    invoke-virtual {v0}, Lcom/deepe/b/a/a;->b()V

    return-void
.end method

.method public a(Lcom/deepe/b/d/d;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/c;->c:Lcom/deepe/b/d/a;

    invoke-virtual {v0, p1}, Lcom/deepe/b/d/a;->a(Lcom/deepe/b/d/d;)V

    iget-object v0, p0, Lcom/deepe/b/c;->f:Lcom/deepe/b/g/b;

    invoke-virtual {v0, p1}, Lcom/deepe/b/g/b;->a(Lcom/deepe/b/d/d;)V

    return-void
.end method

.method public a(Lcom/deepe/b/d/e;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/c;->c:Lcom/deepe/b/d/a;

    invoke-virtual {v0, p1}, Lcom/deepe/b/d/a;->a(Lcom/deepe/b/d/e;)V

    iget-object v0, p0, Lcom/deepe/b/c;->e:Lcom/deepe/b/g/a;

    invoke-virtual {v0, p1}, Lcom/deepe/b/g/a;->a(Lcom/deepe/b/d/e;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const-string v0, "MAM DisPatchAppPause"

    invoke-static {v0}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepe/b/c;->a:Lcom/deepe/b/a/a;

    invoke-virtual {v0}, Lcom/deepe/b/a/a;->c()V

    return-void
.end method

.method public final c()V
    .locals 1

    const-string v0, "MAM DisPatchAppFinish"

    invoke-static {v0}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepe/b/c;->a:Lcom/deepe/b/a/a;

    invoke-virtual {v0}, Lcom/deepe/b/a/a;->d()V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->F()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->B()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    invoke-direct {p0}, Lcom/deepe/b/c;->g()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/deepe/b/c;->f()V

    :cond_2
    iget-object v0, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/deepe/b/c;->e:Lcom/deepe/b/g/a;

    invoke-virtual {v0}, Lcom/deepe/b/g/a;->a()V

    :cond_3
    iget-object v0, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->F()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->C()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/deepe/b/c;->f:Lcom/deepe/b/g/b;

    invoke-virtual {v0}, Lcom/deepe/b/g/b;->a()V

    :cond_4
    iget-object v0, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v1, v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/deepe/b/c;->g:Lcom/deepe/b/c/a;

    invoke-virtual {v0}, Lcom/deepe/b/c/a;->a()V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/deepe/b/c;->d:Lcom/uzmap/pkg/uzcore/f/c;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/f/c;->a()V

    :cond_6
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/c;->b:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->F()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/b/c;->a:Lcom/deepe/b/a/a;

    invoke-virtual {v0}, Lcom/deepe/b/a/a;->e()V

    return-void
.end method
