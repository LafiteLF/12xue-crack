.class Lcom/uzmap/pkg/uzcore/uzmodule/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(Lcom/uzmap/pkg/uzcore/i/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/i/j;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;Lcom/uzmap/pkg/uzcore/i/j;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a$1;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a$1;->b:Lcom/uzmap/pkg/uzcore/i/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a$1;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a$1;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a$1;->b:Lcom/uzmap/pkg/uzcore/i/j;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/i/j;)V

    :cond_0
    return-void
.end method
