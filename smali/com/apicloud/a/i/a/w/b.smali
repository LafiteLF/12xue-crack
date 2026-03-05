.class public Lcom/apicloud/a/i/a/w/b;
.super Landroid/widget/RadioButton;

# interfaces
.implements Lcom/apicloud/a/i/a/g/c;
.implements Lcom/apicloud/a/i/a/g/k;


# instance fields
.field private a:Lcom/apicloud/a/i/d/b/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/apicloud/a/g/i;->b(Landroid/widget/TextView;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/w/b;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x5

    invoke-static {p1}, Lcom/apicloud/a/i/d/a;->a(I)Lcom/apicloud/a/i/d/b/i;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/w/b;->a:Lcom/apicloud/a/i/d/b/i;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/w/b;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public b()Lcom/apicloud/a/i/c/l;
    .locals 4

    invoke-static {p0}, Lcom/apicloud/a/i/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const v2, 0x7f040005

    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/a/w/b;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/w/b;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "on"

    :goto_0
    new-instance v1, Lcom/apicloud/a/i/c/l;

    invoke-direct {v1, v0, v2}, Lcom/apicloud/a/i/c/l;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/w/b;->setChecked(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[radio]"

    return-object v0
.end method
