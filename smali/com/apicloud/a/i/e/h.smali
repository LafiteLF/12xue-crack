.class Lcom/apicloud/a/i/e/h;
.super Lcom/apicloud/a/i/e/g;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e/g;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/apicloud/a/g/e/g;->a(Ljava/lang/String;)Lcom/apicloud/a/g/j;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/apicloud/a/g/d/l;->a(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/apicloud/a/g/j;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Lcom/apicloud/a/g/j;->a(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, p1}, Lcom/apicloud/a/g/j;->b(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p2}, Lcom/apicloud/a/g/j;->j()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p2}, Lcom/apicloud/a/g/j;->h()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p2}, Lcom/apicloud/a/g/j;->i()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p2}, Lcom/apicloud/a/g/j;->f()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2}, Lcom/apicloud/a/g/j;->g()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/apicloud/a/g/j;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Lcom/apicloud/a/g/j;->a(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, p1}, Lcom/apicloud/a/g/j;->b(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_3
    invoke-virtual {p2}, Lcom/apicloud/a/g/j;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/apicloud/a/g/j;->j()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    invoke-virtual {p2}, Lcom/apicloud/a/g/j;->h()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {p2}, Lcom/apicloud/a/g/j;->i()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    :cond_4
    invoke-virtual {p2}, Lcom/apicloud/a/g/j;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/apicloud/a/g/j;->f()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2}, Lcom/apicloud/a/g/j;->g()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_5
    invoke-virtual {p2}, Lcom/apicloud/a/g/j;->d()Z

    return-void
.end method

.method private b(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 1

    const-string v0, "transform"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/e/h;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    const-string v0, "transformOrigin"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/e/h;->b(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method
