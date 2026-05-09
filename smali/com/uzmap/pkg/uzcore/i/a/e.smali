.class Lcom/uzmap/pkg/uzcore/i/a/e;
.super Lcom/uzmap/pkg/uzcore/i/a/f;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/i/a/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)[B
    .locals 2

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/a/e;->f(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e/b;->b([B)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e/b;->a([B)[B

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/i/a/e;->a(Ljava/lang/String;[B)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
