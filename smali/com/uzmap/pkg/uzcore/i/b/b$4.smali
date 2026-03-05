.class Lcom/uzmap/pkg/uzcore/i/b/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/i/b/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/i/b/b;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/i/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$4;->a:Lcom/uzmap/pkg/uzcore/i/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$4;->a:Lcom/uzmap/pkg/uzcore/i/b/b;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/i/b/b;->b(Lcom/uzmap/pkg/uzcore/i/b/b;)Lcom/uzmap/pkg/uzcore/i/b/b$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$4;->a:Lcom/uzmap/pkg/uzcore/i/b/b;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/i/b/b;->b(Lcom/uzmap/pkg/uzcore/i/b/b;)Lcom/uzmap/pkg/uzcore/i/b/b$c;

    move-result-object p1

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b/b$4;->a:Lcom/uzmap/pkg/uzcore/i/b/b;

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/i/b/b;->c(Lcom/uzmap/pkg/uzcore/i/b/b;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/b$4;->a:Lcom/uzmap/pkg/uzcore/i/b/b;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/i/b/b;->d(Lcom/uzmap/pkg/uzcore/i/b/b;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$4;->a:Lcom/uzmap/pkg/uzcore/i/b/b;

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/i/b/b;->e(Lcom/uzmap/pkg/uzcore/i/b/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b/b$4;->a:Lcom/uzmap/pkg/uzcore/i/b/b;

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/i/b/b;->f(Lcom/uzmap/pkg/uzcore/i/b/b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/i/b/b$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
