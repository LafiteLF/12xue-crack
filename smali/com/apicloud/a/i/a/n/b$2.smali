.class Lcom/apicloud/a/i/a/n/b$2;
.super Lcom/apicloud/a/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/n/b;->e(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/apicloud/a/i/a/n/b$2;->a:Lcom/apicloud/a/i/a/n/b;

    invoke-direct {p0, p2, p3}, Lcom/apicloud/a/d/e;-><init>(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/n/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/n/b$2;->a(Lcom/apicloud/a/i/a/n/b;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected a(Lcom/apicloud/a/i/a/n/b;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/b;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
