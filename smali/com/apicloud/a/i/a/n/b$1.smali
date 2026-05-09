.class Lcom/apicloud/a/i/a/n/b$1;
.super Lcom/apicloud/a/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/n/b;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/d/e<",
        "Lcom/apicloud/a/i/a/n/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/n/b;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/i/a/n/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/n/b$1;->a:Lcom/apicloud/a/i/a/n/b;

    invoke-direct {p0, p2, p3}, Lcom/apicloud/a/d/e;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/n/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/n/b$1;->a(Lcom/apicloud/a/i/a/n/b;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected a(Lcom/apicloud/a/i/a/n/b;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b$1;->a:Lcom/apicloud/a/i/a/n/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/n/b;->a(Lcom/apicloud/a/i/a/n/b;I)V

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-static {p1}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p2

    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b$1;->a:Lcom/apicloud/a/i/a/n/b;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/apicloud/a/i/a/n/b;->a(Lcom/apicloud/a/i/a/n/b;ZII)V

    return-void
.end method

.method protected bridge synthetic b(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/n/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/n/b$1;->b(Lcom/apicloud/a/i/a/n/b;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected b(Lcom/apicloud/a/i/a/n/b;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b$1;->a:Lcom/apicloud/a/i/a/n/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/n/b;->a(Lcom/apicloud/a/i/a/n/b;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/n/b;->h()V

    :goto_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/n/b$1;->a:Lcom/apicloud/a/i/a/n/b;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, p2}, Lcom/apicloud/a/i/a/n/b;->a(Lcom/apicloud/a/i/a/n/b;ZII)V

    return-void
.end method
