.class Lcom/uzmap/pkg/uzcore/i/b/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/i/b/f;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/i/b/f;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/i/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/f$2;->a:Lcom/uzmap/pkg/uzcore/i/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/f$2;->a:Lcom/uzmap/pkg/uzcore/i/b/f;

    sget-object v0, Lcom/uzmap/pkg/uzcore/p$a;->f:Lcom/uzmap/pkg/uzcore/p$a;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/i/b/f;->a(Lcom/uzmap/pkg/uzcore/p$a;)Z

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/f$2;->a:Lcom/uzmap/pkg/uzcore/i/b/f;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/i/b/f;->N()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
