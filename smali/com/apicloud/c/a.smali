.class public Lcom/apicloud/c/a;
.super Lcom/apicloud/c/b/f;

# interfaces
.implements Lcom/apicloud/c/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/c/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/c/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/c/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/c/b/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/apicloud/c/a;->e:I

    iput-boolean p1, p0, Lcom/apicloud/c/a;->f:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/apicloud/c/a;->a:I

    return-void
.end method


# virtual methods
.method public final A(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setBorder(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public final B(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setBorder(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public final C(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setFlexBasis(F)V

    return-void
.end method

.method public final D(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setFlexBasisPercent(F)V

    return-void
.end method

.method public b(Landroid/util/AttributeSet;)Lcom/apicloud/c/a$a;
    .locals 2

    new-instance v0, Lcom/apicloud/c/a$a;

    invoke-virtual {p0}, Lcom/apicloud/c/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/apicloud/c/a$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected b(Landroid/view/ViewGroup$LayoutParams;)Lcom/apicloud/c/a$a;
    .locals 1

    instance-of v0, p1, Lcom/apicloud/c/a$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apicloud/c/a$a;

    check-cast p1, Lcom/apicloud/c/a$a;

    invoke-direct {v0, p1}, Lcom/apicloud/c/a$a;-><init>(Lcom/apicloud/c/a$a;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/apicloud/c/a$a;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/apicloud/c/a$a;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/apicloud/c/a$a;

    invoke-direct {v0, p1}, Lcom/apicloud/c/a$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lcom/apicloud/c/a$a;

    return p1
.end method

.method public d(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setFlexGrow(F)V

    return-void
.end method

.method public e(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setFlexShrink(F)V

    return-void
.end method

.method public f(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPosition(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public g(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPosition(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a;->b(Landroid/util/AttributeSet;)Lcom/apicloud/c/a$a;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a;->b(Landroid/view/ViewGroup$LayoutParams;)Lcom/apicloud/c/a$a;

    move-result-object p1

    return-object p1
.end method

.method public h(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPosition(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public final h(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-static {p1}, Lcom/apicloud/c/b/c;->a(I)Lcom/apicloud/third/yoga/YogaFlexDirection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setFlexDirection(Lcom/apicloud/third/yoga/YogaFlexDirection;)V

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/c/a;->f:Z

    return-void
.end method

.method public i(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPosition(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public final i(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-static {p1}, Lcom/apicloud/c/b/c;->f(I)Lcom/apicloud/third/yoga/YogaJustify;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setJustifyContent(Lcom/apicloud/third/yoga/YogaJustify;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPositionPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :cond_0
    return-void
.end method

.method public j(F)V
    .locals 1

    const/high16 v0, -0x3fc00000    # -3.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->setWidthAuto()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setWidth(F)V

    :goto_0
    return-void
.end method

.method public final j(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-static {p1}, Lcom/apicloud/c/b/c;->g(I)Lcom/apicloud/third/yoga/YogaAlign;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setAlignContent(Lcom/apicloud/third/yoga/YogaAlign;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPositionPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :cond_0
    return-void
.end method

.method public k(F)V
    .locals 1

    const/high16 v0, -0x3fc00000    # -3.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->setHeightAuto()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setHeight(F)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/c/a;->b:Z

    return-void
.end method

.method public final k(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-static {p1}, Lcom/apicloud/c/b/c;->e(I)Lcom/apicloud/third/yoga/YogaAlign;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setAlignItems(Lcom/apicloud/third/yoga/YogaAlign;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPositionPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :cond_0
    return-void
.end method

.method public l(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMinHeight(F)V

    return-void
.end method

.method public final l(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-static {p1}, Lcom/apicloud/c/b/c;->d(I)Lcom/apicloud/third/yoga/YogaAlign;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setAlignSelf(Lcom/apicloud/third/yoga/YogaAlign;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPositionPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :cond_0
    return-void
.end method

.method public m(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMaxHeight(F)V

    return-void
.end method

.method public final m(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(I)Lcom/apicloud/third/yoga/YogaWrap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setWrap(Lcom/apicloud/third/yoga/YogaWrap;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->setWidthAuto()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setWidthPercent(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public n(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMinWidth(F)V

    return-void
.end method

.method public final n(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-static {p1}, Lcom/apicloud/c/b/c;->h(I)Lcom/apicloud/third/yoga/YogaOverflow;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setOverflow(Lcom/apicloud/third/yoga/YogaOverflow;)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/third/yoga/YogaNode;->setHeightAuto()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setHeightPercent(F)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/c/a;->b:Z

    return-void
.end method

.method public final o(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMaxWidth(F)V

    return-void
.end method

.method public o(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-static {p1}, Lcom/apicloud/c/b/c;->j(I)Lcom/apicloud/third/yoga/YogaPositionType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPositionType(Lcom/apicloud/third/yoga/YogaPositionType;)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMinHeightPercent(F)V

    :cond_0
    return-void
.end method

.method public p(I)F
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-static {p1}, Lcom/apicloud/c/b/c;->c(I)Lcom/apicloud/third/yoga/YogaEdge;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->getLayoutBorder(Lcom/apicloud/third/yoga/YogaEdge;)F

    move-result p1

    return p1
.end method

.method public final p(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMargin(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMaxHeightPercent(F)V

    :cond_0
    return-void
.end method

.method public final q(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMargin(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public final q(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-static {p1}, Lcom/apicloud/c/b/c;->i(I)Lcom/apicloud/third/yoga/YogaDisplay;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setDisplay(Lcom/apicloud/third/yoga/YogaDisplay;)V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMinWidthPercent(F)V

    :cond_0
    return-void
.end method

.method public final r(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMargin(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/c/a;->e:I

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMaxWidthPercent(F)V

    :cond_0
    return-void
.end method

.method public s()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/third/yoga/YogaNode;->getPositionType()Lcom/apicloud/third/yoga/YogaPositionType;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/c/b/c;->a(Lcom/apicloud/third/yoga/YogaPositionType;)I

    move-result v0

    return v0
.end method

.method public final s(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMargin(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/c/a;->a:I

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 2

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object p1

    sget-object v0, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {p1, v0}, Lcom/apicloud/third/yoga/YogaNode;->setMarginAuto(Lcom/apicloud/third/yoga/YogaEdge;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMarginPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final t(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 2

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object p1

    sget-object v0, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {p1, v0}, Lcom/apicloud/third/yoga/YogaNode;->setMarginAuto(Lcom/apicloud/third/yoga/YogaEdge;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMarginPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a;->b:Z

    return v0
.end method

.method public u()I
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/third/yoga/YogaNode;->getHeight()Lcom/apicloud/third/yoga/YogaValue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v2, Lcom/apicloud/third/yoga/YogaUnit;->POINT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v1, v2, :cond_0

    iget v0, v0, Lcom/apicloud/third/yoga/YogaValue;->value:F

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public final u(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 2

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object p1

    sget-object v0, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {p1, v0}, Lcom/apicloud/third/yoga/YogaNode;->setMarginAuto(Lcom/apicloud/third/yoga/YogaEdge;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMarginPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public v()I
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/third/yoga/YogaNode;->getWidth()Lcom/apicloud/third/yoga/YogaValue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v2, Lcom/apicloud/third/yoga/YogaUnit;->POINT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v1, v2, :cond_0

    iget v0, v0, Lcom/apicloud/third/yoga/YogaValue;->value:F

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final v(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 2

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object p1

    sget-object v0, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {p1, v0}, Lcom/apicloud/third/yoga/YogaNode;->setMarginAuto(Lcom/apicloud/third/yoga/YogaEdge;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setMarginPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public w()V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/third/yoga/YogaNode;->setFlexBasisAuto()V

    return-void
.end method

.method public final w(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPadding(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPaddingPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :cond_0
    return-void
.end method

.method public final x(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->ALL:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setBorder(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPaddingPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :cond_0
    return-void
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a;->f:Z

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a;->e:I

    return v0
.end method

.method public final y(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->LEFT:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setBorder(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->RIGHT:Lcom/apicloud/third/yoga/YogaEdge;

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPaddingPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :cond_0
    return-void
.end method

.method public final z(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->TOP:Lcom/apicloud/third/yoga/YogaEdge;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setBorder(Lcom/apicloud/third/yoga/YogaEdge;F)V

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/b/c;->b(Ljava/lang/String;)Lcom/apicloud/third/yoga/YogaValue;

    move-result-object p1

    iget-object v0, p1, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    sget-object v1, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    sget-object v1, Lcom/apicloud/third/yoga/YogaEdge;->BOTTOM:Lcom/apicloud/third/yoga/YogaEdge;

    iget p1, p1, Lcom/apicloud/third/yoga/YogaValue;->value:F

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/yoga/YogaNode;->setPaddingPercent(Lcom/apicloud/third/yoga/YogaEdge;F)V

    :cond_0
    return-void
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
