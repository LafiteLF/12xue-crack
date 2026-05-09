.class public Lcom/deepe/c/k/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/k/b;->a:Z

    invoke-virtual {p0, p1}, Lcom/deepe/c/k/b;->a(Landroid/content/Context;)Lcom/deepe/c/k/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/deepe/c/k/c;)Lcom/deepe/c/k/a;
    .locals 2

    invoke-virtual {p1}, Lcom/deepe/c/k/c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepe/c/k/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/deepe/c/k/b;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/e/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e/b;->c(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/a/b;->b()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/i/k;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/deepe/c/k/a;

    invoke-direct {v0, p1}, Lcom/deepe/c/k/a;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;)Lcom/deepe/c/k/b;
    .locals 0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/deepe/c/k/e;->a()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/k/b;->a:Z

    return-void
.end method
