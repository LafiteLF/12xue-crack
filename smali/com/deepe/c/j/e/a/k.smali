.class public Lcom/deepe/c/j/e/a/k;
.super Lcom/deepe/c/j/e/a/j;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/deepe/c/j/e/h;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/deepe/c/j/g;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/j/e/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/a/k;->a(Ljava/lang/String;)V

    return-void
.end method
