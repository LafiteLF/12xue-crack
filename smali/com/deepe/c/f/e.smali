.class final Lcom/deepe/c/f/e;
.super Ljava/lang/Object;


# direct methods
.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/deepe/c/f/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672a\u53d6\u5f97\u60a8\u7684"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/deepe/c/f/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u4f7f\u7528\u6743\u9650\uff0c\u6b64\u529f\u80fd\u65e0\u6cd5\u4f7f\u7528\u3002\u8bf7\u524d\u5f80\u5e94\u7528\u6743\u9650\u8bbe\u7f6e\u6253\u5f00\u6743\u9650\u3002"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "This app may not work correctly without the requested permissions. \nOpen the app settings screen to modify app permissions."

    return-object p0
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Lcom/deepe/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/f/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u4e3a\u4fdd\u8bc1\u60a8\u6b63\u5e38\u5730\u4f7f\u7528\u6b64\u529f\u80fd\uff0c\u9700\u8981\u83b7\u53d6\u60a8\u8bbe\u5907\u7684\u76f8\u5173\u6743\u9650\uff0c\u8bf7\u5141\u8bb8\u3002"

    return-object v0

    :cond_0
    const-string v0, "This app may not work correctly without the requested permissions."

    return-object v0
.end method

.method public static final c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/f/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u53d6\u6d88"

    return-object v0

    :cond_0
    const-string v0, "Cancel"

    return-object v0
.end method

.method public static final d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/f/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u53bb\u6253\u5f00"

    return-object v0

    :cond_0
    const-string v0, "Settings"

    return-object v0
.end method

.method public static final e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/f/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u53bb\u5141\u8bb8"

    return-object v0

    :cond_0
    const-string v0, "Allows"

    return-object v0
.end method

.method public static final f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/f/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6743\u9650\u7533\u8bf7"

    return-object v0

    :cond_0
    const-string v0, "Apply"

    return-object v0
.end method

.method public static final g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/f/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6743\u9650\u4f7f\u7528\u8bf4\u660e"

    return-object v0

    :cond_0
    const-string v0, " statements"

    return-object v0
.end method

.method public static final h()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/f/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6743\u9650"

    return-object v0

    :cond_0
    const-string v0, " perms"

    return-object v0
.end method
