.class Lcom/apicloud/a/i/a/ai/a/e;
.super Lcom/apicloud/a/i/a/ai/a/h;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/ai/a/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/a/h;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/a/e;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/apicloud/a/i/a/ai/a/f;

    invoke-direct {p1}, Lcom/apicloud/a/i/a/ai/a/f;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/e;->a:Lcom/apicloud/a/i/a/ai/a/f;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/f;->b()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/e;->a:Lcom/apicloud/a/i/a/ai/a/f;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/a/e;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/e;->a:Lcom/apicloud/a/i/a/ai/a/f;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/f;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/e;->a:Lcom/apicloud/a/i/a/ai/a/f;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/f;->b()V

    :goto_0
    return-void
.end method
