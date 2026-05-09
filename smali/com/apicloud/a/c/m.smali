.class public Lcom/apicloud/a/c/m;
.super Lcom/apicloud/a/c/i;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/c/x;Lcom/apicloud/a/c/s;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/c/i;-><init>(Lcom/apicloud/a/c/x;Lcom/apicloud/a/c/s;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Lcom/apicloud/a/c/m;->a()Lcom/eclipsesource/v8/V8Object;

    move-result-object v0

    const-string v1, "error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eclipsesource/v8/V8Object;->add(Ljava/lang/String;Z)Lcom/eclipsesource/v8/V8Object;

    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/apicloud/a/c/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/eclipsesource/v8/V8Object;->add(Ljava/lang/String;Z)Lcom/eclipsesource/v8/V8Object;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/apicloud/a/c/m;->a:Lcom/apicloud/a/c/x;

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    move-object v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/apicloud/a/c/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/apicloud/a/c/m;->a:Lcom/apicloud/a/c/x;

    invoke-virtual {p2, p4, p1, v2}, Lcom/apicloud/a/c/x;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    instance-of p2, p1, Lcom/eclipsesource/v8/V8Value;
    :try_end_0
    .catch Lcom/eclipsesource/v8/V8ScriptCompilationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, "result"

    if-eqz p2, :cond_2

    :try_start_1
    move-object p2, p1

    check-cast p2, Lcom/eclipsesource/v8/V8Value;

    invoke-virtual {v0, p3, p2}, Lcom/eclipsesource/v8/V8Object;->add(Ljava/lang/String;Lcom/eclipsesource/v8/V8Value;)Lcom/eclipsesource/v8/V8Object;

    check-cast p1, Lcom/eclipsesource/v8/V8Value;

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Value;->close()V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p3}, Lcom/eclipsesource/v8/V8Object;->addUndefined(Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;
    :try_end_1
    .catch Lcom/eclipsesource/v8/V8ScriptCompilationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_2
    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8ScriptCompilationException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/c/m;->b:Lcom/apicloud/a/c/s;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/c/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ".js"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const-string v1, ".json"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "<"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public invoke(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/Object;
    .locals 5

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Array;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    const-string v2, ""

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    :try_start_1
    invoke-virtual {p2, v3}, Lcom/eclipsesource/v8/V8Array;->getType(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, v3}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Array;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    invoke-virtual {p2, v4}, Lcom/eclipsesource/v8/V8Array;->getType(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-virtual {p2, v4}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/c/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find module \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string p1, "null"

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/apicloud/a/c/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Array;->isReleased()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Array;->isReleased()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/eclipsesource/v8/V8Array;->close()V

    :cond_6
    throw p1
.end method
