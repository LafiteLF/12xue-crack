.class public Lcom/uzmap/pkg/uzcore/h/a;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/h/a$a;,
        Lcom/uzmap/pkg/uzcore/h/a$b;
    }
.end annotation


# instance fields
.field private a:Lcom/uzmap/pkg/uzcore/h/a$a;

.field private b:Lcom/uzmap/pkg/uzcore/h/a$a;

.field private c:Lcom/uzmap/pkg/uzcore/h/a$a;

.field private final d:Landroid/graphics/Rect;

.field private final e:F

.field private final f:Landroid/graphics/Paint;

.field private final g:Z

.field private h:Z

.field private i:F

.field private j:Z

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private final p:[F

.field private final q:[F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Z)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    iput-object v3, v0, Lcom/uzmap/pkg/uzcore/h/a;->p:[F

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    iput-object v2, v0, Lcom/uzmap/pkg/uzcore/h/a;->q:[F

    iput-boolean v1, v0, Lcom/uzmap/pkg/uzcore/h/a;->g:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v2, v3

    div-float v3, v4, v3

    iput v3, v0, Lcom/uzmap/pkg/uzcore/h/a;->e:F

    new-instance v3, Landroid/graphics/Paint;

    const/16 v5, 0x81

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/uzmap/pkg/uzcore/h/a;->f:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_0
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, v0, Lcom/uzmap/pkg/uzcore/h/a;->f:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/uzmap/pkg/uzcore/h/a;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/uzmap/pkg/uzcore/h/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v1, 0x41bc0000    # 23.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v0, Lcom/uzmap/pkg/uzcore/h/a;->d:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/high16 v3, 0x41a00000    # 20.0f

    const v4, 0x40a15810    # 5.042f

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v6, 0x41020000    # 8.125f

    const v7, -0x3e7d76c9    # -16.317f

    const v8, 0x421f0312

    const v9, -0x3e213127    # -27.851f

    const v10, 0x425df5c3    # 55.49f

    const v11, -0x3fcf0a3d    # -2.765f

    move-object v5, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    const v6, 0x42721fbe

    const v7, 0x4189e148    # 17.235f

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    const v13, 0x4134d0e5    # 11.301f

    const v14, 0x41901eb8    # 18.015f

    const v15, -0x3f934396    # -3.699f

    const v16, 0x423854fe    # 46.083f

    const v17, -0x3e423333    # -23.725f

    const v18, 0x422dd2f2

    move-object v12, v5

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzcore/h/a;->a(Landroid/graphics/Path;F)V

    invoke-static {v5, v2}, Lcom/uzmap/pkg/uzcore/h/a;->a(Landroid/graphics/Path;F)V

    new-instance v6, Lcom/uzmap/pkg/uzcore/h/a$b;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v5, v7}, Lcom/uzmap/pkg/uzcore/h/a$b;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lcom/uzmap/pkg/uzcore/h/a$b;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const v5, 0x4281eb02    # 64.959f

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const v9, 0x408e9fbe    # 4.457f

    const/high16 v10, 0x41860000    # 16.75f

    const v11, 0x3fc18937    # 1.512f

    const v12, 0x4217ed91

    const v13, -0x3e4b8b44    # -22.557f

    const v14, 0x422acbc7

    move-object v8, v1

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    const v8, 0x42299ba6    # 42.402f

    const v9, 0x427acbc7

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const v16, 0x4192a9fc    # 18.333f

    const v17, 0x4286d604    # 67.418f

    const v18, 0x410ce979    # 8.807f

    const v19, 0x42369581    # 45.646f

    const v20, 0x410ce979    # 8.807f

    const v21, 0x42034ac1

    move-object v15, v3

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzcore/h/a;->a(Landroid/graphics/Path;F)V

    invoke-static {v3, v2}, Lcom/uzmap/pkg/uzcore/h/a;->a(Landroid/graphics/Path;F)V

    new-instance v8, Lcom/uzmap/pkg/uzcore/h/a$b;

    invoke-direct {v8, v1, v3, v7}, Lcom/uzmap/pkg/uzcore/h/a$b;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lcom/uzmap/pkg/uzcore/h/a$b;)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/h/a$a;

    invoke-direct {v1, v0, v6, v8, v7}, Lcom/uzmap/pkg/uzcore/h/a$a;-><init>(Lcom/uzmap/pkg/uzcore/h/a;Lcom/uzmap/pkg/uzcore/h/a$b;Lcom/uzmap/pkg/uzcore/h/a$b;Lcom/uzmap/pkg/uzcore/h/a$a;)V

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/h/a;->a:Lcom/uzmap/pkg/uzcore/h/a$a;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const v11, 0x40a15810    # 5.042f

    const v12, 0x41a2a9fc    # 20.333f

    const/high16 v13, 0x41950000    # 18.625f

    const v14, 0x40d94fdf    # 6.791f

    const/high16 v15, 0x420c0000    # 35.0f

    const v16, 0x40d94fdf    # 6.791f

    move-object v10, v1

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    const v8, 0x40d94fdf    # 6.791f

    invoke-virtual {v6, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const v18, 0x4180a9fc    # 16.083f

    const/16 v19, 0x0

    const v20, 0x41d6d2f2    # 26.853f

    const v21, 0x41859db2    # 16.702f

    const v22, 0x41d6d2f2    # 26.853f

    const v23, 0x41e1ac08    # 28.209f

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzcore/h/a;->a(Landroid/graphics/Path;F)V

    invoke-static {v6, v2}, Lcom/uzmap/pkg/uzcore/h/a;->a(Landroid/graphics/Path;F)V

    new-instance v8, Lcom/uzmap/pkg/uzcore/h/a$b;

    invoke-direct {v8, v1, v6, v7}, Lcom/uzmap/pkg/uzcore/h/a$b;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lcom/uzmap/pkg/uzcore/h/a$b;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v11, 0x0

    const v12, 0x412ed0e5    # 10.926f

    const v13, -0x3ef4a7f0    # -8.709f

    const v14, 0x41d353f8    # 26.416f

    const v15, -0x3e105604    # -29.958f

    const v16, 0x41d353f8    # 26.416f

    move-object v10, v1

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    const v10, 0x4275a9fc    # 61.416f

    invoke-virtual {v6, v3, v10}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v18, -0x3f100000    # -7.5f

    const v20, -0x3e406e98    # -23.946f

    const v21, -0x3efc9fbe    # -8.211f

    const v22, -0x3e406e98    # -23.946f

    const v23, -0x3e2cac08    # -26.416f

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzcore/h/a;->a(Landroid/graphics/Path;F)V

    invoke-static {v6, v2}, Lcom/uzmap/pkg/uzcore/h/a;->a(Landroid/graphics/Path;F)V

    new-instance v3, Lcom/uzmap/pkg/uzcore/h/a$b;

    invoke-direct {v3, v1, v6, v7}, Lcom/uzmap/pkg/uzcore/h/a$b;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lcom/uzmap/pkg/uzcore/h/a$b;)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/h/a$a;

    invoke-direct {v1, v0, v8, v3, v7}, Lcom/uzmap/pkg/uzcore/h/a$a;-><init>(Lcom/uzmap/pkg/uzcore/h/a;Lcom/uzmap/pkg/uzcore/h/a$b;Lcom/uzmap/pkg/uzcore/h/a$b;Lcom/uzmap/pkg/uzcore/h/a$a;)V

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/h/a;->b:Lcom/uzmap/pkg/uzcore/h/a$a;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v11, 0x40200000    # 2.5f

    const v12, 0x422d3f7d    # 43.312f

    const v13, 0x3c54fdf4    # 0.013f

    const v14, 0x41d45e35    # 26.546f

    const v15, 0x4117999a    # 9.475f

    const v16, 0x418ac49c    # 17.346f

    move-object v10, v1

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    const v6, 0x4117999a    # 9.475f

    const v8, 0x418ac49c    # 17.346f

    invoke-virtual {v4, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const v18, 0x4117645a    # 9.462f

    const v19, -0x3eeccccd    # -9.2f

    const v20, 0x41c18106    # 24.188f

    const v21, -0x3eda5a1d    # -10.353f

    const v22, 0x41da9ba6    # 27.326f

    const v23, -0x3efc147b    # -8.245f

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzcore/h/a;->a(Landroid/graphics/Path;F)V

    invoke-static {v4, v2}, Lcom/uzmap/pkg/uzcore/h/a;->a(Landroid/graphics/Path;F)V

    new-instance v6, Lcom/uzmap/pkg/uzcore/h/a$b;

    invoke-direct {v6, v1, v4, v7}, Lcom/uzmap/pkg/uzcore/h/a$b;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lcom/uzmap/pkg/uzcore/h/a$b;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const v11, -0x3f1f53f8    # -7.021f

    const v12, 0x412147ae    # 10.08f

    const v13, -0x3e5b53f8    # -20.584f

    const v14, 0x419d978d    # 19.699f

    const v15, -0x3dea8e56    # -37.361f

    const v16, 0x414bd70a    # 12.74f

    move-object v10, v1

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    const v4, 0x41dcc8b4    # 27.598f

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const v18, -0x3e846e98    # -15.723f

    const v19, -0x3f2f53f8    # -6.521f

    const v20, -0x3e69999a    # -18.8f

    const v21, -0x3e43a7f0    # -23.543f

    const v22, -0x3e69999a    # -18.8f

    const v23, -0x3e32dd2f    # -25.642f

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v23}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzcore/h/a;->a(Landroid/graphics/Path;F)V

    invoke-static {v3, v2}, Lcom/uzmap/pkg/uzcore/h/a;->a(Landroid/graphics/Path;F)V

    new-instance v2, Lcom/uzmap/pkg/uzcore/h/a$b;

    invoke-direct {v2, v1, v3, v7}, Lcom/uzmap/pkg/uzcore/h/a$b;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lcom/uzmap/pkg/uzcore/h/a$b;)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/h/a$a;

    invoke-direct {v1, v0, v6, v2, v7}, Lcom/uzmap/pkg/uzcore/h/a$a;-><init>(Lcom/uzmap/pkg/uzcore/h/a;Lcom/uzmap/pkg/uzcore/h/a$b;Lcom/uzmap/pkg/uzcore/h/a$b;Lcom/uzmap/pkg/uzcore/h/a$a;)V

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/h/a;->c:Lcom/uzmap/pkg/uzcore/h/a$a;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/h/a;)F
    .locals 0

    iget p0, p0, Lcom/uzmap/pkg/uzcore/h/a;->i:F

    return p0
.end method

.method public static a(ILandroid/content/res/Resources;)Lcom/uzmap/pkg/uzcore/h/a;
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/h/a;-><init>(Landroid/content/res/Resources;Z)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/h/a;->a(Z)V

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/h/a;->a(I)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/a;->getMinimumWidth()I

    move-result p0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/a;->getMinimumHeight()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p0, p1}, Lcom/uzmap/pkg/uzcore/h/a;->setBounds(IIII)V

    return-object v0
.end method

.method private static a(Landroid/graphics/Path;F)V
    .locals 2

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    div-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, p1, p1, v0, v0}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/h/a;F)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/a;->k:F

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/h/a;F)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/a;->l:F

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/h/a;)[F
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/h/a;->p:[F

    return-object p0
.end method

.method static synthetic c(Lcom/uzmap/pkg/uzcore/h/a;F)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/a;->m:F

    return-void
.end method

.method static synthetic c(Lcom/uzmap/pkg/uzcore/h/a;)[F
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/h/a;->q:[F

    return-object p0
.end method

.method static synthetic d(Lcom/uzmap/pkg/uzcore/h/a;F)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/a;->n:F

    return-void
.end method

.method static synthetic d(Lcom/uzmap/pkg/uzcore/h/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/uzmap/pkg/uzcore/h/a;->g:Z

    return p0
.end method

.method static synthetic e(Lcom/uzmap/pkg/uzcore/h/a;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/h/a;->f:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic e(Lcom/uzmap/pkg/uzcore/h/a;F)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/a;->o:F

    return-void
.end method

.method static synthetic f(Lcom/uzmap/pkg/uzcore/h/a;)F
    .locals 0

    iget p0, p0, Lcom/uzmap/pkg/uzcore/h/a;->k:F

    return p0
.end method

.method static synthetic g(Lcom/uzmap/pkg/uzcore/h/a;)F
    .locals 0

    iget p0, p0, Lcom/uzmap/pkg/uzcore/h/a;->l:F

    return p0
.end method

.method static synthetic h(Lcom/uzmap/pkg/uzcore/h/a;)F
    .locals 0

    iget p0, p0, Lcom/uzmap/pkg/uzcore/h/a;->m:F

    return p0
.end method

.method static synthetic i(Lcom/uzmap/pkg/uzcore/h/a;)F
    .locals 0

    iget p0, p0, Lcom/uzmap/pkg/uzcore/h/a;->e:F

    return p0
.end method

.method static synthetic j(Lcom/uzmap/pkg/uzcore/h/a;)F
    .locals 0

    iget p0, p0, Lcom/uzmap/pkg/uzcore/h/a;->n:F

    return p0
.end method

.method static synthetic k(Lcom/uzmap/pkg/uzcore/h/a;)F
    .locals 0

    iget p0, p0, Lcom/uzmap/pkg/uzcore/h/a;->o:F

    return p0
.end method


# virtual methods
.method public a(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/a;->i:F

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/a;->invalidateSelf()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value must be between 1 and zero inclusive!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/a;->invalidateSelf()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/a;->b(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/a;->b(Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/a;->a(F)V

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/h/a;->j:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/h/a;->h:Z

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/a;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/a;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/a;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/a;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a;->a:Lcom/uzmap/pkg/uzcore/h/a$a;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzcore/h/a$a;->a(Lcom/uzmap/pkg/uzcore/h/a$a;Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/a;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a;->b:Lcom/uzmap/pkg/uzcore/h/a$a;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzcore/h/a$a;->a(Lcom/uzmap/pkg/uzcore/h/a$a;Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a;->c:Lcom/uzmap/pkg/uzcore/h/a$a;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzcore/h/a$a;->a(Lcom/uzmap/pkg/uzcore/h/a$a;Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/a;->h:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/a;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/a;->invalidateSelf()V

    return-void
.end method
