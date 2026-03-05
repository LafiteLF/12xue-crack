.class Lcom/deepe/a/g/a/c;
.super Lcom/deepe/a/g/a/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/a/g/a/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    sget-object v0, Lcom/deepe/a/g/a/c;->e:[F

    invoke-static {v0, p1, p2}, Lcom/deepe/a/g/a/f;->a([FII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepe/a/g/a/c;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
