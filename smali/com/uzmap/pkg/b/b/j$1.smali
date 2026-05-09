.class Lcom/uzmap/pkg/b/b/j$1;
.super Lcom/uzmap/pkg/uzcore/external/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/b/b/j;->show()V
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

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/j$1;->a:Lcom/uzmap/pkg/b/b/j;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/external/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/j$1;->a:Lcom/uzmap/pkg/b/b/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/b/b/j;->a(Lcom/uzmap/pkg/b/b/j;Z)V

    return-void
.end method
