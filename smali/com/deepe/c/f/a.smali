.class final Lcom/deepe/c/f/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/deepe/c/f/a;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/deepe/c/f/a;
    .locals 1

    sget-object v0, Lcom/deepe/c/f/a;->c:Lcom/deepe/c/f/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/f/a;

    invoke-direct {v0}, Lcom/deepe/c/f/a;-><init>()V

    sput-object v0, Lcom/deepe/c/f/a;->c:Lcom/deepe/c/f/a;

    :cond_0
    sget-object v0, Lcom/deepe/c/f/a;->c:Lcom/deepe/c/f/a;

    return-object v0
.end method

.method private b()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/f/a;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/deepe/c/f/a;->e()V

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/f/a;->b:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private c()V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/f/a;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private d()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/f/a;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/deepe/c/f/a;->e()V

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/f/a;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private e()V
    .locals 3

    invoke-static {}, Lcom/deepe/a;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "permissions_denied"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/f/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/f/a;->b:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/f/a;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/deepe/c/f/a;->c()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/deepe/c/f/a;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/deepe/c/f/a;->c()V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public b(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/deepe/c/f/a;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1
.end method
