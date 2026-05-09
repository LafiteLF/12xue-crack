.class Lcom/uzmap/pkg/b/b/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/b/b/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/b/h;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/b/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/h$1;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h$1;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/i;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/i;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/h$1;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-virtual {v1}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/uzmap/pkg/b/b/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "WiFi\u8c03\u8bd5\u5df2\u8fde\u63a5"

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h$1;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/i;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/b/i;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/uzmap/pkg/b/b/e;->b()V

    return-void
.end method
