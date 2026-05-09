.class Lcom/uzmap/pkg/uzcore/f/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/f/b;->a(Lcom/uzmap/pkg/uzcore/f/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/f/b;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/f/b$2;->a:Lcom/uzmap/pkg/uzcore/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/b$2;->a:Lcom/uzmap/pkg/uzcore/f/b;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/f/b;->c(Lcom/uzmap/pkg/uzcore/f/b;)Lcom/uzmap/pkg/uzcore/f/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/b$2;->a:Lcom/uzmap/pkg/uzcore/f/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzcore/f/b;->a(Lcom/uzmap/pkg/uzcore/f/b;Z)V

    :cond_0
    return-void
.end method
