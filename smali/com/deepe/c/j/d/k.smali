.class public Lcom/deepe/c/j/d/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/deepe/c/j/d/f;ILjava/lang/String;Ljava/lang/String;)Lcom/deepe/c/j/n;
    .locals 0

    if-nez p4, :cond_0

    const-string p4, "ajax"

    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    new-instance p1, Lcom/deepe/c/j/d/g;

    new-instance p3, Lcom/deepe/c/j/e/n;

    invoke-direct {p3}, Lcom/deepe/c/j/e/n;-><init>()V

    invoke-direct {p1, p3}, Lcom/deepe/c/j/d/g;-><init>(Lcom/deepe/c/j/c;)V

    :cond_1
    new-instance p3, Lcom/deepe/c/j/d/a;

    invoke-direct {p3, p1}, Lcom/deepe/c/j/d/a;-><init>(Lcom/deepe/c/j/d/f;)V

    const/4 p1, -0x1

    if-gt p2, p1, :cond_2

    new-instance p1, Lcom/deepe/c/j/n;

    new-instance p2, Lcom/deepe/c/j/d/c;

    invoke-direct {p2, p0}, Lcom/deepe/c/j/d/c;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p2, p3}, Lcom/deepe/c/j/n;-><init>(Lcom/deepe/c/j/a;Lcom/deepe/c/j/i;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/deepe/c/j/n;

    new-instance p4, Lcom/deepe/c/j/d/c;

    invoke-direct {p4, p0, p2}, Lcom/deepe/c/j/d/c;-><init>(Ljava/io/File;I)V

    invoke-direct {p1, p4, p3}, Lcom/deepe/c/j/n;-><init>(Lcom/deepe/c/j/a;Lcom/deepe/c/j/i;)V

    :goto_0
    invoke-virtual {p1}, Lcom/deepe/c/j/n;->a()V

    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/deepe/c/j/d/f;Ljava/lang/String;)Lcom/deepe/c/j/n;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/deepe/c/j/d/k;->a(Landroid/content/Context;Lcom/deepe/c/j/d/f;ILjava/lang/String;Ljava/lang/String;)Lcom/deepe/c/j/n;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/deepe/c/j/d/g$a;)Lcom/deepe/c/j/n;
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/deepe/c/j/d/g;

    new-instance v1, Lcom/deepe/c/j/e/n;

    invoke-direct {v1}, Lcom/deepe/c/j/e/n;-><init>()V

    invoke-direct {v0, p2, v1}, Lcom/deepe/c/j/d/g;-><init>(Lcom/deepe/c/j/d/g$a;Lcom/deepe/c/j/c;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/deepe/c/j/d/k;->a(Landroid/content/Context;Lcom/deepe/c/j/d/f;Ljava/lang/String;)Lcom/deepe/c/j/n;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/deepe/c/j/d/g$a;)Lcom/deepe/c/j/d/d;
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Lcom/deepe/c/j/d/g;

    new-instance v1, Lcom/deepe/c/j/e/n;

    invoke-direct {v1}, Lcom/deepe/c/j/e/n;-><init>()V

    invoke-direct {v0, p2, v1}, Lcom/deepe/c/j/d/g;-><init>(Lcom/deepe/c/j/d/g$a;Lcom/deepe/c/j/c;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/deepe/c/j/d/k;->a(Landroid/content/Context;Lcom/deepe/c/j/d/f;Ljava/lang/String;)Lcom/deepe/c/j/n;

    move-result-object p0

    new-instance p1, Lcom/deepe/c/j/d/d;

    invoke-direct {p1, p0}, Lcom/deepe/c/j/d/d;-><init>(Lcom/deepe/c/j/n;)V

    return-object p1
.end method
