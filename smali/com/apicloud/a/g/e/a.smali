.class public Lcom/apicloud/a/g/e/a;
.super Ljava/lang/Object;


# static fields
.field static final a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/apicloud/a/g/e/a;->a:[F

    return-void
.end method

.method public static a(Landroid/view/View;Z)Lcom/apicloud/a/i/d/b/f;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/apicloud/a/i/d/b/f;->h()Lcom/apicloud/a/i/d/b/f;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    check-cast p1, Lcom/apicloud/a/i/d/b/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    move-object v0, p1

    goto :goto_0

    :cond_1
    :try_start_2
    instance-of p1, v0, Lcom/apicloud/a/i/d/b/f;

    if-nez p1, :cond_2

    invoke-static {}, Lcom/apicloud/a/i/d/b/f;->h()Lcom/apicloud/a/i/d/b/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    check-cast v0, Lcom/apicloud/a/i/d/b/f;

    return-object v0
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/deepe/c/i/e;->a([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    return-object v1

    :cond_1
    aget-object v2, p0, v0

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/apicloud/a/g/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    aput-object v1, p0, v0

    return-object v2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "linear-gradient"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/a/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/deepe/c/i/e;->a([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    return-object v1

    :cond_1
    aget-object v2, p0, v0

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/apicloud/a/g/b;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    aput-object v1, p0, v0

    return-object v2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Lcom/apicloud/a/g/l;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    return-object p0
.end method

.method public static c([Ljava/lang/String;)[Lcom/apicloud/a/g/l;
    .locals 6

    invoke-static {p0}, Lcom/deepe/c/i/e;->a([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/apicloud/a/g/d;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/apicloud/a/g/d;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p0

    if-lt v4, v5, :cond_4

    invoke-virtual {v0}, Lcom/apicloud/a/g/d;->b()I

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    new-array p0, v2, [Lcom/apicloud/a/g/l;

    invoke-virtual {v0}, Lcom/apicloud/a/g/d;->b()I

    move-result v1

    const/4 v4, 0x1

    if-ne v4, v1, :cond_2

    invoke-virtual {v0, v3}, Lcom/apicloud/a/g/d;->a(I)Lcom/apicloud/a/g/l;

    move-result-object v1

    aput-object v1, p0, v3

    :cond_2
    invoke-virtual {v0}, Lcom/apicloud/a/g/d;->b()I

    move-result v1

    if-ne v2, v1, :cond_3

    invoke-virtual {v0, v4}, Lcom/apicloud/a/g/d;->a(I)Lcom/apicloud/a/g/l;

    move-result-object v0

    aput-object v0, p0, v4

    :cond_3
    return-object p0

    :cond_4
    aget-object v5, p0, v4

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v5}, Lcom/apicloud/a/g/e/a;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v0, v5}, Lcom/apicloud/a/g/d;->a(Lcom/apicloud/a/g/l;)V

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static d([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/deepe/c/i/e;->a([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    return-object v1

    :cond_1
    aget-object v2, p0, v0

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "repeat-y"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    aput-object v1, p0, v0

    return-object v3

    :sswitch_1
    const-string v3, "repeat-x"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    aput-object v1, p0, v0

    return-object v3

    :sswitch_2
    const-string v3, "no-repeat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    aput-object v1, p0, v0

    return-object v3

    :sswitch_3
    const-string v3, "repeat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    aput-object v1, p0, v0

    return-object v3

    :goto_1
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b3d265 -> :sswitch_3
        -0x2b3140d9 -> :sswitch_2
        -0x1a08c73a -> :sswitch_1
        -0x1a08c739 -> :sswitch_0
    .end sparse-switch
.end method
