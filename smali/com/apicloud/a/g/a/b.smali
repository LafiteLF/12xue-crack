.class public Lcom/apicloud/a/g/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apicloud/a/g/n;
        }
    .end annotation

    const-string v0, "empty color string for parse"

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/apicloud/a/g/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/apicloud/a/g/a/b;->b(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const-string v0, "rgb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/apicloud/a/g/a/b;->c(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, Lcom/apicloud/a/g/b;->f(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Lcom/apicloud/a/g/n;

    invoke-direct {p0, v0}, Lcom/apicloud/a/g/n;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/apicloud/a/g/n;

    invoke-direct {p0, v0}, Lcom/apicloud/a/g/n;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apicloud/a/g/n;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0x8

    const-wide/32 v2, -0x1000000

    const/16 v4, 0x9

    const/4 v5, 0x7

    const-string v6, "unknown color string "

    const/4 v7, 0x1

    if-eq v0, v5, :cond_8

    if-ne v0, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    const/4 v5, 0x5

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/apicloud/a/g/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/apicloud/a/g/n;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    add-int/lit8 v5, v0, -0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v5, :cond_4

    if-ne v0, v4, :cond_3

    or-long/2addr v8, v2

    :cond_3
    long-to-int p0, v8

    return p0

    :cond_4
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x61

    if-lt v12, v13, :cond_5

    const/16 v13, 0x7a

    if-gt v12, v13, :cond_5

    add-int/lit8 v12, v12, -0x61

    :goto_2
    add-int/lit8 v12, v12, 0xa

    goto :goto_3

    :cond_5
    const/16 v13, 0x41

    if-lt v12, v13, :cond_6

    const/16 v13, 0x5a

    if-gt v12, v13, :cond_6

    add-int/lit8 v12, v12, -0x41

    goto :goto_2

    :cond_6
    const/16 v13, 0x30

    if-lt v12, v13, :cond_7

    const/16 v13, 0x39

    if-gt v12, v13, :cond_7

    add-int/lit8 v12, v12, -0x30

    :goto_3
    mul-int/lit8 v13, v12, 0x10

    add-int/2addr v13, v12

    rsub-int/lit8 v10, v10, 0x3

    sub-int/2addr v10, v7

    mul-int/2addr v10, v1

    shl-int v10, v13, v10

    int-to-long v12, v10

    or-long/2addr v8, v12

    move v10, v11

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/apicloud/a/g/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/apicloud/a/g/n;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    if-ne v0, v5, :cond_9

    or-long v0, v7, v2

    goto :goto_5

    :cond_9
    if-ne v0, v4, :cond_a

    ushr-long v0, v7, v1

    const/16 p0, 0x18

    shl-long v2, v7, p0

    or-long/2addr v0, v2

    :goto_5
    long-to-int p0, v0

    return p0

    :cond_a
    new-instance v0, Lcom/apicloud/a/g/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/apicloud/a/g/n;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance p0, Lcom/apicloud/a/g/n;

    const-string v0, "empty color string for parse"

    invoke-direct {p0, v0}, Lcom/apicloud/a/g/n;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 6

    invoke-static {p0}, Lcom/apicloud/a/g/a/e;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    array-length v3, p0

    const/16 v4, 0xff

    const/4 v5, 0x4

    if-ne v5, v3, :cond_1

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, p0, v3

    if-gtz v3, :cond_0

    int-to-float v3, v4

    mul-float/2addr p0, v3

    :cond_0
    float-to-int v4, p0

    :cond_1
    shl-int/lit8 p0, v4, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p0, v0

    or-int/2addr p0, v2

    return p0
.end method

.method public static d(Ljava/lang/String;)Lcom/apicloud/a/g/a/g;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apicloud/a/g/n;
        }
    .end annotation

    invoke-static {p0}, Lcom/apicloud/a/g/a/e;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    new-instance v1, Lcom/apicloud/a/g/a/g;

    invoke-direct {v1}, Lcom/apicloud/a/g/a/g;-><init>()V

    const/4 p0, 0x0

    aget-object v2, v0, p0

    array-length v3, v0

    const-string v4, "to"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Lcom/apicloud/a/g/a/g;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "deg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apicloud/a/g/l;->intValue()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/apicloud/a/g/a/g;->a(I)V

    goto :goto_0

    :cond_1
    move v5, p0

    :goto_0
    sub-int p0, v3, v5

    new-array v2, p0, [I

    move p0, v5

    :goto_1
    if-lt p0, v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/apicloud/a/g/a/g;->a([I)V

    return-object v1

    :cond_2
    sub-int v4, p0, v5

    aget-object v6, v0, p0

    invoke-static {v6}, Lcom/apicloud/a/g/a/b;->a(Ljava/lang/String;)I

    move-result v6

    aput v6, v2, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/apicloud/a/g/n;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown color string "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/apicloud/a/g/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method
