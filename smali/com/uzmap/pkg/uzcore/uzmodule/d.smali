.class public final Lcom/uzmap/pkg/uzcore/uzmodule/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/uzmap/pkg/uzcore/ah;

.field private b:Z

.field private c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/uzmap/pkg/uzcore/uzmodule/e;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/ah;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a:Lcom/uzmap/pkg/uzcore/ah;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->c:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/d;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->d:Lcom/uzmap/pkg/uzcore/uzmodule/e;

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/e;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/c;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, v0, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/c;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->d:Lcom/uzmap/pkg/uzcore/uzmodule/e;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->onClean()V

    goto :goto_0
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a:Lcom/uzmap/pkg/uzcore/ah;

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->c:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/c/d;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a:Lcom/uzmap/pkg/uzcore/ah;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/c/d;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/ah;->a(Lcom/uzmap/pkg/uzcore/x;Ljava/lang/String;)V

    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/a/e;

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a:Lcom/uzmap/pkg/uzcore/ah;

    invoke-direct {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/e;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a:Lcom/uzmap/pkg/uzcore/ah;

    const-string v0, "os"

    invoke-interface {p2, p1, v0}, Lcom/uzmap/pkg/uzcore/ah;->a(Lcom/uzmap/pkg/uzcore/x;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a:Lcom/uzmap/pkg/uzcore/ah;

    const-string v0, "_global_os"

    invoke-interface {p2, p1, v0}, Lcom/uzmap/pkg/uzcore/ah;->a(Lcom/uzmap/pkg/uzcore/x;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a:Lcom/uzmap/pkg/uzcore/ah;

    const-string p2, "searchBoxJavaBridge_"

    invoke-interface {p1, p2}, Lcom/uzmap/pkg/uzcore/ah;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a:Lcom/uzmap/pkg/uzcore/ah;

    const-string p2, "accessibility"

    invoke-interface {p1, p2}, Lcom/uzmap/pkg/uzcore/ah;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a:Lcom/uzmap/pkg/uzcore/ah;

    const-string p2, "accessibilityTraversal"

    invoke-interface {p1, p2}, Lcom/uzmap/pkg/uzcore/ah;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/uzmodule/e;->a()Lcom/uzmap/pkg/uzcore/uzmodule/e;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->d:Lcom/uzmap/pkg/uzcore/uzmodule/e;

    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->d:Lcom/uzmap/pkg/uzcore/uzmodule/e;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/e;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/c;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a:Lcom/uzmap/pkg/uzcore/ah;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/c;->a([Ljava/lang/Object;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a:Lcom/uzmap/pkg/uzcore/ah;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/c/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/ah;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a:Lcom/uzmap/pkg/uzcore/ah;

    const-string v1, "os"

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/ah;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a:Lcom/uzmap/pkg/uzcore/ah;

    const-string v1, "_global_os"

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/ah;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a:Lcom/uzmap/pkg/uzcore/ah;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/d;->b:Z

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->onClean()V

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->destroy()V

    goto :goto_0
.end method
