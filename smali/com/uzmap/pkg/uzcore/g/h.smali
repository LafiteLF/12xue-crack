.class public Lcom/uzmap/pkg/uzcore/g/h;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/uzmap/pkg/uzcore/g/h;


# instance fields
.field private a:Lcom/deepe/c/k/g;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/uzmap/pkg/uzcore/g/h;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/g/h;->b:Lcom/uzmap/pkg/uzcore/g/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/g/h;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/g/h;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzcore/g/h;->b:Lcom/uzmap/pkg/uzcore/g/h;

    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzcore/g/h;->b:Lcom/uzmap/pkg/uzcore/g/h;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/deepe/c/k/g;
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/h;->a:Lcom/deepe/c/k/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/deepe/c/k/g;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/deepe/c/k/g;

    move-result-object v1

    if-nez p1, :cond_1

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/g/h;->a:Lcom/deepe/c/k/g;

    const/4 p1, 0x0

    const-string v2, "UzLocalStorage"

    invoke-virtual {v0, v2, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/h;->a:Lcom/deepe/c/k/g;

    invoke-virtual {v0, p1}, Lcom/deepe/c/k/g;->a(Landroid/content/SharedPreferences;)V

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/g/h;->d(Ljava/lang/String;)Lcom/deepe/c/k/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/deepe/c/k/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/g/h;->d(Ljava/lang/String;)Lcom/deepe/c/k/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepe/c/k/g;->b()Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/g/h;->d(Ljava/lang/String;)Lcom/deepe/c/k/g;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/deepe/c/k/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final b()J
    .locals 2

    const-wide/16 v0, 0x2800

    return-wide v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/g/h;->d(Ljava/lang/String;)Lcom/deepe/c/k/g;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/deepe/c/k/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
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

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/g/h;->d(Ljava/lang/String;)Lcom/deepe/c/k/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepe/c/k/g;->a()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/g/h;->d(Ljava/lang/String;)Lcom/deepe/c/k/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/deepe/c/k/g;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;)D
    .locals 2

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/g/h;->d(Ljava/lang/String;)Lcom/deepe/c/k/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepe/c/k/g;->c()D

    move-result-wide v0

    return-wide v0
.end method
