.class Lcom/apicloud/a/i/e/i;
.super Lcom/apicloud/a/i/e/g;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e/g;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private static a(Landroid/view/View;)Lcom/apicloud/a/g/d/l;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/apicloud/a/g/d/l;->a(Landroid/view/View;Z)Lcom/apicloud/a/g/d/l;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 6

    invoke-static {p2}, Lcom/apicloud/a/g/e/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "none 0s ease 0s"

    :cond_0
    invoke-static {p2}, Lcom/apicloud/a/g/m;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lcom/apicloud/a/i/e/i;->a(Landroid/view/View;)Lcom/apicloud/a/g/d/l;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const/4 v2, 0x1

    aget-object v2, p2, v2

    array-length v3, p2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    aget-object v1, p2, v1

    goto :goto_0

    :cond_2
    const-string v1, "ease"

    :goto_0
    array-length v3, p2

    const/4 v5, 0x4

    if-lt v3, v5, :cond_3

    aget-object p2, p2, v4

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/e/i;->a(Lcom/apicloud/a/g/d/l;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lcom/apicloud/a/i/e/i;->b(Lcom/apicloud/a/g/d/l;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/e/i;->c(Lcom/apicloud/a/g/d/l;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/i;->d(Lcom/apicloud/a/g/d/l;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private a(Lcom/apicloud/a/g/d/l;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Lcom/apicloud/a/g/m;->g(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Lcom/apicloud/a/g/d/l;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 2

    const-string v0, "transition"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/e/i;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    const-string v0, "transitionProperty"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/apicloud/a/i/e/i;->a(Landroid/view/View;)Lcom/apicloud/a/g/d/l;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/i/e/i;->a(Lcom/apicloud/a/g/d/l;Ljava/lang/String;)V

    :cond_1
    const-string v0, "transitionDuration"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/apicloud/a/i/e/i;->a(Landroid/view/View;)Lcom/apicloud/a/g/d/l;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/i/e/i;->b(Lcom/apicloud/a/g/d/l;Ljava/lang/String;)V

    :cond_2
    const-string v0, "transitionTimingFunction"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/apicloud/a/i/e/i;->a(Landroid/view/View;)Lcom/apicloud/a/g/d/l;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/i/e/i;->c(Lcom/apicloud/a/g/d/l;Ljava/lang/String;)V

    :cond_3
    const-string v0, "transitionDelay"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/apicloud/a/i/e/i;->a(Landroid/view/View;)Lcom/apicloud/a/g/d/l;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/e/i;->d(Lcom/apicloud/a/g/d/l;Ljava/lang/String;)V

    :cond_4
    return-object p2
.end method

.method private b(Lcom/apicloud/a/g/d/l;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/apicloud/a/g/m;->j(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/a/g/d/l;->a(J)V

    return-void
.end method

.method private c(Lcom/apicloud/a/g/d/l;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/g/d/l;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private d(Lcom/apicloud/a/g/d/l;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/apicloud/a/g/m;->j(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/a/g/d/l;->b(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/i;->b(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    move-result-object p1

    return-object p1
.end method
