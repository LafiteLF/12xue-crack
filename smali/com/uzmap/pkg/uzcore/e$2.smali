.class Lcom/uzmap/pkg/uzcore/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/h/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/h/n$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/e;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/h/n$a;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/e;Lcom/uzmap/pkg/uzcore/h/n$a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/e$2;->a:Lcom/uzmap/pkg/uzcore/e;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/e$2;->b:Lcom/uzmap/pkg/uzcore/h/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e$2;->a:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e$2;->a:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e$2;->a:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0, v2, v3}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/u;Z)V

    return v1

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e$2;->b:Lcom/uzmap/pkg/uzcore/h/n$a;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/n$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e$2;->a:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0, v2, v3}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/u;Z)V

    return v3
.end method
