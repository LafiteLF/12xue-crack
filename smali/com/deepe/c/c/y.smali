.class public Lcom/deepe/c/c/y;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/String;)Lcom/deepe/c/c/m;
    .locals 5

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/deepe/c/i/h;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-static {v0}, Lcom/deepe/c/i/h;->b(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-static {v2, p0}, Lcom/deepe/c/c/w;->a([BLjava/lang/String;)Lcom/deepe/c/c/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/v;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/deepe/c/c/m;->b([B)Lcom/deepe/c/c/m;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    return-object p0

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/deepe/c/c/v;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/deepe/c/c/m;->a([B)Lcom/deepe/c/c/m;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    return-object p0

    :cond_2
    :try_start_3
    invoke-virtual {v3}, Lcom/deepe/c/c/v;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2, v3}, Lcom/deepe/c/c/w;->a([BLcom/deepe/c/c/v;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/deepe/c/c/m;->a(Landroid/graphics/Bitmap;)Lcom/deepe/c/c/m;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v0}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    return-object p0

    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-object v0, v1

    :catch_1
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getImage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found!"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_1
    return-object v1

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_2
    invoke-static {v1}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    throw p0
.end method
