.class public Lcom/apicloud/a/i/a/ab/a;
.super Landroid/widget/SeekBar;

# interfaces
.implements Lcom/apicloud/a/i/a/g/c;


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private c:D

.field private d:D

.field private e:D

.field private f:D

.field private g:D

.field private h:Landroid/graphics/drawable/GradientDrawable;

.field private i:Lcom/apicloud/a/i/a/ab/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40600000    # 3.5f

    invoke-static {v0}, Lcom/apicloud/a/g/h;->a(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/apicloud/a/i/a/ab/a;->a:I

    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v0

    sput v0, Lcom/apicloud/a/i/a/ab/a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x101007b

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/apicloud/a/i/a/ab/a;->c:D

    iput-wide v0, p0, Lcom/apicloud/a/i/a/ab/a;->d:D

    iput-wide v0, p0, Lcom/apicloud/a/i/a/ab/a;->e:D

    iput-wide v0, p0, Lcom/apicloud/a/i/a/ab/a;->f:D

    iput-wide v0, p0, Lcom/apicloud/a/i/a/ab/a;->g:D

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ab/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/a/i/a/ab/a;->c(D)V

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-virtual {p0, v2, v3}, Lcom/apicloud/a/i/a/ab/a;->b(D)V

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/a/i/a/ab/a;->a(D)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/apicloud/a/i/a/ab/a;->setPadding(IIII)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/apicloud/a/i/a/v/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setSplitTrack(Z)V

    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ab/a;->h:Landroid/graphics/drawable/GradientDrawable;

    sget v1, Lcom/apicloud/a/i/a/ab/a;->b:I

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ab/a;->h:Landroid/graphics/drawable/GradientDrawable;

    sget v1, Lcom/apicloud/a/i/a/ab/a;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ab/a;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    invoke-static {}, Lcom/apicloud/a/i/a/v/a;->b()Z

    move-result v0

    const v1, -0x141415

    const v2, -0xff9401

    if-eqz v0, :cond_1

    invoke-static {v1, v2, p1}, Lcom/apicloud/a/i/a/v/a;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/a/ab/a;->a(I)V

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ab/a;->b(I)V

    :goto_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ab/a;->c(I)V

    sget p1, Lcom/apicloud/a/i/a/ab/a;->a:I

    invoke-static {p0, p1}, Lcom/apicloud/a/i/a/v/a;->a(Landroid/widget/ProgressBar;I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ab/a;->f()V

    return-void
.end method

.method private g()V
    .locals 4

    iget-wide v0, p0, Lcom/apicloud/a/i/a/ab/a;->f:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/apicloud/a/i/a/ab/a;->d:D

    iget-wide v2, p0, Lcom/apicloud/a/i/a/ab/a;->c:D

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4060000000000000L    # 128.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/apicloud/a/i/a/ab/a;->g:D

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ab/a;->i()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ab/a;->h()V

    return-void
.end method

.method private h(I)D
    .locals 4

    invoke-super {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lcom/apicloud/a/i/a/ab/a;->d:D

    return-wide v0

    :cond_0
    int-to-double v0, p1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ab/a;->j()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/apicloud/a/i/a/ab/a;->c:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private h()V
    .locals 7

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ab/a;->i()I

    move-result v0

    iget-wide v1, p0, Lcom/apicloud/a/i/a/ab/a;->e:D

    iget-wide v3, p0, Lcom/apicloud/a/i/a/ab/a;->c:D

    sub-double/2addr v1, v3

    iget-wide v5, p0, Lcom/apicloud/a/i/a/ab/a;->d:D

    sub-double/2addr v5, v3

    div-double/2addr v1, v5

    int-to-double v3, v0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private i()I
    .locals 4

    iget-wide v0, p0, Lcom/apicloud/a/i/a/ab/a;->d:D

    iget-wide v2, p0, Lcom/apicloud/a/i/a/ab/a;->c:D

    sub-double/2addr v0, v2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ab/a;->j()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private j()D
    .locals 4

    iget-wide v0, p0, Lcom/apicloud/a/i/a/ab/a;->f:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/apicloud/a/i/a/ab/a;->g:D

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/apicloud/a/i/a/ab/a;->e:D

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ab/a;->h()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    const v0, 0x102000d

    invoke-static {p0, p1, v0}, Lcom/apicloud/a/i/a/v/a;->a(Landroid/widget/ProgressBar;II)V

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/ab/c;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ab/a;->i:Lcom/apicloud/a/i/a/ab/c;

    return-void
.end method

.method public b()Lcom/apicloud/a/i/c/l;
    .locals 4

    invoke-static {p0}, Lcom/apicloud/a/i/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/apicloud/a/i/c/l;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ab/a;->d()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/apicloud/a/i/c/l;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final b(D)V
    .locals 0

    iput-wide p1, p0, Lcom/apicloud/a/i/a/ab/a;->d:D

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ab/a;->g()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    const/high16 v0, 0x1020000

    invoke-static {p0, p1, v0}, Lcom/apicloud/a/i/a/v/a;->a(Landroid/widget/ProgressBar;II)V

    return-void
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/a/i/a/ab/a;->a(D)V

    return-void
.end method

.method public final c(D)V
    .locals 0

    iput-wide p1, p0, Lcom/apicloud/a/i/a/ab/a;->c:D

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ab/a;->g()V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ab/a;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public final d()D
    .locals 2

    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ab/a;->h(I)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public final d(D)V
    .locals 0

    iput-wide p1, p0, Lcom/apicloud/a/i/a/ab/a;->f:D

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ab/a;->g()V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ab/a;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    return-void
.end method

.method public final e()Lcom/apicloud/a/i/a/ab/c;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ab/a;->i:Lcom/apicloud/a/i/a/ab/c;

    return-object v0
.end method

.method public final e(I)V
    .locals 1

    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method f()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :cond_0
    return-void
.end method

.method public final f(I)V
    .locals 1

    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public final g(I)V
    .locals 1

    const v0, 0x102000f

    invoke-static {p0, p1, v0}, Lcom/apicloud/a/i/a/v/a;->a(Landroid/widget/ProgressBar;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-static {}, Lcom/apicloud/a/i/a/v/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sget v1, Lcom/apicloud/a/i/a/ab/a;->a:I

    invoke-static {p0, v0, v1}, Lcom/apicloud/a/i/a/v/a;->b(Landroid/widget/ProgressBar;II)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onMeasure(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[slider]"

    return-object v0
.end method
