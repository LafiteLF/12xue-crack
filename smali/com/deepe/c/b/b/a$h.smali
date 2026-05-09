.class Lcom/deepe/c/b/b/a$h;
.super Lcom/deepe/c/b/b/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/b/b/a$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/b/b/a;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/b/b/a$c;

    iget-object p1, p1, Lcom/deepe/c/b/b/a$c;->d:Landroid/graphics/Paint;

    invoke-static {p2, p1}, Lcom/deepe/c/b/m;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method
