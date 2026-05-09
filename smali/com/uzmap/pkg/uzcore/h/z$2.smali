.class Lcom/uzmap/pkg/uzcore/h/z$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/h/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/h/z;->a(Lcom/uzmap/pkg/uzcore/h/k;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/h/z;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/h/k;

.field private final synthetic c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/h/z;Lcom/uzmap/pkg/uzcore/h/k;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/z$2;->a:Lcom/uzmap/pkg/uzcore/h/z;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/h/z$2;->b:Lcom/uzmap/pkg/uzcore/h/k;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/h/z$2;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/z$2;->b:Lcom/uzmap/pkg/uzcore/h/k;

    iget v2, v2, Lcom/uzmap/pkg/uzcore/h/k;->m:I

    int-to-float v2, v2

    invoke-static {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/h/r;->a(FII)Lcom/deepe/c/c/ad;

    move-result-object v0

    iget v1, v0, Lcom/deepe/c/c/ad;->a:F

    float-to-int v1, v1

    iget v0, v0, Lcom/deepe/c/c/ad;->b:F

    float-to-int v0, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z$2;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
