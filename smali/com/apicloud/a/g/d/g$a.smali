.class Lcom/apicloud/a/g/d/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/g/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/apicloud/a/g/d/g$a;->a:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/apicloud/a/g/d/g$a;->b:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/apicloud/a/g/d/g$a;->c:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/apicloud/a/g/d/g$a;->d:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/apicloud/a/g/d/g$a;->e:F

    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Lcom/apicloud/a/g/d/g$a;->f:F

    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Lcom/apicloud/a/g/d/g$a;->g:F

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    iput p1, p0, Lcom/apicloud/a/g/d/g$a;->h:F

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 9

    iget v1, p0, Lcom/apicloud/a/g/d/g$a;->a:F

    iget v2, p0, Lcom/apicloud/a/g/d/g$a;->b:F

    iget v3, p0, Lcom/apicloud/a/g/d/g$a;->c:F

    iget v4, p0, Lcom/apicloud/a/g/d/g$a;->d:F

    iget v5, p0, Lcom/apicloud/a/g/d/g$a;->e:F

    iget v6, p0, Lcom/apicloud/a/g/d/g$a;->f:F

    iget v7, p0, Lcom/apicloud/a/g/d/g$a;->g:F

    iget v8, p0, Lcom/apicloud/a/g/d/g$a;->h:F

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/apicloud/a/g/d/g;->a(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/apicloud/a/g/d/g$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/apicloud/a/g/d/g$a;

    iget v0, p1, Lcom/apicloud/a/g/d/g$a;->a:F

    iget v2, p0, Lcom/apicloud/a/g/d/g$a;->a:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Lcom/apicloud/a/g/d/g$a;->b:F

    iget v2, p0, Lcom/apicloud/a/g/d/g$a;->b:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Lcom/apicloud/a/g/d/g$a;->c:F

    iget v2, p0, Lcom/apicloud/a/g/d/g$a;->c:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Lcom/apicloud/a/g/d/g$a;->d:F

    iget v2, p0, Lcom/apicloud/a/g/d/g$a;->d:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Lcom/apicloud/a/g/d/g$a;->e:F

    iget v2, p0, Lcom/apicloud/a/g/d/g$a;->e:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Lcom/apicloud/a/g/d/g$a;->f:F

    iget v2, p0, Lcom/apicloud/a/g/d/g$a;->f:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Lcom/apicloud/a/g/d/g$a;->g:F

    iget v2, p0, Lcom/apicloud/a/g/d/g$a;->g:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget p1, p1, Lcom/apicloud/a/g/d/g$a;->h:F

    iget v0, p0, Lcom/apicloud/a/g/d/g$a;->h:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
