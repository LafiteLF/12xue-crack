.class public Lcom/deepe/c/f/c;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static b:[Ljava/lang/String;

.field private static c:Lcom/deepe/c/f/c;


# instance fields
.field private d:Lcom/deepe/c/f/d;

.field private e:Lcom/deepe/c/f/a;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/f/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/deepe/c/f/a;->a()Lcom/deepe/c/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/f/c;->e:Lcom/deepe/c/f/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/f/c;->f:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/deepe/c/f/c;
    .locals 2

    const-class v0, Lcom/deepe/c/f/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/deepe/c/f/c;->c:Lcom/deepe/c/f/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/deepe/c/f/c;

    invoke-direct {v1}, Lcom/deepe/c/f/c;-><init>()V

    sput-object v1, Lcom/deepe/c/f/c;->c:Lcom/deepe/c/f/c;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/deepe/c/f/c;->c:Lcom/deepe/c/f/c;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/deepe/c/f/l;
    .locals 1

    invoke-static {}, Lcom/deepe/c/f/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/deepe/c/f/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/deepe/c/f/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Lcom/deepe/c/f/q;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/deepe/c/f/q;"
        }
    .end annotation

    if-eqz p0, :cond_8

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p1}, Lcom/deepe/c/f/g;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v3, v2, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-lt v5, v2, :cond_0

    invoke-static {v4, v1, v3, p1}, Lcom/deepe/c/f/r;->a(I[Ljava/lang/String;[ILjava/util/List;)Lcom/deepe/c/f/q;

    move-result-object p0

    return-object p0

    :cond_0
    aget-object v6, v1, v5

    invoke-static {p0, v6}, Lcom/deepe/c/f/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    aput v4, v3, v5

    goto :goto_3

    :cond_1
    invoke-static {v6}, Lcom/deepe/c/f/g;->f(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x17

    if-lt v0, v8, :cond_6

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v8, :cond_6

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v7, :cond_2

    goto :goto_2

    :cond_2
    const-string v7, "OP_POST_NOTIFICATION"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p0}, Lcom/deepe/c/f/f;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    const/4 v6, -0x1

    :goto_1
    aput v6, v3, v5

    goto :goto_3

    :cond_4
    invoke-static {v0, v6}, Lcom/deepe/c/f/c;->a(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    aput v4, v3, v5

    goto :goto_3

    :cond_5
    invoke-static {p0, v6}, Lcom/deepe/c/b/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v5

    goto :goto_3

    :cond_6
    :goto_2
    aput v4, v3, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t check permissions for none perms"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t check permissions for null context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/deepe/c/f/r;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/f/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/f/e;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/deepe/c/f/i;->a(Landroid/app/Activity;)Lcom/deepe/c/f/i;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/deepe/c/f/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/deepe/c/f/g;->e(Ljava/lang/String;)Lcom/deepe/c/f/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/f/g;->a()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(ILandroid/content/Intent;)V
    .locals 8

    invoke-static {}, Lcom/deepe/c/f/i;->b()V

    invoke-static {}, Lcom/deepe/c/f/c;->a()Lcom/deepe/c/f/c;

    move-result-object p0

    iget-object p0, p0, Lcom/deepe/c/f/c;->d:Lcom/deepe/c/f/d;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/deepe/c/f/d;->getHtml5Results()Lcom/deepe/c/f/q;

    move-result-object p1

    invoke-virtual {p0}, Lcom/deepe/c/f/d;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/deepe/c/f/q;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Lcom/deepe/c/f/q;->a(Z)V

    :cond_0
    iget v0, p1, Lcom/deepe/c/f/q;->a:I

    invoke-virtual {p0, v0, p1}, Lcom/deepe/c/f/d;->onPermission(ILcom/deepe/c/f/q;)V

    invoke-static {}, Lcom/deepe/c/f/c;->a()Lcom/deepe/c/f/c;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/deepe/c/f/c;->a(Lcom/deepe/c/f/d;)V

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepe/c/f/q$a;

    new-array v6, v2, [Ljava/lang/String;

    iget-object v7, v5, Lcom/deepe/c/f/q$a;->a:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {v0, v6}, Lcom/deepe/c/f/c;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/deepe/c/f/q$a;->c:Z

    if-nez v6, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/deepe/c/f/c;->a()Lcom/deepe/c/f/c;

    move-result-object v6

    iget-object v6, v6, Lcom/deepe/c/f/c;->e:Lcom/deepe/c/f/a;

    iget-object v5, v5, Lcom/deepe/c/f/q$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/deepe/c/f/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(ILjava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/f/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/f/h;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1, p1, p2}, Lcom/deepe/c/f/h;->a(ILjava/util/List;)V

    :cond_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p1, p3}, Lcom/deepe/c/f/h;->b(ILjava/util/List;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/deepe/c/f/m$a;

    invoke-static {p3}, Lcom/deepe/c/f/r;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p0, p2, p3}, Lcom/deepe/c/f/m$a;-><init>(Landroid/app/Activity;I[Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/deepe/c/f/m$a;->a(Ljava/lang/String;)Lcom/deepe/c/f/m$a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/deepe/c/f/m$a;->a(Z)Lcom/deepe/c/f/m$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepe/c/f/m$a;->a()Lcom/deepe/c/f/m;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/f/c;->a(Lcom/deepe/c/f/m;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t check permissions for none perms"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/deepe/c/f/k;Lcom/deepe/c/f/d;)V
    .locals 3

    invoke-static {}, Lcom/deepe/c/f/c;->a()Lcom/deepe/c/f/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepe/c/f/c;->a(Lcom/deepe/c/f/d;)V

    invoke-virtual {p0}, Lcom/deepe/c/f/k;->b()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepe/c/f/k;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/deepe/c/f/d;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/deepe/c/f/c;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v1, v0}, Lcom/deepe/c/f/c;->a(Ljava/lang/Object;I[Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/deepe/c/f/d;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/f/i;->a(Landroid/app/Activity;)Lcom/deepe/c/f/i;

    move-result-object p1

    invoke-virtual {p1, v1, v0, p0}, Lcom/deepe/c/f/i;->a(I[Ljava/lang/String;Lcom/deepe/c/f/k;)V

    return-void
.end method

.method public static a(Lcom/deepe/c/f/m;)V
    .locals 9

    invoke-virtual {p0}, Lcom/deepe/c/f/m;->a()Lcom/deepe/c/f/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/f/i;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepe/c/f/m;->b()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/deepe/c/f/c;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/f/m;->a()Lcom/deepe/c/f/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/f/i;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepe/c/f/m;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/deepe/c/f/m;->b()[Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/deepe/c/f/c;->a(Ljava/lang/Object;I[Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/f/m;->a()Lcom/deepe/c/f/i;

    move-result-object v2

    invoke-virtual {p0}, Lcom/deepe/c/f/m;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/deepe/c/f/m;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/deepe/c/f/m;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/deepe/c/f/m;->c()I

    move-result v6

    invoke-virtual {p0}, Lcom/deepe/c/f/m;->g()Z

    move-result v7

    invoke-virtual {p0}, Lcom/deepe/c/f/m;->b()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/deepe/c/f/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/Object;I[Ljava/lang/String;)V
    .locals 4

    array-length v0, p2

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {p1, p2, v0, v2}, Lcom/deepe/c/f/c;->a(I[Ljava/lang/String;[I[Ljava/lang/Object;)Z

    return-void

    :cond_0
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;)Z
    .locals 1

    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v0, :cond_0

    sget-object p0, Lcom/deepe/c/f/g;->B:Lcom/deepe/c/f/g;

    invoke-virtual {p0, p1}, Lcom/deepe/c/f/g;->c(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs a(I[Ljava/lang/String;[I[Ljava/lang/Object;)Z
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-lt v3, v4, :cond_6

    invoke-static {}, Lcom/deepe/c/f/c;->a()Lcom/deepe/c/f/c;

    move-result-object v3

    invoke-direct {v3, p0, v0, v1}, Lcom/deepe/c/f/c;->a(ILjava/util/List;Ljava/util/List;)V

    invoke-static {}, Lcom/deepe/c/f/c;->a()Lcom/deepe/c/f/c;

    move-result-object v3

    iget-object v3, v3, Lcom/deepe/c/f/c;->d:Lcom/deepe/c/f/d;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/deepe/c/f/d;->getRequestConstants()Ljava/util/List;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lcom/deepe/c/f/r;->a(I[Ljava/lang/String;[ILjava/util/List;)Lcom/deepe/c/f/q;

    move-result-object p1

    invoke-virtual {v3}, Lcom/deepe/c/f/d;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1}, Lcom/deepe/c/f/q;->e()Ljava/util/List;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/deepe/c/f/c;->a(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-static {}, Lcom/deepe/c/f/c;->a()Lcom/deepe/c/f/c;

    move-result-object v0

    iget-object v0, v0, Lcom/deepe/c/f/c;->e:Lcom/deepe/c/f/a;

    invoke-virtual {v0, p3}, Lcom/deepe/c/f/a;->b(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/deepe/c/f/q;->a(Z)V

    invoke-virtual {v3, p1}, Lcom/deepe/c/f/d;->setHtml5Results(Lcom/deepe/c/f/q;)V

    invoke-virtual {v3}, Lcom/deepe/c/f/d;->needPermissionSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x7596

    invoke-static {p2, p0}, Lcom/deepe/c/f/n;->a(Landroid/app/Activity;I)Z

    return v1

    :cond_0
    invoke-static {}, Lcom/deepe/c/f/i;->b()V

    invoke-static {}, Lcom/deepe/c/f/c;->a()Lcom/deepe/c/f/c;

    move-result-object p2

    iget-object p2, p2, Lcom/deepe/c/f/c;->e:Lcom/deepe/c/f/a;

    invoke-virtual {p2, p3}, Lcom/deepe/c/f/a;->a(Ljava/util/List;)V

    invoke-virtual {v3, p0, p1}, Lcom/deepe/c/f/d;->onPermission(ILcom/deepe/c/f/q;)V

    invoke-static {}, Lcom/deepe/c/f/c;->a()Lcom/deepe/c/f/c;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/deepe/c/f/c;->a(Lcom/deepe/c/f/d;)V

    return v1

    :cond_1
    invoke-static {}, Lcom/deepe/c/f/i;->b()V

    array-length v4, p3

    move p1, v2

    :goto_1
    if-lt p1, v4, :cond_2

    return v2

    :cond_2
    aget-object p2, p3, p1

    instance-of v3, p2, Lcom/deepe/c/f/h;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v3, p2

    check-cast v3, Lcom/deepe/c/f/h;

    invoke-interface {v3, p0, v0}, Lcom/deepe/c/f/h;->a(ILjava/util/List;)V

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    check-cast p2, Lcom/deepe/c/f/h;

    invoke-interface {p2, p0, v1}, Lcom/deepe/c/f/h;->b(ILjava/util/List;)V

    :cond_5
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    aget-object v4, p1, v3

    invoke-static {v4}, Lcom/deepe/c/f/g;->f(Ljava/lang/String;)I

    move-result v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v5, :cond_7

    aput v2, p2, v3

    goto :goto_3

    :cond_7
    aget v5, p2, v3

    if-nez v5, :cond_8

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.READ_PHONE_STATE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/deepe/c/f/c;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs a(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 7

    if-eqz p0, :cond_8

    if-eqz p1, :cond_7

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_6

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v2, :cond_0

    goto :goto_2

    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v2, :cond_1

    return v1

    :cond_1
    aget-object v5, p1, v4

    const-string v6, "OP_POST_NOTIFICATION"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p0}, Lcom/deepe/c/f/f;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0, v5}, Lcom/deepe/c/f/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    return v3

    :cond_3
    invoke-static {v0, v5}, Lcom/deepe/c/f/c;->a(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    return v1

    :cond_4
    invoke-static {p0, v5}, Lcom/deepe/c/b/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    return v3

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return v1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t check permissions for none perms"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t check permissions for null context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/deepe/c/f/c;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "OP_POST_NOTIFICATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/deepe/c/f/c;->b:[Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/deepe/c/a/h;->a(Landroid/content/Context;)Lcom/deepe/c/a/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepe/c/a/h;->b()Lcom/deepe/c/a/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepe/c/a/g;->b()Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    sput-object p0, Lcom/deepe/c/f/c;->b:[Ljava/lang/String;

    :cond_1
    sget-object p0, Lcom/deepe/c/f/c;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_2

    return v0

    :cond_2
    array-length v2, p0

    move v3, v0

    :goto_0
    if-lt v3, v2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    aget-object v4, p0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    return v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/deepe/c/f/g;->B:Lcom/deepe/c/f/g;

    invoke-virtual {v0, p0}, Lcom/deepe/c/f/g;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/deepe/c/f/c;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/deepe/c/f/c;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.RECORD_AUDIO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/deepe/c/f/c;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/deepe/c/f/d;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/f/c;->d:Lcom/deepe/c/f/d;

    return-void
.end method

.method public a(Lcom/deepe/c/f/h;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/f/c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/f/c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
