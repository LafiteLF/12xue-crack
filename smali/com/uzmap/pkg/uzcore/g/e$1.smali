.class Lcom/uzmap/pkg/uzcore/g/e$1;
.super Lcom/uzmap/pkg/uzkit/request/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/g/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/g/e;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/g/e;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g/e$1;->a:Lcom/uzmap/pkg/uzcore/g/e;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/g/e$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/g/e$1;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
    .locals 6

    const-string v0, "bin"

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->getDes()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/g/e$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->contentType:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->contentType:Ljava/lang/String;

    invoke-static {v3}, Lcom/deepe/c/i/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/uzmap/pkg/uzcore/g/e$1;->b:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/g/e$1;->b:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v3

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v4, v3

    goto :goto_1

    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/g/e$1;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/deepe/c/a/k;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/e$1;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->contentType:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/deepe/c/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v2, "push to system album abort."
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/g/e$1;->a:Lcom/uzmap/pkg/uzcore/g/e;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/e$1;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {p1, v1, v2, v4, v0}, Lcom/uzmap/pkg/uzcore/g/e;->a(Lcom/uzmap/pkg/uzcore/g/e;ZLjava/lang/String;Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method
