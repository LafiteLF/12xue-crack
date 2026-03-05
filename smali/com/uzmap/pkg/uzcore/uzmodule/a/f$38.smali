.class Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->aL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

.field private final synthetic b:Lcom/deepe/a/g/a/g;

.field private final synthetic c:Lcom/deepe/a/g/a/d;

.field private final synthetic d:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;Lcom/deepe/a/g/a/g;Lcom/deepe/a/g/a/d;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->b:Lcom/deepe/a/g/a/g;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->c:Lcom/deepe/a/g/a/d;

    iput-object p4, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->d:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;)Lcom/uzmap/pkg/uzcore/uzmodule/a/f;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    new-instance v1, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38$1;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->c(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->d:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-direct {v1, p0, v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38$1;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->a(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;Lcom/deepe/a/g/a/a;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->h(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Lcom/deepe/a/g/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->b:Lcom/deepe/a/g/a/g;

    invoke-virtual {v0, v1}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/g;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->h(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Lcom/deepe/a/g/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->c:Lcom/deepe/a/g/a/d;

    invoke-virtual {v0, v1}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/d;)V

    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->h(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Lcom/deepe/a/g/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/a/g/a/a;->create()V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$38;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->h(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Lcom/deepe/a/g/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/a/g/a/a;->show()V

    return-void
.end method
