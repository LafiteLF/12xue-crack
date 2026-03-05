.class public final Lcom/apicloud/a/g/m;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/apicloud/a/g/l;
    .locals 2

    invoke-static {p0}, Lcom/apicloud/a/g/m;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    array-length v1, p0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/apicloud/a/g/m;->a([Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/String;)Lcom/apicloud/a/g/l;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/apicloud/a/g/m;->b([Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0
    :try_end_0
    .catch Lcom/apicloud/a/g/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/apicloud/a/g/n;->printStackTrace()V

    new-instance p0, Lcom/apicloud/a/g/l;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/g/l;-><init>(Ljava/lang/Number;I)V

    return-object p0
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a([Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    array-length p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;)Lcom/apicloud/a/g/l;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/m;->g(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/apicloud/a/g/m;->a([Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    return-object p0
.end method

.method private static b([Ljava/lang/String;)Lcom/apicloud/a/g/l;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apicloud/a/g/n;
        }
    .end annotation

    array-length v0, p0

    new-instance v1, Lcom/apicloud/a/g/d;

    invoke-direct {v1, v0}, Lcom/apicloud/a/g/d;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/apicloud/a/g/d;->a(Lcom/apicloud/a/g/l;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static b(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;)Lcom/apicloud/a/g/l;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/apicloud/a/g/m;->d(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/apicloud/a/g/m;->k(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/apicloud/a/g/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not a css value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/apicloud/a/g/n;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/apicloud/a/g/m;->l(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/apicloud/a/g/m;->n(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/apicloud/a/g/m;->m(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p0, Lcom/apicloud/a/g/l;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/g/l;-><init>(Ljava/lang/Number;I)V

    return-object p0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v2, v1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    if-eq v0, v5, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x4

    const/16 v4, 0x2e

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/apicloud/a/g/m;->a(C)Z

    move-result v2

    if-nez v2, :cond_5

    if-ne v4, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/apicloud/a/g/m;->b(C)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    return v5

    :cond_6
    if-ne v4, v3, :cond_8

    invoke-static {v1}, Lcom/apicloud/a/g/m;->b(C)Z

    move-result p0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    return v5

    :cond_8
    invoke-static {v1}, Lcom/apicloud/a/g/m;->a(C)Z

    move-result p0

    if-nez p0, :cond_c

    if-ne v4, v1, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {v3}, Lcom/apicloud/a/g/m;->a(C)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {v1}, Lcom/apicloud/a/g/m;->b(C)Z

    move-result p0

    if-eqz p0, :cond_a

    return v0

    :cond_a
    invoke-static {v3}, Lcom/apicloud/a/g/m;->b(C)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {v1}, Lcom/apicloud/a/g/m;->b(C)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x2

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0

    :cond_c
    :goto_2
    return v5
.end method

.method public static e(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/m;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/a/e;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/a/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static j(Ljava/lang/String;)J
    .locals 4

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/16 v0, 0x73

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static k(Ljava/lang/String;)Lcom/apicloud/a/g/l;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apicloud/a/g/n;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/apicloud/a/g/m;->b(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v0}, Lcom/apicloud/a/g/m;->m(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v0

    invoke-static {v1}, Lcom/apicloud/a/g/k;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/g/l;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lcom/apicloud/a/g/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a css unit value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/apicloud/a/g/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static l(Ljava/lang/String;)Lcom/apicloud/a/g/l;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apicloud/a/g/n;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/g/l;

    invoke-static {v0}, Lcom/apicloud/a/g/m;->o(Ljava/lang/String;)F

    move-result v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x3

    invoke-direct {v1, v0, v3}, Lcom/apicloud/a/g/l;-><init>(Ljava/lang/Number;I)V

    invoke-virtual {v1, v2}, Lcom/apicloud/a/g/l;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Lcom/apicloud/a/g/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid percentage value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/apicloud/a/g/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static m(Ljava/lang/String;)Lcom/apicloud/a/g/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apicloud/a/g/n;
        }
    .end annotation

    new-instance v0, Lcom/apicloud/a/g/l;

    invoke-static {p0}, Lcom/apicloud/a/g/m;->o(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/g/l;-><init>(Ljava/lang/Number;I)V

    return-object v0
.end method

.method private static n(Ljava/lang/String;)Lcom/apicloud/a/g/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apicloud/a/g/n;
        }
    .end annotation

    invoke-static {p0}, Lcom/apicloud/a/g/e/c;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v0, Lcom/apicloud/a/g/l;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/g/l;-><init>(Ljava/lang/Number;I)V

    return-object v0
.end method

.method private static o(Ljava/lang/String;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apicloud/a/g/n;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance v0, Lcom/apicloud/a/g/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/apicloud/a/g/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method
