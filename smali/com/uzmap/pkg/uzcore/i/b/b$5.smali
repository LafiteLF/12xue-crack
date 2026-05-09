.class Lcom/uzmap/pkg/uzcore/i/b/b$5;
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

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$5;->a:Lcom/uzmap/pkg/uzcore/i/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$5;->a:Lcom/uzmap/pkg/uzcore/i/b/b;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/i/b/b;->g(Lcom/uzmap/pkg/uzcore/i/b/b;)Lcom/uzmap/pkg/uzcore/i/b/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$5;->a:Lcom/uzmap/pkg/uzcore/i/b/b;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/i/b/b;->g(Lcom/uzmap/pkg/uzcore/i/b/b;)Lcom/uzmap/pkg/uzcore/i/b/b$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/i/b/b$a;->a()V

    :cond_0
    return-void
.end method
