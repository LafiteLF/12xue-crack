.class public Lcom/deepe/a/c/b;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/location/Location;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "network"

    return-object p0

    :cond_0
    const-string p0, "gps"

    return-object p0
.end method

.method static a(Ljava/lang/Integer;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/deepe/a/c/b;->a(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_1
    const-string p0, "network"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/location/Location;Lcom/deepe/a/c/f;)V
    .locals 1

    new-instance v0, Lcom/deepe/a/c/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/deepe/a/c/g;-><init>(Landroid/content/Context;Landroid/location/Location;Lcom/deepe/a/c/f;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/deepe/a/c/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static a(Landroid/location/Location;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/deepe/a/c/b;->a(Landroid/location/Location;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "address"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
