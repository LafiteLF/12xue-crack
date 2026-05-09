.class public Lcom/uzmap/pkg/uzcore/uzmodule/b/f;
.super Lcom/uzmap/pkg/uzcore/uzmodule/b/v;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public e:I

.field public f:Z

.field public g:F

.field public h:I

.field public i:I

.field public j:I

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->parse(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;Z)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->d()V

    return-void
.end method

.method private d()V
    .locals 8

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "delay"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->a:I

    const/16 v0, 0x12c

    const-string v1, "duration"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->b:I

    const-string v0, "curve"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->c:Ljava/lang/String;

    const-string v0, "repeatCount"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->e:I

    const-string v0, "autoreverse"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->f:Z

    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->r:Z

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->g:F

    :cond_1
    const-string v0, "translation"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v0

    const-string v1, "z"

    const-string v3, "y"

    const-string v4, "x"

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->s:Z

    invoke-interface {v0, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseCssPixel(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->h:I

    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseCssPixel(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->i:I

    invoke-static {v7}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseCssPixel(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->j:I

    :cond_2
    const-string v5, "scale"

    invoke-virtual {p0, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v5

    if-eqz v5, :cond_3

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->t:Z

    invoke-interface {v0, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->k:F

    invoke-interface {v0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->l:F

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->m:F

    :cond_3
    const-string v5, "rotation"

    invoke-virtual {p0, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v5

    if-eqz v5, :cond_4

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->u:Z

    invoke-interface {v0, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->n:F

    invoke-interface {v0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->o:F

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->p:F

    const-string v1, "degree"

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->q:F

    :cond_4
    return-void
.end method


# virtual methods
.method public a()Landroid/view/animation/Animation;
    .locals 7

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->c:Ljava/lang/String;

    const-string v4, "ease_in_out"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->c:Ljava/lang/String;

    const-string v4, "ease_in"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->c:Ljava/lang/String;

    const-string v4, "ease_out"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->s:Z

    if-eqz v3, :cond_3

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget v4, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->h:I

    int-to-float v4, v4

    iget v5, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->i:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, v6, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget v4, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->e:I

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->a:I

    if-lez v2, :cond_4

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    :cond_4
    iget v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-boolean v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->f:Z

    if-nez v2, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    :cond_5
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setStartTime(J)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->f:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->s:Z

    return v0
.end method
