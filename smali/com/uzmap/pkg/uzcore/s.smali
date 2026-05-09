.class public Lcom/uzmap/pkg/uzcore/s;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;ILjava/lang/String;Z)Lcom/uzmap/pkg/uzcore/a;
    .locals 0

    if-eqz p4, :cond_0

    new-instance p4, Lcom/uzmap/pkg/a/e;

    invoke-direct {p4, p2, p0, p1}, Lcom/uzmap/pkg/a/e;-><init>(ILandroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/uzmap/pkg/uzcore/d/i;->f(I)V

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/uzmap/pkg/uzcore/i/p;

    invoke-direct {p4, p2, p0, p1}, Lcom/uzmap/pkg/uzcore/i/p;-><init>(ILandroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;)V

    :goto_0
    invoke-interface {p4, p3}, Lcom/uzmap/pkg/uzcore/a;->d(Ljava/lang/String;)V

    return-object p4
.end method

.method public static a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;
    .locals 1

    const-string v0, "api-swipe"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/aj;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/aj;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/ae;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/ae;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/d/a;->a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/a;->a(Lcom/uzmap/pkg/uzcore/d/a;)V

    return-object v0
.end method
