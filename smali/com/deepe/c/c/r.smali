.class Lcom/deepe/c/c/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/r$a;,
        Lcom/deepe/c/c/r$b;,
        Lcom/deepe/c/c/r$c;,
        Lcom/deepe/c/c/r$d;,
        Lcom/deepe/c/c/r$e;
    }
.end annotation


# instance fields
.field a:I

.field private final b:Lcom/deepe/c/j/n;

.field private final c:Lcom/deepe/c/c/r$c;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/deepe/c/c/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/deepe/c/c/r$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/deepe/c/j/n;Lcom/deepe/c/c/r$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/r;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/r;->e:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/deepe/c/c/r;->f:Landroid/os/Handler;

    const/16 v0, 0x64

    iput v0, p0, Lcom/deepe/c/c/r;->a:I

    iput-object p1, p0, Lcom/deepe/c/c/r;->b:Lcom/deepe/c/j/n;

    iput-object p2, p0, Lcom/deepe/c/c/r;->c:Lcom/deepe/c/c/r$c;

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/deepe/c/c/r;
    .locals 4

    new-instance v0, Lcom/deepe/c/j/d/g;

    new-instance v1, Lcom/deepe/c/c/r$e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/deepe/c/c/r$e;-><init>(Lcom/deepe/c/c/r$e;)V

    new-instance v2, Lcom/deepe/c/j/e/n;

    invoke-direct {v2}, Lcom/deepe/c/j/e/n;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/deepe/c/j/d/g;-><init>(Lcom/deepe/c/j/d/g$a;Lcom/deepe/c/j/c;)V

    invoke-static {p0}, Lcom/deepe/c/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, ""

    invoke-static {p0, v0, v2, v1, v3}, Lcom/deepe/c/j/d/k;->a(Landroid/content/Context;Lcom/deepe/c/j/d/f;ILjava/lang/String;Ljava/lang/String;)Lcom/deepe/c/j/n;

    move-result-object v0

    invoke-static {p0}, Lcom/deepe/c/c/n;->a(Landroid/content/Context;)Lcom/deepe/c/c/n;

    move-result-object p0

    invoke-virtual {v0}, Lcom/deepe/c/j/n;->d()Lcom/deepe/c/j/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/deepe/c/c/n;->a(Lcom/deepe/c/j/a;)V

    new-instance v1, Lcom/deepe/c/c/r;

    invoke-direct {v1, v0, p0}, Lcom/deepe/c/c/r;-><init>(Lcom/deepe/c/j/n;Lcom/deepe/c/c/r$c;)V

    return-object v1
.end method

.method private a(Lcom/deepe/c/c/s;Ljava/lang/String;)Lcom/deepe/c/j/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/c/s;",
            "Ljava/lang/String;",
            ")",
            "Lcom/deepe/c/j/l<",
            "Lcom/deepe/c/c/m;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Lcom/deepe/c/c/s;->f:Landroid/graphics/Bitmap$Config;

    new-instance v0, Lcom/deepe/c/c/t;

    iget-object v1, p1, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    new-instance v2, Lcom/deepe/c/c/r$1;

    invoke-direct {v2, p0, p2}, Lcom/deepe/c/c/r$1;-><init>(Lcom/deepe/c/c/r;Ljava/lang/String;)V

    new-instance v3, Lcom/deepe/c/c/r$2;

    invoke-direct {v3, p0, p2}, Lcom/deepe/c/c/r$2;-><init>(Lcom/deepe/c/c/r;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/deepe/c/c/t;-><init>(Ljava/lang/String;Lcom/deepe/c/j/o$b;Lcom/deepe/c/c/s;Lcom/deepe/c/j/o$a;)V

    iget-boolean p1, p1, Lcom/deepe/c/c/s;->i:Z

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/t;->setDeliverInThread(Z)Lcom/deepe/c/j/l;

    return-object v0
.end method

.method static synthetic a(Lcom/deepe/c/c/r;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/r;->e:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic a(Lcom/deepe/c/c/r;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/r;->g:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/r;Ljava/lang/String;Lcom/deepe/c/c/m;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/r;->a(Ljava/lang/String;Lcom/deepe/c/c/m;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/r;Ljava/lang/String;Lcom/deepe/c/j/r;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/r;->a(Ljava/lang/String;Lcom/deepe/c/j/r;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/deepe/c/c/m;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/r;->c:Lcom/deepe/c/c/r$c;

    invoke-interface {v0, p1, p2}, Lcom/deepe/c/c/r$c;->a(Ljava/lang/String;Lcom/deepe/c/c/m;)V

    iget-object v0, p0, Lcom/deepe/c/c/r;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/r$a;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/deepe/c/c/r$a;->a(Lcom/deepe/c/c/r$a;Lcom/deepe/c/c/m;)V

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/r;->a(Ljava/lang/String;Lcom/deepe/c/c/r$a;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/deepe/c/c/r$a;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/r;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/deepe/c/c/r;->g:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    new-instance p1, Lcom/deepe/c/c/r$3;

    invoke-direct {p1, p0}, Lcom/deepe/c/c/r$3;-><init>(Lcom/deepe/c/c/r;)V

    iput-object p1, p0, Lcom/deepe/c/c/r;->g:Ljava/lang/Runnable;

    invoke-static {p2}, Lcom/deepe/c/c/r$a;->c(Lcom/deepe/c/c/r$a;)Lcom/deepe/c/j/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepe/c/j/l;->isDeliverInThread()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/deepe/c/c/r;->g:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/c/r;->f:Landroid/os/Handler;

    iget-object p2, p0, Lcom/deepe/c/c/r;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/deepe/c/j/r;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/r;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/r$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/deepe/c/c/r$a;->a(Lcom/deepe/c/j/r;)V

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/r;->a(Ljava/lang/String;Lcom/deepe/c/c/r$a;)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/deepe/c/c/s;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/c/b;->a(Lcom/deepe/c/c/s;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/r;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/c/r;->b(Lcom/deepe/c/c/s;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/c/r;->c:Lcom/deepe/c/c/r$c;

    invoke-interface {v1, v0, p1}, Lcom/deepe/c/c/r$c;->a(Ljava/lang/String;Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/deepe/c/c/s;Lcom/deepe/c/c/r$d;)Lcom/deepe/c/c/r$b;
    .locals 9

    invoke-direct {p0}, Lcom/deepe/c/c/r;->d()V

    invoke-static {p1}, Lcom/deepe/c/c/r;->b(Lcom/deepe/c/c/s;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/deepe/c/c/r;->c:Lcom/deepe/c/c/r$c;

    invoke-virtual {p1}, Lcom/deepe/c/c/s;->d()Lcom/deepe/c/c/s;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/deepe/c/c/r$c;->a(Ljava/lang/String;Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;

    move-result-object v2

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    new-instance v6, Lcom/deepe/c/c/r$b;

    iget-object v3, p1, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepe/c/c/r$b;-><init>(Lcom/deepe/c/c/r;Lcom/deepe/c/c/m;Ljava/lang/String;Ljava/lang/String;Lcom/deepe/c/c/r$d;)V

    invoke-interface {p2, v6, v7}, Lcom/deepe/c/c/r$d;->a(Lcom/deepe/c/c/r$b;Z)V

    return-object v6

    :cond_0
    new-instance v8, Lcom/deepe/c/c/r$b;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    move-object v0, v8

    move-object v1, p0

    move-object v4, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/deepe/c/c/r$b;-><init>(Lcom/deepe/c/c/r;Lcom/deepe/c/c/m;Ljava/lang/String;Ljava/lang/String;Lcom/deepe/c/c/r$d;)V

    invoke-interface {p2, v8, v7}, Lcom/deepe/c/c/r$d;->a(Lcom/deepe/c/c/r$b;Z)V

    iget-object v0, p0, Lcom/deepe/c/c/r;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/r$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v8}, Lcom/deepe/c/c/r$a;->a(Lcom/deepe/c/c/r$b;)V

    return-object v8

    :cond_1
    invoke-direct {p0, p1, v6}, Lcom/deepe/c/c/r;->a(Lcom/deepe/c/c/s;Ljava/lang/String;)Lcom/deepe/c/j/l;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/c/r;->b:Lcom/deepe/c/j/n;

    invoke-virtual {v1, v0}, Lcom/deepe/c/j/n;->b(Lcom/deepe/c/j/l;)Lcom/deepe/c/j/l;

    iget-object v1, p0, Lcom/deepe/c/c/r;->d:Ljava/util/HashMap;

    new-instance v2, Lcom/deepe/c/c/r$a;

    invoke-direct {v2, p0, v0, v8}, Lcom/deepe/c/c/r$a;-><init>(Lcom/deepe/c/c/r;Lcom/deepe/c/j/l;Lcom/deepe/c/c/r$b;)V

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v8
.end method

.method public b()Lcom/deepe/c/j/n;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/r;->b:Lcom/deepe/c/j/n;

    return-object v0
.end method

.method public c()Lcom/deepe/c/c/r$c;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/r;->c:Lcom/deepe/c/c/r$c;

    return-object v0
.end method
