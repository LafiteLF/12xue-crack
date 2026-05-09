.class public final Lcom/uzmap/pkg/uzcore/w;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/net/Uri;)Lcom/deepe/c/i/i;
    .locals 5

    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    const-string v1, "data"

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/deepe/c/i/i;

    invoke-direct {v2}, Lcom/deepe/c/i/i;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v3, "iosUrl"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "appParam"

    invoke-virtual {v0, v4, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/f/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string p0, "{}"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/w;->a(Landroid/net/Uri;)Lcom/deepe/c/i/i;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "appParam"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_7

    instance-of v4, v3, [Ljava/lang/Object;

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    array-length v6, v4

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v6, :cond_6

    :try_start_0
    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_6
    aget-object v7, v4, v3

    :try_start_1
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :try_start_2
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/deepe/c/i/x;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/al;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/deepe/c/i/x;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    move-object v1, p1

    goto/16 :goto_3

    :cond_4
    :goto_0
    return-object v1

    :cond_5
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p1, :cond_12

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->f()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->widgetPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->i()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->f()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_7

    iget-object v2, p1, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->id:Ljava/lang/String;

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzcore/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->l()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/g/f;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->m()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->f()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_a

    iget-object v2, p1, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->id:Ljava/lang/String;

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzcore/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->r()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->f()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "file:///android_asset/"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->n()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->f()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->p()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/g/f;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->q()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->a()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/a/c;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_f
    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/g/f;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p1, :cond_10

    iget-object v2, p1, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->id:Ljava/lang/String;

    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzcore/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    move-object v1, p0

    :cond_12
    :goto_3
    return-object v1
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/deepe/c/i/x;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/deepe/c/i/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/al;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/al;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final c(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/al;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/x;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/x;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
