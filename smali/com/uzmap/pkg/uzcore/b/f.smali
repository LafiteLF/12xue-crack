.class public Lcom/uzmap/pkg/uzcore/b/f;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Ljava/io/File;Z)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 6

    const-string v0, "file://"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "config.xml"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, p1}, Lcom/uzmap/pkg/uzcore/b/f;->a(Ljava/io/InputStream;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/b/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/deepe/c/i/x;->v(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "index.html"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/b/d;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/uzmap/pkg/uzcore/b/d;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "icon"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/uzmap/pkg/uzcore/b/d;->c:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/b/d;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private static a(Ljava/io/InputStream;Z)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 13

    const-string v0, "href"

    const-string v1, "email"

    const-string v2, "author"

    const-string v3, "description"

    const-string v4, "name"

    new-instance v5, Lcom/uzmap/pkg/uzcore/b/d;

    invoke-direct {v5}, Lcom/uzmap/pkg/uzcore/b/d;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/b/j;->a()Lcom/uzmap/pkg/uzcore/b/j;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Lcom/uzmap/pkg/uzcore/b/j;->a(Ljava/io/InputStream;Z)V

    const/4 p0, 0x1

    move v9, p0

    move-object v8, v6

    :cond_0
    invoke-virtual {v7}, Lcom/uzmap/pkg/uzcore/b/j;->b()I

    move-result v10

    if-eq v10, p0, :cond_c

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v7}, Lcom/uzmap/pkg/uzcore/b/j;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "widget"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v10, "id"

    invoke-virtual {v7, v10}, Lcom/uzmap/pkg/uzcore/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    const-string v10, "version"

    invoke-virtual {v7, v10}, Lcom/uzmap/pkg/uzcore/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/uzmap/pkg/uzcore/b/d;->b:Ljava/lang/String;

    const-string v10, "security"

    invoke-virtual {v7, v10}, Lcom/uzmap/pkg/uzcore/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    iput-boolean p1, v5, Lcom/uzmap/pkg/uzcore/b/d;->t:Z

    goto/16 :goto_0

    :cond_2
    const-string v11, "true"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v5, Lcom/uzmap/pkg/uzcore/b/d;->t:Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v7}, Lcom/uzmap/pkg/uzcore/b/j;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v4, v10}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v7}, Lcom/uzmap/pkg/uzcore/b/j;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v3, v10}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v7, v1}, Lcom/uzmap/pkg/uzcore/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v1, v10}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/uzmap/pkg/uzcore/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v0, v10}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/uzmap/pkg/uzcore/b/j;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v2, v10}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v11, "content"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v10, "src"

    invoke-virtual {v7, v10}, Lcom/uzmap/pkg/uzcore/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/uzmap/pkg/uzcore/b/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v11, "access"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v10, "origin"

    invoke-virtual {v7, v10}, Lcom/uzmap/pkg/uzcore/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/uzmap/pkg/uzcore/b/d;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v11, "preference"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "value"

    if-eqz v11, :cond_9

    :try_start_1
    invoke-virtual {v7, v4}, Lcom/uzmap/pkg/uzcore/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v12}, Lcom/uzmap/pkg/uzcore/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11, v7}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/b/j;)V

    goto :goto_0

    :cond_9
    const-string v11, "permission"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v7, v4}, Lcom/uzmap/pkg/uzcore/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/uzmap/pkg/uzcore/b/d;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string v11, "feature"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v7, v4}, Lcom/uzmap/pkg/uzcore/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v5, v8, v6, v6}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string v11, "param"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v7, v4}, Lcom/uzmap/pkg/uzcore/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v12}, Lcom/uzmap/pkg/uzcore/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v8, v10, v11}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_c
    const/4 v9, 0x0

    :cond_d
    :goto_0
    if-nez v9, :cond_0

    return-object v5

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v6
.end method

.method public static a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "config.xml"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/i/x;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/deepe/c/i/x;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uzmap/pkg/uzcore/b/f;->d(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/b/f;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 1

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p2}, Lcom/uzmap/pkg/uzcore/b/f;->a(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/b/f;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzcore/b/f;->e(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/deepe/b/f/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzcore/b/f;->c(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "widget/wgt/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzcore/b/f;->d(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzcore/b/f;->e(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static a(Z)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "widget"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/uzmap/pkg/uzcore/b/f;->d(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    sput-object v0, Lcom/uzmap/pkg/uzcore/b/f;->a:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 12

    const-string v0, "name"

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/g/f;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, v3

    if-lt v6, v7, :cond_2

    const-string v0, "data"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "status"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    aget-object v7, v3, v6

    invoke-static {v7, v5}, Lcom/uzmap/pkg/uzcore/b/f;->a(Ljava/io/File;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v0}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v9, v7, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    aget-object v10, v2, v6

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    move-object v9, v10

    :cond_4
    const-string v10, "widgetId"

    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v7, v7, Lcom/uzmap/pkg/uzcore/b/d;->c:Ljava/lang/String;

    const-string v9, "file://"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "iconPath"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uzmap/pkg/uzcore/b/f;->b(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/deepe/c/i/h;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzcore/b/f;->a(Ljava/io/InputStream;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/b/d;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "config.xml"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/deepe/c/i/x;->v(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "index.html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/b/d;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;)V

    iput-object p0, p1, Lcom/uzmap/pkg/uzcore/b/d;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "icon"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/uzmap/pkg/uzcore/b/d;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Z)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 2

    invoke-static {}, Lcom/deepe/b/f/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/uzmap/pkg/uzcore/b/f;->a(Ljava/io/File;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "file://"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/uzmap/pkg/uzcore/b/f;->a(Ljava/io/File;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static c(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 2

    invoke-static {}, Lcom/deepe/b/f/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "wgt/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzcore/b/f;->a(Ljava/io/File;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 4

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/uzmap/pkg/uzcore/b/f;->a(Ljava/io/InputStream;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/b/d;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file:///android_asset/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/deepe/c/i/x;->v(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "index.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/deepe/c/i/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p0, v1, Lcom/uzmap/pkg/uzcore/b/d;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzcore/b/d;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "icon"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/uzmap/pkg/uzcore/b/d;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/b/d;->m()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "parseFromAssert not find: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static e(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 4

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g/f;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/uzmap/pkg/uzcore/b/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "wgt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p1}, Lcom/uzmap/pkg/uzcore/b/f;->a(Ljava/io/File;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzcore/b/f;->a(Ljava/io/File;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-object v2
.end method
