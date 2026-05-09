.class public Lcom/uzmap/pkg/uzcore/h/k;
.super Lcom/uzmap/pkg/uzcore/h/i;


# instance fields
.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/i;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/k;->l:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/k;->m:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/k;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/r;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/deepe/c/c/ae;

    invoke-direct {v1, p1, v0}, Lcom/deepe/c/c/ae;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/deepe/c/c/ae;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/deepe/c/c/ae;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public b()Landroid/content/res/ColorStateList;
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/k;->c:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/h/k;->d:I

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/h/r;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/graphics/drawable/StateListDrawable;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/k;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/k;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/h/r;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method
