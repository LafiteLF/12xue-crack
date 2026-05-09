.class Lcom/deepe/c/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/j$a;,
        Lcom/deepe/c/c/j$b;,
        Lcom/deepe/c/c/j$c;,
        Lcom/deepe/c/c/j$d;
    }
.end annotation


# instance fields
.field private final a:Lcom/deepe/c/j/n;

.field private final b:Lcom/deepe/c/c/j$d;

.field private final c:Lcom/deepe/c/i/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/w<",
            "Ljava/lang/String;",
            "Lcom/deepe/c/c/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/deepe/c/i/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/w<",
            "Ljava/lang/String;",
            "Lcom/deepe/c/c/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/deepe/c/j/n;Landroid/os/Handler;Lcom/deepe/c/c/j$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/deepe/c/i/w;

    invoke-direct {v0}, Lcom/deepe/c/i/w;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/j;->c:Lcom/deepe/c/i/w;

    new-instance v0, Lcom/deepe/c/i/w;

    invoke-direct {v0}, Lcom/deepe/c/i/w;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/j;->d:Lcom/deepe/c/i/w;

    iput-object p1, p0, Lcom/deepe/c/c/j;->a:Lcom/deepe/c/j/n;

    iput-object p3, p0, Lcom/deepe/c/c/j;->b:Lcom/deepe/c/c/j$d;

    iput-object p2, p0, Lcom/deepe/c/c/j;->e:Landroid/os/Handler;

    return-void
.end method

.method static a(Lcom/deepe/c/c/x;Landroid/content/Context;)Lcom/deepe/c/c/j;
    .locals 2

    invoke-interface {p0}, Lcom/deepe/c/c/x;->b()Lcom/deepe/c/j/n;

    move-result-object v0

    invoke-interface {p0}, Lcom/deepe/c/c/x;->a()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1}, Lcom/deepe/c/c/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/c/h;->a(Ljava/lang/String;)Lcom/deepe/c/c/h;

    move-result-object p1

    new-instance v1, Lcom/deepe/c/c/j;

    invoke-direct {v1, v0, p0, p1}, Lcom/deepe/c/c/j;-><init>(Lcom/deepe/c/j/n;Landroid/os/Handler;Lcom/deepe/c/c/j$d;)V

    return-object v1
.end method

.method private a(Lcom/deepe/c/c/k;Ljava/lang/String;)Lcom/deepe/c/c/l;
    .locals 4

    new-instance v0, Lcom/deepe/c/c/l;

    iget-object v1, p1, Lcom/deepe/c/c/k;->a:Ljava/lang/String;

    new-instance v2, Lcom/deepe/c/c/j$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/deepe/c/c/j$1;-><init>(Lcom/deepe/c/c/j;Lcom/deepe/c/c/k;Ljava/lang/String;)V

    new-instance v3, Lcom/deepe/c/c/j$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/deepe/c/c/j$2;-><init>(Lcom/deepe/c/c/j;Lcom/deepe/c/c/k;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/deepe/c/c/j;->b:Lcom/deepe/c/c/j$d;

    iget-object p1, p1, Lcom/deepe/c/c/k;->a:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/deepe/c/c/j$d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/deepe/c/c/l;-><init>(Ljava/lang/String;Lcom/deepe/c/j/o$b;Lcom/deepe/c/j/o$a;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/deepe/c/c/j;)Lcom/deepe/c/i/w;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/j;->d:Lcom/deepe/c/i/w;

    return-object p0
.end method

.method static synthetic a(Lcom/deepe/c/c/j;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/j;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/j;Ljava/lang/String;Ljava/lang/String;Lcom/deepe/c/j/r;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepe/c/c/j;->a(Ljava/lang/String;Ljava/lang/String;Lcom/deepe/c/j/r;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/j;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/deepe/c/c/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/deepe/c/c/j$a;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/j;->d:Lcom/deepe/c/i/w;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/i/w;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/deepe/c/c/j;->f:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    new-instance p1, Lcom/deepe/c/c/j$3;

    invoke-direct {p1, p0}, Lcom/deepe/c/c/j$3;-><init>(Lcom/deepe/c/c/j;)V

    iput-object p1, p0, Lcom/deepe/c/c/j;->f:Ljava/lang/Runnable;

    iget-object p2, p0, Lcom/deepe/c/c/j;->e:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/deepe/c/j/r;)V
    .locals 0

    iget-object p1, p0, Lcom/deepe/c/c/j;->c:Lcom/deepe/c/i/w;

    invoke-virtual {p1, p2}, Lcom/deepe/c/i/w;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/j$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/deepe/c/c/j$a;->a(Lcom/deepe/c/j/r;)V

    invoke-direct {p0, p2, p1}, Lcom/deepe/c/c/j;->a(Ljava/lang/String;Lcom/deepe/c/c/j$a;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/deepe/c/c/g;

    invoke-direct {v0}, Lcom/deepe/c/c/g;-><init>()V

    iput-object p1, v0, Lcom/deepe/c/c/g;->a:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/deepe/c/c/g;->b:Ljava/lang/String;

    iget-object p3, v0, Lcom/deepe/c/c/g;->b:Ljava/lang/String;

    invoke-static {p3, p4}, Lcom/deepe/c/c/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/deepe/c/c/g;->c:Ljava/lang/String;

    iget-object p3, p0, Lcom/deepe/c/c/j;->b:Lcom/deepe/c/c/j$d;

    invoke-interface {p3, p1, v0}, Lcom/deepe/c/c/j$d;->a(Ljava/lang/String;Lcom/deepe/c/c/g;)V

    iget-object p1, p0, Lcom/deepe/c/c/j;->c:Lcom/deepe/c/i/w;

    invoke-virtual {p1, p2}, Lcom/deepe/c/i/w;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/j$a;

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lcom/deepe/c/c/j$a;->a(Lcom/deepe/c/c/j$a;Lcom/deepe/c/c/g;)V

    invoke-direct {p0, p2, p1}, Lcom/deepe/c/c/j;->a(Ljava/lang/String;Lcom/deepe/c/c/j$a;)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/deepe/c/c/k;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/k;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/deepe/c/i/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/j;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public a(Lcom/deepe/c/c/k;)Lcom/deepe/c/c/g;
    .locals 1

    iget-object p1, p1, Lcom/deepe/c/c/k;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/deepe/c/c/j;->b:Lcom/deepe/c/c/j$d;

    invoke-interface {v0, p1}, Lcom/deepe/c/c/j$d;->b(Ljava/lang/String;)Lcom/deepe/c/c/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/deepe/c/c/k;Lcom/deepe/c/c/j$c;)Lcom/deepe/c/c/j$b;
    .locals 8

    iget-object v0, p0, Lcom/deepe/c/c/j;->b:Lcom/deepe/c/c/j$d;

    iget-object v1, p1, Lcom/deepe/c/c/k;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/deepe/c/c/j$d;->b(Ljava/lang/String;)Lcom/deepe/c/c/g;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/deepe/c/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/j$b;

    iget-object v5, p1, Lcom/deepe/c/c/k;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/deepe/c/c/j$b;-><init>(Lcom/deepe/c/c/j;Lcom/deepe/c/c/g;Ljava/lang/String;Ljava/lang/String;Lcom/deepe/c/c/j$c;)V

    const/4 p1, 0x1

    invoke-interface {p2, v0, p1}, Lcom/deepe/c/c/j$c;->a(Lcom/deepe/c/c/j$b;Z)V

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/deepe/c/c/j;->b(Lcom/deepe/c/c/k;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/deepe/c/c/j$b;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/deepe/c/c/k;->a:Ljava/lang/String;

    move-object v1, v7

    move-object v2, p0

    move-object v5, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/deepe/c/c/j$b;-><init>(Lcom/deepe/c/c/j;Lcom/deepe/c/c/g;Ljava/lang/String;Ljava/lang/String;Lcom/deepe/c/c/j$c;)V

    iget-object p2, p0, Lcom/deepe/c/c/j;->c:Lcom/deepe/c/i/w;

    invoke-virtual {p2, v0}, Lcom/deepe/c/i/w;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepe/c/c/j$a;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/deepe/c/c/j;->d:Lcom/deepe/c/i/w;

    invoke-virtual {p2, v0}, Lcom/deepe/c/i/w;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepe/c/c/j$a;

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, v7}, Lcom/deepe/c/c/j$a;->a(Lcom/deepe/c/c/j$b;)V

    return-object v7

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/j;->a(Lcom/deepe/c/c/k;Ljava/lang/String;)Lcom/deepe/c/c/l;

    move-result-object p1

    iget-object p2, p0, Lcom/deepe/c/c/j;->a:Lcom/deepe/c/j/n;

    invoke-virtual {p2, p1}, Lcom/deepe/c/j/n;->b(Lcom/deepe/c/j/l;)Lcom/deepe/c/j/l;

    iget-object p2, p0, Lcom/deepe/c/c/j;->c:Lcom/deepe/c/i/w;

    new-instance v1, Lcom/deepe/c/c/j$a;

    invoke-direct {v1, p0, p1, v7}, Lcom/deepe/c/c/j$a;-><init>(Lcom/deepe/c/c/j;Lcom/deepe/c/j/l;Lcom/deepe/c/c/j$b;)V

    invoke-virtual {p2, v0, v1}, Lcom/deepe/c/i/w;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v7
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/j;->b:Lcom/deepe/c/c/j$d;

    invoke-interface {v0, p1, p2}, Lcom/deepe/c/c/j$d;->a(J)V

    return-void
.end method

.method public b()Lcom/deepe/c/j/n;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/j;->a:Lcom/deepe/c/j/n;

    return-object v0
.end method
