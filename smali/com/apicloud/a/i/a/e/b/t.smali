.class final Lcom/apicloud/a/i/a/e/b/t;
.super Lcom/apicloud/a/i/a/e/b/ar;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    const-string v0, "font"

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/e/b/ar;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/b/x;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/b/t;->c()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/apicloud/a/i/a/e/a/f;->a(Lcom/apicloud/a/d;Ljava/lang/String;)Lcom/apicloud/a/i/a/e/a/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/e/a/f;->g()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->d()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    invoke-virtual {p2}, Lcom/apicloud/a/i/a/e/a/f;->b()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->d()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    invoke-virtual {p2}, Lcom/apicloud/a/i/a/e/a/f;->f()Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_2

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->d()Landroid/graphics/Paint;

    move-result-object p1

    const-string p2, "smcp"

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
