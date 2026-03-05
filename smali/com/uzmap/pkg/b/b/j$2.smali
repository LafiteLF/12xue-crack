.class Lcom/uzmap/pkg/b/b/j$2;
.super Lcom/uzmap/pkg/uzcore/external/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/b/b/j;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/b/j;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/b/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/j$2;->a:Lcom/uzmap/pkg/b/b/j;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/external/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/j$2;->a:Lcom/uzmap/pkg/b/b/j;

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/j;->b(Lcom/uzmap/pkg/b/b/j;)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/j$2;->a:Lcom/uzmap/pkg/b/b/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/b/b/j;->a(Lcom/uzmap/pkg/b/b/j;Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/j$2;->a:Lcom/uzmap/pkg/b/b/j;

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/j;->c(Lcom/uzmap/pkg/b/b/j;)Lcom/uzmap/pkg/b/b/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/j$2;->a:Lcom/uzmap/pkg/b/b/j;

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/j;->c(Lcom/uzmap/pkg/b/b/j;)Lcom/uzmap/pkg/b/b/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/j$a;->a()Z

    move-result v1

    :cond_0
    invoke-static {v1}, Lcom/uzmap/pkg/b/b/j;->a(Z)V

    invoke-static {}, Lcom/uzmap/pkg/b/b/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u91cd\u542f\u5e94\u7528\u6216\u6740\u6389\u8fdb\u7a0b\u540e\u5c06\u518d\u6b21\u63d0\u793a"

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
