.class Lcom/uzmap/pkg/uzcore/i/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/i/p;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/i/p;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/i/p;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/p$1;->a:Lcom/uzmap/pkg/uzcore/i/p;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/i/p$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/p$1;->a:Lcom/uzmap/pkg/uzcore/i/p;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/i/p;->a(Lcom/uzmap/pkg/uzcore/i/p;)Lcom/deepe/d/e;

    move-result-object v0

    const-string v1, "timing"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/p$1;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/p$1;->a:Lcom/uzmap/pkg/uzcore/i/p;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/i/p;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/e;->y()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/p$1;->a:Lcom/uzmap/pkg/uzcore/i/p;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/i/p;->a(Lcom/uzmap/pkg/uzcore/i/p;)Lcom/deepe/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/d/e;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/p$1;->a:Lcom/uzmap/pkg/uzcore/i/p;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/i/p;->a(Lcom/uzmap/pkg/uzcore/i/p;)Lcom/deepe/d/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepe/d/e;->c(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/p$1;->a:Lcom/uzmap/pkg/uzcore/i/p;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/i/p;->a(Lcom/uzmap/pkg/uzcore/i/p;)Lcom/deepe/d/e;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/d/a;->a(Lcom/deepe/sdk/PerformanceContext;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/p$1;->a:Lcom/uzmap/pkg/uzcore/i/p;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/i/p;->b(Lcom/uzmap/pkg/uzcore/i/p;)V

    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/p$1;->a(Ljava/lang/String;)V

    return-void
.end method
