.class public Lcom/apicloud/a/i/a/ae/a;
.super Landroid/widget/CompoundButton;

# interfaces
.implements Lcom/apicloud/a/i/a/g/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/ae/a$a;
    }
.end annotation


# static fields
.field private static final c:I

.field private static final d:I


# instance fields
.field private A:I

.field private B:F

.field private C:I

.field private D:I

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:I

.field private J:I

.field private K:F

.field private L:F

.field private M:Landroid/graphics/Paint;

.field private N:Landroid/graphics/Paint;

.field private O:Lcom/apicloud/a/i/a/ae/a$a;

.field private P:Lcom/apicloud/a/i/a/ae/a$a;

.field private Q:Lcom/apicloud/a/i/a/ae/a$a;

.field private R:Landroid/graphics/RectF;

.field private S:I

.field private T:Landroid/animation/ValueAnimator;

.field private final U:Landroid/animation/ArgbEvaluator;

.field private V:Z

.field private W:Z

.field a:F

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private ag:J

.field private ah:Ljava/lang/Runnable;

.field private ai:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private aj:Landroid/animation/Animator$AnimatorListener;

.field b:F

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x424c0000    # 51.0f

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->b(F)I

    move-result v0

    sput v0, Lcom/apicloud/a/i/a/ae/a;->c:I

    const/high16 v0, 0x41f80000    # 31.0f

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->b(F)I

    move-result v0

    sput v0, Lcom/apicloud/a/i/a/ae/a;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a;->e:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/apicloud/a/i/a/ae/a;->f:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/apicloud/a/i/a/ae/a;->g:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/apicloud/a/i/a/ae/a;->h:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/apicloud/a/i/a/ae/a;->i:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/apicloud/a/i/a/ae/a;->j:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/apicloud/a/i/a/ae/a;->R:Landroid/graphics/RectF;

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a;->S:I

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v1, p0, Lcom/apicloud/a/i/a/ae/a;->U:Landroid/animation/ArgbEvaluator;

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/ae/a;->ac:Z

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/ae/a;->ad:Z

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/ae/a;->ae:Z

    new-instance v0, Lcom/apicloud/a/i/a/ae/a$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/ae/a$1;-><init>(Lcom/apicloud/a/i/a/ae/a;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->ah:Ljava/lang/Runnable;

    new-instance v0, Lcom/apicloud/a/i/a/ae/a$2;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/ae/a$2;-><init>(Lcom/apicloud/a/i/a/ae/a;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->ai:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/apicloud/a/i/a/ae/a$3;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/ae/a$3;-><init>(Lcom/apicloud/a/i/a/ae/a;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->aj:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/ae/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static a(F)F
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ae/a;->aa:Z

    const p2, -0x555556

    iput p2, p0, Lcom/apicloud/a/i/a/ae/a;->C:I

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-static {p2}, Lcom/apicloud/a/i/a/ae/a;->b(F)I

    move-result p2

    iput p2, p0, Lcom/apicloud/a/i/a/ae/a;->D:I

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Lcom/apicloud/a/i/a/ae/a;->a(F)F

    move-result p2

    iput p2, p0, Lcom/apicloud/a/i/a/ae/a;->E:F

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lcom/apicloud/a/i/a/ae/a;->a(F)F

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a;->F:F

    invoke-static {p2}, Lcom/apicloud/a/i/a/ae/a;->a(F)F

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a;->G:F

    invoke-static {p2}, Lcom/apicloud/a/i/a/ae/a;->a(F)F

    move-result p2

    iput p2, p0, Lcom/apicloud/a/i/a/ae/a;->H:F

    const/high16 p2, 0x33000000

    iput p2, p0, Lcom/apicloud/a/i/a/ae/a;->m:I

    const p2, -0x202021

    iput p2, p0, Lcom/apicloud/a/i/a/ae/a;->w:I

    const v0, -0xfb41fe

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a;->x:I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->b(F)I

    move-result v1

    iput v1, p0, Lcom/apicloud/a/i/a/ae/a;->y:I

    sget v1, Lcom/apicloud/a/g/b;->b:I

    iput v1, p0, Lcom/apicloud/a/i/a/ae/a;->z:I

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->b(F)I

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a;->A:I

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->a(F)F

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a;->B:F

    sget v0, Lcom/apicloud/a/g/b;->b:I

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a;->I:I

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a;->J:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/apicloud/a/i/a/ae/a;->V:Z

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ae/a;->ab:Z

    iput p2, p0, Lcom/apicloud/a/i/a/ae/a;->v:I

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ae/a;->W:Z

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/apicloud/a/i/a/ae/a;->M:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean p2, p0, Lcom/apicloud/a/i/a/ae/a;->aa:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/apicloud/a/i/a/ae/a;->M:Landroid/graphics/Paint;

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->k:I

    int-to-float v0, v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/apicloud/a/i/a/ae/a;->l:I

    int-to-float v3, v3

    iget v4, p0, Lcom/apicloud/a/i/a/ae/a;->m:I

    invoke-virtual {p2, v0, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    new-instance p2, Lcom/apicloud/a/i/a/ae/a$a;

    invoke-direct {p2}, Lcom/apicloud/a/i/a/ae/a$a;-><init>()V

    iput-object p2, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    new-instance p2, Lcom/apicloud/a/i/a/ae/a$a;

    invoke-direct {p2}, Lcom/apicloud/a/i/a/ae/a$a;-><init>()V

    iput-object p2, p0, Lcom/apicloud/a/i/a/ae/a;->P:Lcom/apicloud/a/i/a/ae/a$a;

    new-instance p2, Lcom/apicloud/a/i/a/ae/a$a;

    invoke-direct {p2}, Lcom/apicloud/a/i/a/ae/a$a;-><init>()V

    iput-object p2, p0, Lcom/apicloud/a/i/a/ae/a;->Q:Lcom/apicloud/a/i/a/ae/a$a;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    const/16 v0, 0x12c

    int-to-long v2, v0

    invoke-virtual {p2, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->ai:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->aj:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setClickable(Z)V

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/apicloud/a/i/a/ae/a;->setPadding(IIII)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->o:F

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a;->M:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->o:F

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V
    .locals 12

    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v10, 0x1

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/apicloud/a/i/a/ae/a;->R:Landroid/graphics/RectF;

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual {v1, p2, p3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lcom/apicloud/a/i/a/ae/a;->R:Landroid/graphics/RectF;

    const/4 v6, 0x1

    move-object v2, p1

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->R:Landroid/graphics/RectF;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/ae/a;->R:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, p6, p6, p7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/ae/a$a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p1, Lcom/apicloud/a/i/a/ae/a$a;->d:F

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->w:I

    iput v0, p1, Lcom/apicloud/a/i/a/ae/a$a;->b:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/apicloud/a/i/a/ae/a$a;->c:I

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->K:F

    iput v0, p1, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a;->M:Landroid/graphics/Paint;

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->I:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ae/a;I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ae/a;->S:I

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ae/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ae/a;->V:Z

    return-void
.end method

.method private a(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ae/a;->ae:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ae/a;->ad:Z

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lcom/apicloud/a/i/a/ae/a;->V:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ae/a;->V:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->d()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ae/a;->W:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x5

    iput p1, p0, Lcom/apicloud/a/i/a/ae/a;->S:I

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a;->P:Lcom/apicloud/a/i/a/ae/a$a;

    iget-object p2, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    invoke-static {p1, p2}, Lcom/apicloud/a/i/a/ae/a$a;->a(Lcom/apicloud/a/i/a/ae/a$a;Lcom/apicloud/a/i/a/ae/a$a;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a;->Q:Lcom/apicloud/a/i/a/ae/a$a;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ae/a;->a(Lcom/apicloud/a/i/a/ae/a$a;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a;->Q:Lcom/apicloud/a/i/a/ae/a$a;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ae/a;->b(Lcom/apicloud/a/i/a/ae/a$a;)V

    :goto_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_6
    :goto_1
    iget-boolean p1, p0, Lcom/apicloud/a/i/a/ae/a;->V:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ae/a;->V:Z

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ae/a;->b(Lcom/apicloud/a/i/a/ae/a$a;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ae/a;->a(Lcom/apicloud/a/i/a/ae/a$a;)V

    :goto_2
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->postInvalidate()V

    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->d()V

    :cond_8
    return-void

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "should NOT switch the state in method: [onCheckedChanged]!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ae/a;)Z
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->e()Z

    move-result p0

    return p0
.end method

.method private static b(F)I
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/i/a/ae/a;->a(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 8

    iget v2, p0, Lcom/apicloud/a/i/a/ae/a;->C:I

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->D:I

    int-to-float v3, v0

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->s:F

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->E:F

    sub-float v4, v0, v1

    iget v5, p0, Lcom/apicloud/a/i/a/ae/a;->u:F

    iget v6, p0, Lcom/apicloud/a/i/a/ae/a;->F:F

    iget-object v7, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/apicloud/a/i/a/ae/a;->a(Landroid/graphics/Canvas;IFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/ae/a$a;)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->n:F

    iput v0, p1, Lcom/apicloud/a/i/a/ae/a$a;->d:F

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->x:I

    iput v0, p1, Lcom/apicloud/a/i/a/ae/a$a;->b:I

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->z:I

    iput v0, p1, Lcom/apicloud/a/i/a/ae/a$a;->c:I

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->L:F

    iput v0, p1, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a;->M:Landroid/graphics/Paint;

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->J:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/ae/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->h()V

    return-void
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/ae/a;)I
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/ae/a;->S:I

    return p0
.end method

.method static synthetic d(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->af:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/apicloud/a/i/a/ae/a;->ae:Z

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/ae/a;->ae:Z

    return-void
.end method

.method static synthetic e(Lcom/apicloud/a/i/a/ae/a;)Landroid/animation/ArgbEvaluator;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ae/a;->U:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method private e()Z
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->S:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ae/a;->P:Lcom/apicloud/a/i/a/ae/a$a;

    return-object p0
.end method

.method private f()Z
    .locals 3

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->S:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method static synthetic g(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ae/a;->Q:Lcom/apicloud/a/i/a/ae/a$a;

    return-object p0
.end method

.method private g()Z
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->S:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic h(Lcom/apicloud/a/i/a/ae/a;)F
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/ae/a;->K:F

    return p0
.end method

.method private h()V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ae/a;->ac:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a;->S:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->P:Lcom/apicloud/a/i/a/ae/a$a;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/ae/a$a;->a(Lcom/apicloud/a/i/a/ae/a$a;Lcom/apicloud/a/i/a/ae/a$a;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->Q:Lcom/apicloud/a/i/a/ae/a$a;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/ae/a$a;->a(Lcom/apicloud/a/i/a/ae/a$a;Lcom/apicloud/a/i/a/ae/a$a;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->Q:Lcom/apicloud/a/i/a/ae/a$a;

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->x:I

    iput v1, v0, Lcom/apicloud/a/i/a/ae/a$a;->b:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->Q:Lcom/apicloud/a/i/a/ae/a$a;

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->L:F

    iput v1, v0, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->Q:Lcom/apicloud/a/i/a/ae/a$a;

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->x:I

    iput v1, v0, Lcom/apicloud/a/i/a/ae/a$a;->c:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->Q:Lcom/apicloud/a/i/a/ae/a$a;

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->w:I

    iput v1, v0, Lcom/apicloud/a/i/a/ae/a$a;->b:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->Q:Lcom/apicloud/a/i/a/ae/a$a;

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->K:F

    iput v1, v0, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->Q:Lcom/apicloud/a/i/a/ae/a$a;

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->n:F

    iput v1, v0, Lcom/apicloud/a/i/a/ae/a$a;->d:F

    :goto_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic i(Lcom/apicloud/a/i/a/ae/a;)F
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/ae/a;->L:F

    return p0
.end method

.method private i()V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a;->S:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->P:Lcom/apicloud/a/i/a/ae/a$a;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/ae/a$a;->a(Lcom/apicloud/a/i/a/ae/a$a;Lcom/apicloud/a/i/a/ae/a$a;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->Q:Lcom/apicloud/a/i/a/ae/a$a;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ae/a;->b(Lcom/apicloud/a/i/a/ae/a$a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->Q:Lcom/apicloud/a/i/a/ae/a$a;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ae/a;->a(Lcom/apicloud/a/i/a/ae/a$a;)V

    :goto_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method static synthetic j(Lcom/apicloud/a/i/a/ae/a;)I
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/ae/a;->w:I

    return p0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a;->S:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->P:Lcom/apicloud/a/i/a/ae/a$a;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/ae/a$a;->a(Lcom/apicloud/a/i/a/ae/a$a;Lcom/apicloud/a/i/a/ae/a$a;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->Q:Lcom/apicloud/a/i/a/ae/a$a;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ae/a;->b(Lcom/apicloud/a/i/a/ae/a$a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->Q:Lcom/apicloud/a/i/a/ae/a$a;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ae/a;->a(Lcom/apicloud/a/i/a/ae/a$a;)V

    :goto_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic k(Lcom/apicloud/a/i/a/ae/a;)I
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/ae/a;->x:I

    return p0
.end method

.method static synthetic l(Lcom/apicloud/a/i/a/ae/a;)F
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/ae/a;->n:F

    return p0
.end method

.method static synthetic m(Lcom/apicloud/a/i/a/ae/a;)I
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/ae/a;->z:I

    return p0
.end method

.method static synthetic n(Lcom/apicloud/a/i/a/ae/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->d()V

    return-void
.end method

.method static synthetic o(Lcom/apicloud/a/i/a/ae/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/apicloud/a/i/a/ae/a;->V:Z

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ae/a;->J:I

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    iget v3, v0, Lcom/apicloud/a/i/a/ae/a$a;->c:I

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->A:I

    int-to-float v4, v0

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->q:F

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->n:F

    add-float v2, v0, v1

    iget v5, p0, Lcom/apicloud/a/i/a/ae/a;->G:F

    sub-float v5, v2, v5

    iget v2, p0, Lcom/apicloud/a/i/a/ae/a;->u:F

    iget v6, p0, Lcom/apicloud/a/i/a/ae/a;->B:F

    sub-float v7, v2, v6

    add-float/2addr v0, v1

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->H:F

    sub-float/2addr v0, v1

    add-float v8, v2, v6

    iget-object v9, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    move-object v1, p0

    move-object v2, p1

    move v6, v7

    move v7, v0

    invoke-virtual/range {v1 .. v9}, Lcom/apicloud/a/i/a/ae/a;->a(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V
    .locals 6

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p8, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p8, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object v0, p1

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move-object v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;IFFFFLandroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p7, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p7, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/ae/a;->a(ZZ)V

    return-void
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

    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/a/ae/a;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->isChecked()Z

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

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ae/a;->I:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ae/a;->ab:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ae/a;->setChecked(Z)V

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ae/a;->x:I

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ae/a;->w:I

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ae/a;->V:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, p0, Lcom/apicloud/a/i/a/ae/a;->q:F

    iget v5, p0, Lcom/apicloud/a/i/a/ae/a;->r:F

    iget v6, p0, Lcom/apicloud/a/i/a/ae/a;->s:F

    iget v7, p0, Lcom/apicloud/a/i/a/ae/a;->t:F

    iget v8, p0, Lcom/apicloud/a/i/a/ae/a;->n:F

    iget-object v9, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/apicloud/a/i/a/ae/a;->a(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, p0, Lcom/apicloud/a/i/a/ae/a;->q:F

    iget v5, p0, Lcom/apicloud/a/i/a/ae/a;->r:F

    iget v6, p0, Lcom/apicloud/a/i/a/ae/a;->s:F

    iget v7, p0, Lcom/apicloud/a/i/a/ae/a;->t:F

    iget v8, p0, Lcom/apicloud/a/i/a/ae/a;->n:F

    iget-object v9, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    invoke-direct/range {v2 .. v9}, Lcom/apicloud/a/i/a/ae/a;->a(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ae/a;->ab:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ae/a;->b(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    iget v0, v0, Lcom/apicloud/a/i/a/ae/a$a;->d:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    iget v2, v2, Lcom/apicloud/a/i/a/ae/a$a;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    iget v2, p0, Lcom/apicloud/a/i/a/ae/a;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->q:F

    add-float v6, v1, v0

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->r:F

    add-float v7, v1, v0

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->s:F

    sub-float v8, v1, v0

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->t:F

    sub-float v9, v1, v0

    iget v10, p0, Lcom/apicloud/a/i/a/ae/a;->n:F

    iget-object v11, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/apicloud/a/i/a/ae/a;->a(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v6, p0, Lcom/apicloud/a/i/a/ae/a;->q:F

    iget v7, p0, Lcom/apicloud/a/i/a/ae/a;->r:F

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->n:F

    mul-float v1, v0, v3

    add-float v8, v6, v1

    mul-float/2addr v0, v3

    add-float v9, v7, v0

    const/high16 v10, 0x42b40000    # 90.0f

    const/high16 v11, 0x43340000    # 180.0f

    iget-object v12, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    invoke-direct/range {v4 .. v12}, Lcom/apicloud/a/i/a/ae/a;->a(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->q:F

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->n:F

    add-float v5, v0, v1

    iget v6, p0, Lcom/apicloud/a/i/a/ae/a;->r:F

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    iget v7, v0, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    iget v0, p0, Lcom/apicloud/a/i/a/ae/a;->r:F

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->n:F

    mul-float/2addr v1, v3

    add-float v8, v0, v1

    iget-object v9, p0, Lcom/apicloud/a/i/a/ae/a;->N:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ae/a;->ab:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ae/a;->a(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    iget v0, v0, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->u:F

    invoke-direct {p0, p1, v0, v1}, Lcom/apicloud/a/i/a/ae/a;->a(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    sget p1, Lcom/apicloud/a/i/a/ae/a;->c:I

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_3

    :cond_2
    sget p2, Lcom/apicloud/a/i/a/ae/a;->d:I

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;->onSizeChanged(IIII)V

    iget p3, p0, Lcom/apicloud/a/i/a/ae/a;->k:I

    iget p4, p0, Lcom/apicloud/a/i/a/ae/a;->l:I

    add-int/2addr p3, p4

    iget p4, p0, Lcom/apicloud/a/i/a/ae/a;->y:I

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    sub-float/2addr p2, p3

    sub-float p4, p2, p3

    iput p4, p0, Lcom/apicloud/a/i/a/ae/a;->p:F

    int-to-float p1, p1

    sub-float/2addr p1, p3

    sub-float v0, p1, p3

    iput v0, p0, Lcom/apicloud/a/i/a/ae/a;->a:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p4, v0

    iput p4, p0, Lcom/apicloud/a/i/a/ae/a;->n:F

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->y:I

    int-to-float v1, v1

    sub-float v1, p4, v1

    iput v1, p0, Lcom/apicloud/a/i/a/ae/a;->o:F

    iput p3, p0, Lcom/apicloud/a/i/a/ae/a;->q:F

    iput p3, p0, Lcom/apicloud/a/i/a/ae/a;->r:F

    iput p1, p0, Lcom/apicloud/a/i/a/ae/a;->s:F

    iput p2, p0, Lcom/apicloud/a/i/a/ae/a;->t:F

    add-float v1, p3, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/apicloud/a/i/a/ae/a;->b:F

    add-float/2addr p2, p3

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/apicloud/a/i/a/ae/a;->u:F

    add-float/2addr p3, p4

    iput p3, p0, Lcom/apicloud/a/i/a/ae/a;->K:F

    sub-float/2addr p1, p4

    iput p1, p0, Lcom/apicloud/a/i/a/ae/a;->L:F

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ae/a;->b(Lcom/apicloud/a/i/a/ae/a$a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ae/a;->a(Lcom/apicloud/a/i/a/ae/a$a;)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ae/a;->ad:Z

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->postInvalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eq v0, v2, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto/16 :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/apicloud/a/i/a/ae/a;->ac:Z

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a;->ah:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ae/a;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->f()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->g()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->i()V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->K:F

    iget v3, p0, Lcom/apicloud/a/i/a/ae/a;->L:F

    sub-float/2addr v3, v1

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    iput v1, v0, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    iget v1, p0, Lcom/apicloud/a/i/a/ae/a;->K:F

    iget v3, p0, Lcom/apicloud/a/i/a/ae/a;->L:F

    sub-float/2addr v3, v1

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    iput v1, v0, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->O:Lcom/apicloud/a/i/a/ae/a$a;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a;->U:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/apicloud/a/i/a/ae/a;->w:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/apicloud/a/i/a/ae/a;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/apicloud/a/i/a/ae/a$a;->b:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->postInvalidate()V

    goto :goto_1

    :cond_5
    iput-boolean v1, p0, Lcom/apicloud/a/i/a/ae/a;->ac:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a;->ah:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ae/a;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/apicloud/a/i/a/ae/a;->ag:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x12c

    cmp-long v0, v5, v7

    if-gtz v0, :cond_6

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->toggle()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->isChecked()Z

    move-result p1

    if-ne v1, p1, :cond_8

    goto/16 :goto_0

    :cond_8
    iput-boolean v1, p0, Lcom/apicloud/a/i/a/ae/a;->V:Z

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->j()V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ae/a;->f()Z

    move-result p1

    if-eqz p1, :cond_b

    goto/16 :goto_0

    :cond_a
    iput-boolean v2, p0, Lcom/apicloud/a/i/a/ae/a;->ac:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apicloud/a/i/a/ae/a;->ag:J

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a;->ah:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ae/a;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a;->ah:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/apicloud/a/i/a/ae/a;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_1
    return v2
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ae/a;->postInvalidate()V

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/apicloud/a/i/a/ae/a;->W:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/ae/a;->a(ZZ)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ae/a;->af:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1, p1, p1, p1}, Landroid/widget/CompoundButton;->setPadding(IIII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[switch]"

    return-object v0
.end method

.method public toggle()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ae/a;->a(Z)V

    return-void
.end method
