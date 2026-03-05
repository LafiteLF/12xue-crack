.class public Lcom/apicloud/a/d/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/d/g$a;
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/d;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/apicloud/a/c/u;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/deepe/c/c/p;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/d/g;->a:Lcom/apicloud/a/d;

    invoke-interface {p1}, Lcom/apicloud/a/d;->s()Lcom/apicloud/a/c/u;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/d/g;->c:Lcom/apicloud/a/c/u;

    iget-object p1, p0, Lcom/apicloud/a/d/g;->a:Lcom/apicloud/a/d;

    invoke-interface {p1}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/d/g;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/apicloud/a/d/g;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/apicloud/a/d/g$a;)Lcom/apicloud/a/d/f;
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/d/g;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/d/g;->b:Ljava/util/List;

    new-instance v2, Lcom/apicloud/a/d/f;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/apicloud/a/d/f;-><init>(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Lcom/apicloud/a/d/g$a;)V

    iget-object p1, p0, Lcom/apicloud/a/d/g;->b:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method private static a(Lcom/deepe/c/c/s;)V
    .locals 1

    iget-object p0, p0, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The image path is empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/deepe/c/c/s;Lcom/apicloud/a/d/f;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/d/g;->g:Lcom/deepe/c/c/p;

    if-nez v0, :cond_0

    const-string p1, "acw"

    const-string p2, "loadr remote image failed, no BitmapFetcher found\uff01"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcom/apicloud/a/d/g$1;

    invoke-direct {v1, p0, p2}, Lcom/apicloud/a/d/g$1;-><init>(Lcom/apicloud/a/d/g;Lcom/apicloud/a/d/f;)V

    invoke-virtual {v0, p1, v1}, Lcom/deepe/c/c/p;->a(Lcom/deepe/c/c/s;Lcom/deepe/c/c/q;)V

    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/a/k;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/deepe/c/k/c;

    invoke-direct {v0, p0}, Lcom/deepe/c/k/c;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/a;->a()Lcom/deepe/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepe/a;->c()Lcom/deepe/c/k/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/deepe/c/k/b;->a(Lcom/deepe/c/k/c;)Lcom/deepe/c/k/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/k/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/k/a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/deepe/c/i/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/deepe/c/c/s;Lcom/apicloud/a/d/f;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/d/g;->g:Lcom/deepe/c/c/p;

    if-nez v0, :cond_0

    const-string p1, "acw"

    const-string p2, "loadr remote image failed, no BitmapFetcher found\uff01"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/deepe/c/c/s;->g:Z

    invoke-static {p1}, Lcom/deepe/c/c/p;->b(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Lcom/apicloud/a/d/f;->a(Lcom/deepe/c/c/m;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/apicloud/a/d/f;->a(Lcom/deepe/c/c/d;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/d/g;->b:Ljava/util/List;

    invoke-static {}, Lcom/deepe/c/c/p;->a()Lcom/deepe/c/c/p;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/d/g;->g:Lcom/deepe/c/c/p;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/d/g;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/d/g;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/d/g;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "widget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/d/g;->e:Ljava/lang/String;

    return-void
.end method

.method private c(Lcom/deepe/c/c/s;Lcom/apicloud/a/d/f;)V
    .locals 0

    iget-object p1, p1, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/deepe/c/c/w;->a(Ljava/lang/String;)Lcom/deepe/c/c/m;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Lcom/apicloud/a/d/f;->a(Lcom/deepe/c/c/m;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/apicloud/a/d/f;->a(Lcom/deepe/c/c/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/x;->s(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/x;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/d/g;->c:Lcom/apicloud/a/c/u;

    invoke-interface {v0, p1}, Lcom/apicloud/a/c/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/x;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/apicloud/a/d/g;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private h(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/d/g;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, Lcom/apicloud/a/d/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/a/d/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/apicloud/a/d/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/apicloud/a/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadCode Do not support http res for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/apicloud/a/b/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/deepe/c/c/s;Lcom/apicloud/a/d/g$a;)V
    .locals 1

    invoke-static {p1}, Lcom/apicloud/a/d/g;->a(Lcom/deepe/c/c/s;)V

    iget-object v0, p1, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/apicloud/a/d/g;->a(Ljava/lang/String;Lcom/apicloud/a/d/g$a;)Lcom/apicloud/a/d/f;

    move-result-object p2

    invoke-virtual {p1}, Lcom/deepe/c/c/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/d/g;->c(Lcom/deepe/c/c/s;Lcom/apicloud/a/d/f;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/apicloud/a/d/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/deepe/c/c/s;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/d/g;->a(Lcom/deepe/c/c/s;Lcom/apicloud/a/d/f;)V

    return-void

    :cond_1
    iget-object v0, p1, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/apicloud/a/d/g;->g(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/d/g;->b(Lcom/deepe/c/c/s;Lcom/apicloud/a/d/f;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "file:///android_asset/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/a/d/g;->d:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/apicloud/a/g/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/d/g;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/apicloud/a/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/d/g;->e(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {}, Lcom/apicloud/a/d/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/d/g;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    return v0

    :cond_2
    const-string v0, "/storage/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
