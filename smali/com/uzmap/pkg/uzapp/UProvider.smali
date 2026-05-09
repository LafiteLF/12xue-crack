.class public final Lcom/uzmap/pkg/uzapp/UProvider;
.super Landroid/content/ContentProvider;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/deepe/f/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v1, p0, Lcom/uzmap/pkg/uzapp/UProvider;->b:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0}, Lcom/uzmap/pkg/uzapp/UProvider;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzapp/UProvider;->c:Lcom/deepe/f/a/d;

    invoke-virtual {v0, p1}, Lcom/deepe/f/a/d;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzapp/UProvider;->c:Lcom/deepe/f/a/d;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzapp/UProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/deepe/f/a/d;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no permission to acceess"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzapp/UProvider;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzapp/UProvider;->c:Lcom/deepe/f/a/d;

    invoke-virtual {v0, p1}, Lcom/deepe/f/a/d;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzapp/UProvider;->c:Lcom/deepe/f/a/d;

    invoke-virtual {v0, p1}, Lcom/deepe/f/a/d;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    invoke-direct {p0}, Lcom/uzmap/pkg/uzapp/UProvider;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzapp/UProvider;->c:Lcom/deepe/f/a/d;

    invoke-virtual {v0, p1}, Lcom/deepe/f/a/d;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzapp/UProvider;->c:Lcom/deepe/f/a/d;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzapp/UProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/deepe/f/a/d;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no permission to acceess"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()Z
    .locals 2

    new-instance v0, Lcom/deepe/f/a/d;

    invoke-direct {v0}, Lcom/deepe/f/a/d;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzapp/UProvider;->c:Lcom/deepe/f/a/d;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzapp/UProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/deepe/f/a/d;->c(Landroid/content/Context;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzapp/UProvider;->a:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzapp/UProvider;->b:I

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    invoke-direct {p0}, Lcom/uzmap/pkg/uzapp/UProvider;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzapp/UProvider;->c:Lcom/deepe/f/a/d;

    invoke-virtual {v0, p1}, Lcom/deepe/f/a/d;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/uzmap/pkg/uzapp/UProvider;->c:Lcom/deepe/f/a/d;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzapp/UProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/deepe/f/a/d;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no permission to acceess"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzapp/UProvider;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzapp/UProvider;->c:Lcom/deepe/f/a/d;

    invoke-virtual {v0, p1}, Lcom/deepe/f/a/d;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no permission to acceess"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    invoke-direct {p0}, Lcom/uzmap/pkg/uzapp/UProvider;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzapp/UProvider;->c:Lcom/deepe/f/a/d;

    invoke-virtual {v0, p1}, Lcom/deepe/f/a/d;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/uzmap/pkg/uzapp/UProvider;->c:Lcom/deepe/f/a/d;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzapp/UProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/deepe/f/a/d;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no permission to acceess"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
