.class Lcom/apicloud/a/i/a/ai/a/g;
.super Lcom/apicloud/a/i/a/ai/a/h;


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/a/h;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/a/g;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/deepe/c/k/j;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/deepe/c/k/j;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/g;->b:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/g;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/a/g;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/g;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/g;->a:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/a/g;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
