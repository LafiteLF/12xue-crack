.class public abstract Lcom/apicloud/c/a/a/j$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/c/a/a/j$e$a;,
        Lcom/apicloud/c/a/a/j$e$b;,
        Lcom/apicloud/c/a/a/j$e$c;
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/c/a/a/j$e$b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apicloud/c/a/a/j$e$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$e;->a:Lcom/apicloud/c/a/a/j$e$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$e;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/apicloud/c/a/a/j$e;->c:J

    iput-wide v0, p0, Lcom/apicloud/c/a/a/j$e;->d:J

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/apicloud/c/a/a/j$e;->e:J

    iput-wide v0, p0, Lcom/apicloud/c/a/a/j$e;->f:J

    return-void
.end method

.method static e(Lcom/apicloud/c/a/a/j$w;)I
    .locals 3

    invoke-static {p0}, Lcom/apicloud/c/a/a/j$w;->d(Lcom/apicloud/c/a/a/j$w;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$w;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$w;->h()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$w;->g()I

    move-result p0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v1, p0, :cond_1

    or-int/lit16 v0, v0, 0x800

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/j$w;)Lcom/apicloud/c/a/a/j$e$c;
    .locals 0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$e;->k()Lcom/apicloud/c/a/a/j$e$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/c/a/a/j$e$c;->a(Lcom/apicloud/c/a/a/j$w;)Lcom/apicloud/c/a/a/j$e$c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/j$w;ILjava/util/List;)Lcom/apicloud/c/a/a/j$e$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/c/a/a/j$t;",
            "Lcom/apicloud/c/a/a/j$w;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/apicloud/c/a/a/j$e$c;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$e;->k()Lcom/apicloud/c/a/a/j$e$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/c/a/a/j$e$c;->a(Lcom/apicloud/c/a/a/j$w;)Lcom/apicloud/c/a/a/j$e$c;

    move-result-object p1

    return-object p1
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/apicloud/c/a/a/j$e;->e:J

    return-void
.end method

.method a(Lcom/apicloud/c/a/a/j$e$b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$e;->a:Lcom/apicloud/c/a/a/j$e$b;

    return-void
.end method

.method public abstract a(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)Z
.end method

.method public abstract a(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)Z
.end method

.method public a(Lcom/apicloud/c/a/a/j$w;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/c/a/a/j$w;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$e;->h(Lcom/apicloud/c/a/a/j$w;)Z

    move-result p1

    return p1
.end method

.method public abstract b()V
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/apicloud/c/a/a/j$e;->c:J

    return-void
.end method

.method public abstract b(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)Z
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/apicloud/c/a/a/j$e;->d:J

    return-void
.end method

.method public abstract c()Z
.end method

.method public abstract c(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)Z
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/apicloud/c/a/a/j$e;->f:J

    return-void
.end method

.method public abstract d(Lcom/apicloud/c/a/a/j$w;)V
.end method

.method public abstract e()V
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/c/a/a/j$e;->e:J

    return-wide v0
.end method

.method public final f(Lcom/apicloud/c/a/a/j$w;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$e;->g(Lcom/apicloud/c/a/a/j$w;)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$e;->a:Lcom/apicloud/c/a/a/j$e$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/j$e$b;->a(Lcom/apicloud/c/a/a/j$w;)V

    :cond_0
    return-void
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/c/a/a/j$e;->c:J

    return-wide v0
.end method

.method public g(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0

    return-void
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/c/a/a/j$e;->d:J

    return-wide v0
.end method

.method public h(Lcom/apicloud/c/a/a/j$w;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/apicloud/c/a/a/j$e;->f:J

    return-wide v0
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/j$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/j$e$a;

    invoke-interface {v2}, Lcom/apicloud/c/a/a/j$e$a;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public k()Lcom/apicloud/c/a/a/j$e$c;
    .locals 1

    new-instance v0, Lcom/apicloud/c/a/a/j$e$c;

    invoke-direct {v0}, Lcom/apicloud/c/a/a/j$e$c;-><init>()V

    return-object v0
.end method
