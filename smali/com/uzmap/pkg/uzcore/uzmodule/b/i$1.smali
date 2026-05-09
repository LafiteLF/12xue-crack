.class Lcom/uzmap/pkg/uzcore/uzmodule/b/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/b/i;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/i;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/i$1;->a:Lcom/uzmap/pkg/uzcore/uzmodule/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/c/d;)V
    .locals 2

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/i$1;->a:Lcom/uzmap/pkg/uzcore/uzmodule/b/i;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/i;ZLcom/deepe/c/c/g;)V

    return-void
.end method

.method public a(Lcom/deepe/c/c/g;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/i$1;->a:Lcom/uzmap/pkg/uzcore/uzmodule/b/i;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/i;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/i;ZLcom/deepe/c/c/g;)V

    return-void
.end method
