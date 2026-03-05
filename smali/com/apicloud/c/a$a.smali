.class public Lcom/apicloud/c/a$a;
.super Lcom/apicloud/c/b/f$a;

# interfaces
.implements Lcom/apicloud/c/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/apicloud/c/b/f$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/apicloud/c/a$a;->a:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/apicloud/c/a$a;->c:I

    iput-boolean p1, p0, Lcom/apicloud/c/a$a;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/b/f$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/apicloud/c/a$a;->a:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/apicloud/c/a$a;->c:I

    iput-boolean p2, p0, Lcom/apicloud/c/a$a;->d:Z

    iput p1, p0, Lcom/apicloud/c/a$a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/c/b/f$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/apicloud/c/a$a;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/c/a$a;->c:I

    iput-boolean v0, p0, Lcom/apicloud/c/a$a;->d:Z

    instance-of v0, p1, Lcom/apicloud/c/a$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apicloud/c/a$a;

    iget p1, p1, Lcom/apicloud/c/a$a;->a:I

    iput p1, p0, Lcom/apicloud/c/a$a;->a:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/b/f$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/apicloud/c/a$a;->a:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/apicloud/c/a$a;->c:I

    iput-boolean p1, p0, Lcom/apicloud/c/a$a;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/c/a$a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/c/b/f$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/apicloud/c/a$a;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/c/a$a;->c:I

    iput-boolean v0, p0, Lcom/apicloud/c/a$a;->d:Z

    iget p1, p1, Lcom/apicloud/c/a$a;->a:I

    iput p1, p0, Lcom/apicloud/c/a$a;->a:I

    return-void
.end method


# virtual methods
.method public final A(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setBorder(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final B(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setBorder(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/4 v0, 0x7

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final C(F)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setFlexBasis(F)V

    return-void

    :cond_0
    const/16 v0, 0x10

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final D(F)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setFlexBasisPercent(F)V

    return-void

    :cond_0
    const/16 v0, 0x39

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final a(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMargin(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x1e

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public d(F)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setFlexGrow(F)V

    return-void

    :cond_0
    const/16 v0, 0x12

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public e(F)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setFlexShrink(F)V

    return-void

    :cond_0
    const/16 v0, 0x13

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public f(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPosition(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x2d

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public g(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPosition(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x2e

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public h(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPosition(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x2f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final h(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(I)Lcom/apicloud/third/yoga/YogaFlexDirection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setFlexDirection(Lcom/apicloud/third/yoga/YogaFlexDirection;)V

    return-void

    :cond_0
    const/16 v0, 0x11

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(I)Lcom/apicloud/third/yoga/YogaFlexDirection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaFlexDirection;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/c/a$a;->d:Z

    return-void
.end method

.method public i(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPosition(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x30

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final i(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->f(I)Lcom/apicloud/third/yoga/YogaJustify;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setJustifyContent(Lcom/apicloud/third/yoga/YogaJustify;)V

    return-void

    :cond_0
    const/16 v0, 0x15

    invoke-static {p1}, Lcom/apicloud/c/b/c;->f(I)Lcom/apicloud/third/yoga/YogaJustify;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaJustify;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPosition(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x2d

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public j(F)V
    .locals 1

    float-to-int v0, p1

    iput v0, p0, Lcom/apicloud/c/a$a;->width:I

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_1

    const/high16 v0, -0x3fc00000    # -3.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->setWidthAuto()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setWidth(F)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x37

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final j(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->g(I)Lcom/apicloud/third/yoga/YogaAlign;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setAlignContent(Lcom/apicloud/third/yoga/YogaAlign;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/apicloud/c/b/c;->g(I)Lcom/apicloud/third/yoga/YogaAlign;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaAlign;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPosition(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public k(F)V
    .locals 1

    float-to-int v0, p1

    iput v0, p0, Lcom/apicloud/c/a$a;->height:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/c/a$a;->b:Z

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_1

    const/high16 v0, -0x3fc00000    # -3.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->setHeightAuto()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setHeight(F)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x14

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final k(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->e(I)Lcom/apicloud/third/yoga/YogaAlign;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setAlignItems(Lcom/apicloud/third/yoga/YogaAlign;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1}, Lcom/apicloud/c/b/c;->e(I)Lcom/apicloud/third/yoga/YogaAlign;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaAlign;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPosition(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public l(F)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMinHeight(F)V

    return-void

    :cond_0
    const/16 v0, 0x21

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public l(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->d(I)Lcom/apicloud/third/yoga/YogaAlign;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setAlignSelf(Lcom/apicloud/third/yoga/YogaAlign;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {p1}, Lcom/apicloud/c/b/c;->d(I)Lcom/apicloud/third/yoga/YogaAlign;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaAlign;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPosition(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x30

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public m(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/c/a$a;->b:Z

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMaxHeight(F)V

    return-void

    :cond_0
    const/16 v0, 0x1f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final m(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(I)Lcom/apicloud/third/yoga/YogaWrap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setWrap(Lcom/apicloud/third/yoga/YogaWrap;)V

    return-void

    :cond_0
    const/16 v0, 0x38

    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(I)Lcom/apicloud/third/yoga/YogaWrap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaWrap;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_1

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->setWidthAuto()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setWidthPercent(F)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x37

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public n(F)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMinWidth(F)V

    return-void

    :cond_0
    const/16 v0, 0x22

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final n(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->h(I)Lcom/apicloud/third/yoga/YogaOverflow;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setOverflow(Lcom/apicloud/third/yoga/YogaOverflow;)V

    return-void

    :cond_0
    const/16 v0, 0x23

    invoke-static {p1}, Lcom/apicloud/c/b/c;->h(I)Lcom/apicloud/third/yoga/YogaOverflow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaOverflow;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/c/a$a;->b:Z

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_1

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->setHeightAuto()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setHeightPercent(F)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final o(F)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMaxWidth(F)V

    return-void

    :cond_0
    const/16 v0, 0x20

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public o(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->j(I)Lcom/apicloud/third/yoga/YogaPositionType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPositionType(Lcom/apicloud/third/yoga/YogaPositionType;)V

    return-void

    :cond_0
    const/16 v0, 0x36

    invoke-static {p1}, Lcom/apicloud/c/b/c;->j(I)Lcom/apicloud/third/yoga/YogaPositionType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaPositionType;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMinHeightPercent(F)V

    return-void

    :cond_0
    const/16 v0, 0x21

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final p(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMargin(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x16

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/c/a$a;->b:Z

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMaxHeightPercent(F)V

    return-void

    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final q(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMargin(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x17

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final q(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->i(I)Lcom/apicloud/third/yoga/YogaDisplay;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setDisplay(Lcom/apicloud/third/yoga/YogaDisplay;)V

    return-void

    :cond_0
    const/16 v0, 0xe

    invoke-static {p1}, Lcom/apicloud/c/b/c;->i(I)Lcom/apicloud/third/yoga/YogaDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaDisplay;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMinWidthPercent(F)V

    return-void

    :cond_0
    const/16 v0, 0x22

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final r(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMargin(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x18

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/c/a$a;->c:I

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMaxWidthPercent(F)V

    return-void

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/apicloud/third/yoga/YogaNode;->getPositionType()Lcom/apicloud/third/yoga/YogaPositionType;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/c/b/c;->a(Lcom/apicloud/third/yoga/YogaPositionType;)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a$a;->a(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final s(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMargin(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x19

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/c/a$a;->a:I

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_1

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v0, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {p1, v0}, Lcom/apicloud/third/yoga/YogaNode;->setMarginAuto(Lcom/apicloud/third/yoga/YogaEdge;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMarginPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final setMargins(IIII)V
    .locals 0

    if-ne p1, p2, :cond_0

    if-ne p2, p3, :cond_0

    if-ne p3, p4, :cond_0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a$a;->a(F)V

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a$a;->p(F)V

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a$a;->q(F)V

    int-to-float p1, p3

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a$a;->r(F)V

    int-to-float p1, p4

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a$a;->s(F)V

    :goto_0
    return-void
.end method

.method public final t(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x24

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_1

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v0, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {p1, v0}, Lcom/apicloud/third/yoga/YogaNode;->setMarginAuto(Lcom/apicloud/third/yoga/YogaEdge;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMarginPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a$a;->b:Z

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a$a;->height:I

    return v0
.end method

.method public final u(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x25

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_1

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v0, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {p1, v0}, Lcom/apicloud/third/yoga/YogaNode;->setMarginAuto(Lcom/apicloud/third/yoga/YogaEdge;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMarginPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a$a;->width:I

    return v0
.end method

.method public final v(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x26

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_1

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v0, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {p1, v0}, Lcom/apicloud/third/yoga/YogaNode;->setMarginAuto(Lcom/apicloud/third/yoga/YogaEdge;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMarginPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    invoke-virtual {v0}, Lcom/apicloud/third/yoga/YogaNode;->setFlexBasisAuto()V

    return-void

    :cond_0
    const/16 v0, 0x3a

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final w(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x27

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPaddingPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x24

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final x(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setBorder(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0xc

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPaddingPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x25

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a$a;->d:Z

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a$a;->c:I

    return v0
.end method

.method public final y(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setBorder(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPaddingPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x26

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final z(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setBorder(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/Float;)V

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a$a;->g:Lcom/apicloud/third/yoga/YogaNode;

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPaddingPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void

    :cond_0
    const/16 v0, 0x27

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
