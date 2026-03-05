.class Lcom/apicloud/a/i/a/ai/a/h;
.super Landroid/widget/ImageButton;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/a/h;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a/h;->a:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a/h;->a:Z

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/a/h;->a(Z)V

    :cond_0
    return-void
.end method
