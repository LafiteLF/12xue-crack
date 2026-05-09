.class abstract Lcom/apicloud/a/i/e/g;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/apicloud/a/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/e/g;->a:Lcom/apicloud/a/d;

    return-void
.end method

.method static b(Ljava/lang/String;)Lcom/apicloud/a/g/l;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/view/View;)Lcom/apicloud/c/b/b;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/e/e;->a(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(F)F
    .locals 0

    invoke-static {p1}, Lcom/apicloud/a/g/h;->a(F)F

    move-result p1

    return p1
.end method

.method a(Lcom/apicloud/a/g/l;)F
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/e/g;->a()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->g()Lcom/apicloud/a/g/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/h;->a(Lcom/apicloud/a/g/l;)Lcom/apicloud/a/g/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result p1

    return p1
.end method

.method a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method final a()Lcom/apicloud/a/d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/e/g;->a:Lcom/apicloud/a/d;

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/e/g;->a()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->s()Lcom/apicloud/a/c/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/c/u;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/lang/String;)F
    .locals 0

    invoke-static {p1}, Lcom/apicloud/a/i/e/g;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/e/g;->a(Lcom/apicloud/a/g/l;)F

    move-result p1

    return p1
.end method

.method final c()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/e/g;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->j()Z

    move-result v0

    return v0
.end method
