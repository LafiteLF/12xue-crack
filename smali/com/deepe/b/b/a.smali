.class public Lcom/deepe/b/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/b/b/a$a;
    }
.end annotation


# direct methods
.method public static a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/deepe/b/b/c;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "widgets"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v1, :cond_2

    new-instance p0, Lcom/deepe/b/b/a$a;

    invoke-direct {p0, v0}, Lcom/deepe/b/b/a$a;-><init>(Lcom/deepe/b/b/a$a;)V

    invoke-static {v2, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2

    :cond_2
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const-string v6, "incNo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "url"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "silent"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "extra"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    if-ne v9, v8, :cond_4

    goto :goto_1

    :cond_4
    move v9, v3

    :goto_1
    new-instance v8, Lcom/deepe/b/b/c;

    invoke-direct {v8, v4}, Lcom/deepe/b/b/c;-><init>(I)V

    iput v6, v8, Lcom/deepe/b/b/c;->a:I

    iput-object v7, v8, Lcom/deepe/b/b/c;->b:Ljava/lang/String;

    iput-boolean v9, v8, Lcom/deepe/b/b/c;->c:Z

    iput-object v5, v8, Lcom/deepe/b/b/c;->d:Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/deepe/b/b/b;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "launcher"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "enabled"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lcom/deepe/b/b/b;

    invoke-direct {v1, v0}, Lcom/deepe/b/b/b;-><init>(Z)V

    const-string v0, "extra"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/deepe/b/b/b;->b:Ljava/lang/Object;

    const-string v0, "interval"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/deepe/b/b/b;->a:I

    const-string v0, "img"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/deepe/b/b/b;->c:Ljava/lang/String;

    return-object v1
.end method

.method public static b(Ljava/lang/String;)Lcom/deepe/b/d/f;
    .locals 5

    invoke-static {p0}, Lcom/deepe/b/b/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/deepe/b/d/f;->a:Lcom/deepe/b/d/f;

    return-object p0

    :cond_0
    const-string v0, "status"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/deepe/b/d/f;

    invoke-direct {v1, v0}, Lcom/deepe/b/d/f;-><init>(I)V

    const-string v0, "result"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/deepe/b/d/f;->a(Z)V

    return-object v1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/deepe/b/d/f;->a(Z)V

    const-string v2, "push"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/deepe/b/d/f;->f:Z

    const-string v0, "update"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/deepe/b/d/f;->d:Z

    const-string v0, "closed"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/deepe/b/d/f;->e:Z

    const-string v0, "version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepe/b/d/f;->g:Ljava/lang/String;

    const-string v0, ""

    const-string v2, "closeTip"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "\u672c\u5e94\u7528\u8be5\u7248\u672c\u4e0d\u518d\u4f7f\u7528"

    :cond_2
    iput-object v2, v1, Lcom/deepe/b/d/f;->h:Ljava/lang/String;

    const-string v2, "updateTip"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "\u6709\u65b0\u7248\u672c\u5566"

    :cond_3
    iput-object v0, v1, Lcom/deepe/b/d/f;->i:Ljava/lang/String;

    const-string v0, "source"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepe/b/d/f;->j:Ljava/lang/String;

    const-string v0, "time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepe/b/d/f;->k:Ljava/lang/String;

    invoke-static {p0}, Lcom/deepe/b/b/a;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/deepe/b/d/f;->a(Ljava/util/List;)V

    invoke-static {p0}, Lcom/deepe/b/b/a;->b(Lorg/json/JSONObject;)Lcom/deepe/b/b/b;

    move-result-object p0

    iput-object p0, v1, Lcom/deepe/b/d/f;->l:Lcom/deepe/b/b/b;

    return-object v1
.end method
