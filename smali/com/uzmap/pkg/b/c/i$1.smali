.class Lcom/uzmap/pkg/b/c/i$1;
.super Lcom/deepe/c/b/d/b$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/b/c/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/c/i;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/b/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/c/i$1;->a:Lcom/uzmap/pkg/b/c/i;

    invoke-direct {p0}, Lcom/deepe/c/b/d/b$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/b/c/i$1;->a:Lcom/uzmap/pkg/b/c/i;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/uzmap/pkg/b/c/i;->a(Lcom/uzmap/pkg/b/c/i;Z)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/c/i$1;->a:Lcom/uzmap/pkg/b/c/i;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/c/i;->d(I)V

    return-void
.end method
