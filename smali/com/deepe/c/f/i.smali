.class final Lcom/deepe/c/f/i;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/deepe/c/f/j;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/f/i;->a:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/deepe/c/f/i;
    .locals 1

    new-instance v0, Lcom/deepe/c/f/i;

    invoke-direct {v0, p0}, Lcom/deepe/c/f/i;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/deepe/c/f/k;)V
    .locals 7

    sget-object v0, Lcom/deepe/c/f/i;->b:Lcom/deepe/c/f/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/f/j;

    invoke-direct {v0, p0}, Lcom/deepe/c/f/j;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/deepe/c/f/i;->b:Lcom/deepe/c/f/j;

    :cond_0
    invoke-virtual {p1}, Lcom/deepe/c/f/k;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/deepe/c/f/k;->b()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_2

    sget-object p0, Lcom/deepe/c/f/i;->b:Lcom/deepe/c/f/j;

    invoke-virtual {p0}, Lcom/deepe/c/f/j;->isShowing()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/deepe/c/f/i;->b:Lcom/deepe/c/f/j;

    invoke-virtual {p0}, Lcom/deepe/c/f/j;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/deepe/c/f/i;->b:Lcom/deepe/c/f/j;

    invoke-virtual {p0}, Lcom/deepe/c/f/j;->show()V

    :cond_1
    return-void

    :cond_2
    aget-object v4, v1, v3

    invoke-virtual {p1}, Lcom/deepe/c/f/k;->a()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    :goto_1
    invoke-static {p0, v4, v6}, Lcom/deepe/c/f/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/deepe/c/f/l;

    move-result-object v4

    goto :goto_2

    :cond_3
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepe/c/f/l;

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v5

    :goto_2
    sget-object v5, Lcom/deepe/c/f/i;->b:Lcom/deepe/c/f/j;

    invoke-virtual {v5, v4}, Lcom/deepe/c/f/j;->a(Lcom/deepe/c/f/l;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/deepe/c/f/i;->b:Lcom/deepe/c/f/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_2

    invoke-virtual {v0}, Lcom/deepe/c/f/j;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/deepe/c/f/i;->b:Lcom/deepe/c/f/j;

    invoke-virtual {p0}, Lcom/deepe/c/f/j;->dismiss()V

    :cond_1
    const/4 p0, 0x0

    sput-object p0, Lcom/deepe/c/f/i;->b:Lcom/deepe/c/f/j;

    return-void

    :cond_2
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_3

    return-void

    :cond_3
    aget-object v2, p0, v1

    sget-object v3, Lcom/deepe/c/f/i;->b:Lcom/deepe/c/f/j;

    invoke-virtual {v3, v2}, Lcom/deepe/c/f/j;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/deepe/c/f/i;->a([Ljava/lang/String;)V

    return-void
.end method

.method private varargs b([Ljava/lang/String;)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/deepe/c/f/i;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/f/i;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/deepe/c/f/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(I[Ljava/lang/String;Lcom/deepe/c/f/k;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/deepe/c/f/i;->b(I[Ljava/lang/String;Lcom/deepe/c/f/k;)V

    return-void
.end method

.method public final varargs a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V
    .locals 1

    if-eqz p5, :cond_0

    invoke-virtual/range {p0 .. p6}, Lcom/deepe/c/f/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p6}, Lcom/deepe/c/f/i;->b([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p6}, Lcom/deepe/c/f/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p4, p6, p1}, Lcom/deepe/c/f/i;->b(I[Ljava/lang/String;Lcom/deepe/c/f/k;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/deepe/c/f/i;->b(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b(I[Ljava/lang/String;Lcom/deepe/c/f/k;)V
    .locals 7

    new-instance v0, Lcom/deepe/c/i/s;

    array-length v1, p2

    invoke-direct {v0, v1}, Lcom/deepe/c/i/s;-><init>(I)V

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_3

    invoke-virtual {v0}, Lcom/deepe/c/i/s;->a()[Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/deepe/c/f/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/deepe/c/f/i$1;

    invoke-direct {v1, p0, p3}, Lcom/deepe/c/f/i$1;-><init>(Lcom/deepe/c/f/i;Lcom/deepe/c/f/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    if-eqz p2, :cond_1

    array-length p3, p2

    if-lez p3, :cond_1

    invoke-virtual {p0}, Lcom/deepe/c/f/i;->a()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3, p2, p1}, Lcom/deepe/c/b/m;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/deepe/c/f/i;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/f/f;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/deepe/c/f/i;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/f/f;->b(Landroid/content/Context;)V

    :cond_2
    return-void

    :cond_3
    aget-object v4, p2, v3

    const-string v5, "OP_POST_NOTIFICATION"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0, v4}, Lcom/deepe/c/i/s;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final varargs b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p0}, Lcom/deepe/c/f/i;->a()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/deepe/c/f/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/deepe/c/f/h;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    instance-of v3, v0, Lcom/deepe/c/f/o;

    if-eqz v3, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/deepe/c/f/o;

    :cond_1
    new-instance v10, Lcom/deepe/c/f/b;

    move-object v3, v10

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/deepe/c/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V

    new-instance v3, Lcom/deepe/c/f/p;

    invoke-direct {v3, v0, v10, v1, v2}, Lcom/deepe/c/f/p;-><init>(Landroid/content/Context;Lcom/deepe/c/f/b;Lcom/deepe/c/f/h;Lcom/deepe/c/f/o;)V

    new-instance v1, Lcom/deepe/a/g/a$a;

    invoke-direct {v1, v0}, Lcom/deepe/a/g/a$a;-><init>(Landroid/content/Context;)V

    iget-object v0, v10, Lcom/deepe/c/f/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(Z)Lcom/deepe/a/g/a$a;

    move-object v0, p1

    invoke-virtual {v1, p1}, Lcom/deepe/a/g/a$a;->b(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    move-object v0, p2

    invoke-virtual {v1, p2, v3}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    move-object v0, p3

    invoke-virtual {v1, p3, v3}, Lcom/deepe/a/g/a$a;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    invoke-virtual {v1}, Lcom/deepe/a/g/a$a;->a()Lcom/deepe/a/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/a/g/a;->show()V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "OP_POST_NOTIFICATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/f/i;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/f/f;->a(Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/f/i;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/deepe/c/b/m;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
