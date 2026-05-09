.class public Lcom/uzmap/pkg/b/b/h;
.super Lcom/uzmap/pkg/b/c/a;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/b/b/h$a;
    }
.end annotation


# static fields
.field private static e:Lcom/uzmap/pkg/b/b/h;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

.field private C:I

.field private D:Lcom/uzmap/pkg/b/b/g$a;

.field private E:Lcom/uzmap/pkg/b/b/f;

.field private a:Landroid/view/WindowManager$LayoutParams;

.field private b:Landroid/view/WindowManager;

.field private c:I

.field private d:Z

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:J

.field private l:I

.field private m:Z

.field private n:Landroid/util/DisplayMetrics;

.field private o:I

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Landroid/app/Activity;

.field private t:Lcom/uzmap/pkg/b/b/k;

.field private u:Lcom/uzmap/pkg/b/b/h$a;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Lorg/json/JSONArray;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/c/a;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/uzmap/pkg/b/b/h;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/uzmap/pkg/b/b/h;->o:I

    iput v0, p0, Lcom/uzmap/pkg/b/b/h;->p:I

    iput v0, p0, Lcom/uzmap/pkg/b/b/h;->q:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/uzmap/pkg/b/b/h;->x:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/b/b/h;->y:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/uzmap/pkg/b/b/h;->C:I

    new-instance v2, Lcom/uzmap/pkg/b/b/h$1;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/b/b/h$1;-><init>(Lcom/uzmap/pkg/b/b/h;)V

    iput-object v2, p0, Lcom/uzmap/pkg/b/b/h;->D:Lcom/uzmap/pkg/b/b/g$a;

    new-instance v2, Lcom/uzmap/pkg/b/b/h$2;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/b/b/h$2;-><init>(Lcom/uzmap/pkg/b/b/h;)V

    iput-object v2, p0, Lcom/uzmap/pkg/b/b/h;->E:Lcom/uzmap/pkg/b/b/f;

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/h;->s:Landroid/app/Activity;

    invoke-static {p1}, Lcom/uzmap/pkg/b/a/c;->a(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/uzmap/pkg/b/b/h;->j:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    div-int/2addr v2, v1

    const/4 v1, 0x2

    mul-int/2addr v2, v1

    iput v2, p0, Lcom/uzmap/pkg/b/b/h;->l:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1050000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/uzmap/pkg/b/b/h;->o:I

    iput v2, p0, Lcom/uzmap/pkg/b/b/h;->p:I

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/h;->b:Landroid/view/WindowManager;

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/h;->n:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->b:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v3, p0, Lcom/uzmap/pkg/b/b/h;->n:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x40228

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/uzmap/pkg/b/b/h;->n:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, v2

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/uzmap/pkg/b/b/h;->n:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x10a0001

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/b/b/h;->a(Z)V

    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/h;->i()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/uzmap/pkg/b/b/h;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/b/b/h;->e:Lcom/uzmap/pkg/b/b/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/b/b/h;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/b/h;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/uzmap/pkg/b/b/h;->e:Lcom/uzmap/pkg/b/b/h;

    :cond_0
    sget-object p0, Lcom/uzmap/pkg/b/b/h;->e:Lcom/uzmap/pkg/b/b/h;

    return-object p0
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/h;)Lorg/json/JSONArray;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/b/h;->z:Lorg/json/JSONArray;

    return-object p0
.end method

.method private a(Landroid/view/MotionEvent;Z)V
    .locals 5

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->n:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    const/4 v1, 0x2

    new-array v2, v1, [I

    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/b/b/h;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v2, v2, v3

    iget v4, p0, Lcom/uzmap/pkg/b/b/h;->o:I

    sub-int v4, v0, v4

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lcom/uzmap/pkg/b/b/h;->x:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_1
    div-int/2addr v0, v1

    int-to-float p2, v0

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_3

    if-ge v2, v4, :cond_2

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/b/b/h;->x:Z

    goto :goto_0

    :cond_3
    if-lez v2, :cond_4

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_4
    iput-boolean v3, p0, Lcom/uzmap/pkg/b/b/h;->x:Z

    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->b:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/h;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/h;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/h;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/b/b/h;->a(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/b/b/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->t:Lcom/uzmap/pkg/b/b/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/b/b/k;->a(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/b/b/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/b/h;->A:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/uzmap/pkg/b/b/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/h;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/b/b/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/b/b/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/b/b/h$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/uzmap/pkg/b/b/h$4;-><init>(Lcom/uzmap/pkg/b/b/h;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/deepe/c/c;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/uzmap/pkg/b/b/h;)Lcom/uzmap/pkg/uzcore/uzmodule/b/m;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/b/h;->B:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    return-object p0
.end method

.method private c(I)V
    .locals 3

    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/h;->n()V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->t:Lcom/uzmap/pkg/b/b/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/b/b/k;

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/b/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/b/b/h;->t:Lcom/uzmap/pkg/b/b/k;

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/k;->a()V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->t:Lcom/uzmap/pkg/b/b/k;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v2, v1, p1}, Lcom/uzmap/pkg/b/b/k;->a(Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->t:Lcom/uzmap/pkg/b/b/k;

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/b/k;->show()V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/b/b/h$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/uzmap/pkg/b/b/h$5;-><init>(Lcom/uzmap/pkg/b/b/h;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/deepe/c/c;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic d(Lcom/uzmap/pkg/b/b/h;)Lcom/uzmap/pkg/b/b/h$a;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/b/h;->u:Lcom/uzmap/pkg/b/b/h$a;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/h;->n()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->t:Lcom/uzmap/pkg/b/b/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/k;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->t:Lcom/uzmap/pkg/b/b/k;

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/k;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/uzmap/pkg/b/b/h;->r:Ljava/lang/String;

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/e;->g()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v1

    iget-object v1, v1, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/uzmap/pkg/b/b/h;->r:Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/b/b/h;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "startInfo.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->writeString(Ljava/lang/String;Ljava/lang/String;Z)Z

    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/e;->f(Ljava/lang/String;)Z

    return-void
.end method

.method private i()V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/b/b/h$3;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/b/h$3;-><init>(Lcom/uzmap/pkg/b/b/h;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/b/b/h;->a(Lcom/uzmap/pkg/b/b/h$a;)V

    return-void
.end method

.method private j()V
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/b/b/h;->c:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/uzmap/pkg/b/b/h;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private k()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/uzmap/pkg/b/b/h;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private l()V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->s()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/u;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->f()V

    :goto_0
    return-void
.end method

.method private m()V
    .locals 3

    iget v0, p0, Lcom/uzmap/pkg/b/b/h;->f:F

    iget v1, p0, Lcom/uzmap/pkg/b/b/h;->o:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/uzmap/pkg/b/b/h;->g:F

    iget v2, p0, Lcom/uzmap/pkg/b/b/h;->p:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private n()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->s:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/uzmap/pkg/EntranceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/b/h;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/b/b/h;->d:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/b/b/h;->q:I

    return-void
.end method

.method public a(ILandroid/graphics/drawable/Drawable;)V
    .locals 2

    const/16 v0, 0x7d0

    if-gt p1, v0, :cond_0

    const/16 p1, 0x1388

    :cond_0
    iput p1, p0, Lcom/uzmap/pkg/b/b/h;->c:I

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/b/h;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/uzmap/pkg/b/b/h;->C:I

    int-to-float v1, v1

    invoke-static {v1, p1, v0}, Lcom/uzmap/pkg/uzcore/h/r;->a(FII)Lcom/deepe/c/c/ad;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Lcom/deepe/c/c/ad;->b:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget p1, p1, Lcom/deepe/c/c/ad;->a:F

    float-to-int p1, p1

    iput p1, p0, Lcom/uzmap/pkg/b/b/h;->o:I

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->n:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Lcom/uzmap/pkg/b/b/h;->o:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/b/b/h;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/uzmap/pkg/b/c/e;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/b/b/h;->a(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/b/b/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/b/b/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/h;->u:Lcom/uzmap/pkg/b/b/h$a;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;Ljava/lang/String;)V
    .locals 13

    const-string v0, "port"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ips"

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/uzmap/pkg/b/b/h;->z:Lorg/json/JSONArray;

    iput-object v1, p0, Lcom/uzmap/pkg/b/b/h;->A:Ljava/lang/String;

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/h;->B:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/b/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object p2

    iget-object v3, p0, Lcom/uzmap/pkg/b/b/h;->E:Lcom/uzmap/pkg/b/b/f;

    invoke-virtual {p2, v3}, Lcom/uzmap/pkg/b/b/e;->a(Lcom/uzmap/pkg/b/b/f;)V

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/uzmap/pkg/b/b/i;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/uzmap/pkg/b/b/i;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "connected"

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    new-instance p2, Lcom/deepe/c/i/i;

    invoke-direct {p2}, Lcom/deepe/c/i/i;-><init>()V

    invoke-virtual {p2, v4, v5}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->c()Z

    move-result v3

    const-string v6, ":"

    const-string v7, "ws://"

    if-eqz v3, :cond_4

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_2

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    move v10, v5

    move v11, v10

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lt v10, v12, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/2addr v11, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    move v11, v5

    :goto_1
    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/uzmap/pkg/b/b/e;->c()V

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/i;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/b/i;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_6

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance p2, Lcom/deepe/c/i/i;

    invoke-direct {p2}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "ip"

    invoke-virtual {p2, v1, v8}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v0, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2, v4, v9}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/i;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/b/i;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_5

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    :goto_2
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/b/h;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->b()V

    :cond_7
    :goto_3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/h;->r:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    const/16 v1, 0x1388

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/b/b/h;->a(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/h;->v:Ljava/lang/String;

    iput-object p2, p0, Lcom/uzmap/pkg/b/b/h;->w:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x1388

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->v:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h;->w:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/b/b/h;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/b/h;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 4

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/h;->r:Ljava/lang/String;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getUzVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/uzmap/pkg/b/b/e;->a(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/e;->a()V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/b/b/h;->C:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/i;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/b/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/i;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/uzmap/pkg/b/b/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "WiFi\u8c03\u8bd5\u5df2\u8fde\u63a5"

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/i;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/b/i;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/uzmap/pkg/b/b/e;->b()V

    return-void
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/e;->d()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/e;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/e;->c()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/b/h;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->b:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/b/b/h;->d:Z

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/g;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/g;->a()V

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/h;->D:Lcom/uzmap/pkg/b/b/g$a;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/b/b/g;->a(Lcom/uzmap/pkg/b/b/g$a;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/g;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/g;->show()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/e;->c()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/uzmap/pkg/b/b/h;->y:Z

    return-void
.end method

.method public h()V
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/b/h;->y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/e;->a()V

    :cond_0
    return-void
.end method

.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/b/h;->d:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/uzmap/pkg/b/c/a;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/h;->j()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/uzmap/pkg/b/c/a;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/h;->k()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/uzmap/pkg/b/b/h;->f:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/uzmap/pkg/b/b/h;->j:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/uzmap/pkg/b/b/h;->g:F

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/uzmap/pkg/b/b/h;->h:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/uzmap/pkg/b/b/h;->l:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/uzmap/pkg/b/b/h;->i:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/uzmap/pkg/b/b/h;->l:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    :cond_1
    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/h;->m()V

    iput-boolean v1, p0, Lcom/uzmap/pkg/b/b/h;->m:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/uzmap/pkg/b/b/h;->i:F

    iput v0, p0, Lcom/uzmap/pkg/b/b/h;->h:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/uzmap/pkg/b/b/h;->k:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x190

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-gtz v0, :cond_3

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/b/h;->m:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/h;->l()V

    invoke-direct {p0, p1, v1}, Lcom/uzmap/pkg/b/b/h;->a(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/uzmap/pkg/b/b/h;->a(Landroid/view/MotionEvent;Z)V

    :goto_0
    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/h;->j()V

    iput-boolean v2, p0, Lcom/uzmap/pkg/b/b/h;->m:Z

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/h;->k()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/b/b/h;->h:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/b/b/h;->i:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uzmap/pkg/b/b/h;->k:J

    :cond_5
    :goto_1
    invoke-super {p0, p1}, Lcom/uzmap/pkg/b/c/a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3ecccccd    # 0.4f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/uzmap/pkg/b/b/h;->x:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/h;->n:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/uzmap/pkg/b/b/h;->o:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/uzmap/pkg/b/b/h;->q:I

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/uzmap/pkg/b/b/h;->q:I

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v1

    neg-int v1, v1

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_1
    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/h;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
