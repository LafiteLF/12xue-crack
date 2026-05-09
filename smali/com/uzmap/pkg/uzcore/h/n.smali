.class public Lcom/uzmap/pkg/uzcore/h/n;
.super Lcom/uzmap/pkg/b/c/a;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/h/n$a;,
        Lcom/uzmap/pkg/uzcore/h/n$b;
    }
.end annotation


# static fields
.field private static v:Lcom/uzmap/pkg/uzcore/h/n;


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:I

.field private g:J

.field private h:Z

.field private i:I

.field private j:I

.field private k:Landroid/view/WindowManager$LayoutParams;

.field private l:Landroid/view/WindowManager;

.field private m:Z

.field private n:Lcom/uzmap/pkg/uzcore/h/n$b;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Lcom/uzmap/pkg/b/b/g;

.field private s:Lcom/uzmap/pkg/b/b/k;

.field private t:Z

.field private u:Landroid/app/Activity;

.field private w:Lcom/uzmap/pkg/b/b/g$a;

.field private x:Lcom/uzmap/pkg/b/b/f;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/c/a;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->a:I

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/n$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/h/n$1;-><init>(Lcom/uzmap/pkg/uzcore/h/n;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->w:Lcom/uzmap/pkg/b/b/g$a;

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/n$2;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/h/n$2;-><init>(Lcom/uzmap/pkg/uzcore/h/n;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->x:Lcom/uzmap/pkg/b/b/f;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/n;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->u:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->i:I

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->l:Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/n;->l:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/uzmap/pkg/uzcore/h/n;->f:I

    invoke-static {p1}, Lcom/uzmap/pkg/b/a/c;->a(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->j:I

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/uzmap/pkg/uzcore/h/n;->i:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/uzmap/pkg/uzcore/h/n;->i:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/uzmap/pkg/uzcore/h/n;->i:I

    sub-int/2addr v1, v3

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    const v0, 0x10a0001

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/n;->b(Z)V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/uzmap/pkg/uzcore/h/n;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/h/n;->v:Lcom/uzmap/pkg/uzcore/h/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/n;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/h/n;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/uzmap/pkg/uzcore/h/n;->v:Lcom/uzmap/pkg/uzcore/h/n;

    :cond_0
    sget-object p0, Lcom/uzmap/pkg/uzcore/h/n;->v:Lcom/uzmap/pkg/uzcore/h/n;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/n;->k()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->s:Lcom/uzmap/pkg/b/b/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/b/b/k;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/b/b/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->s:Lcom/uzmap/pkg/b/b/k;

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/k;->a()V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->s:Lcom/uzmap/pkg/b/b/k;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v2, v1, p1}, Lcom/uzmap/pkg/b/b/k;->a(Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->s:Lcom/uzmap/pkg/b/b/k;

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/b/k;->show()V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/h/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/n;->m()V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/h/n;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/n;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/h/n;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/h/n;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/h/n;->a(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/h/n;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->t:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->r:Lcom/uzmap/pkg/b/b/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/g;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->r:Lcom/uzmap/pkg/b/b/g;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/b/g;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->s:Lcom/uzmap/pkg/b/b/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/b/b/k;->a(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/h/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/n;->o()V

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/h/n;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/n;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/n;->k()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/uzmap/pkg/uzcore/h/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/n;->p()V

    return-void
.end method

.method static synthetic c(Lcom/uzmap/pkg/uzcore/h/n;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/n;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->s:Lcom/uzmap/pkg/b/b/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/k;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->s:Lcom/uzmap/pkg/b/b/k;

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/k;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/h/n;->p:Ljava/lang/String;

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

    :cond_2
    const-string p1, ""

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/e;->f(Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic d(Lcom/uzmap/pkg/uzcore/h/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/n;->n()V

    return-void
.end method

.method static synthetic e(Lcom/uzmap/pkg/uzcore/h/n;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/uzmap/pkg/uzcore/h/n;->t:Z

    return p0
.end method

.method private f()V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/n;->j()V

    invoke-virtual {p0, p0}, Lcom/uzmap/pkg/uzcore/h/n;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private g()V
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->a:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/uzmap/pkg/uzcore/h/n;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private h()V
    .locals 3

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->b:F

    iget v1, p0, Lcom/uzmap/pkg/uzcore/h/n;->i:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lcom/uzmap/pkg/uzcore/h/n;->c:F

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v2, v1

    float-to-int v1, v2

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->l:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3ecccccd    # 0.4f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->l:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->l:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->u:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/uzmap/pkg/EntranceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->r:Lcom/uzmap/pkg/b/b/g;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/g;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->r:Lcom/uzmap/pkg/b/b/g;

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/g;->a()V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->r:Lcom/uzmap/pkg/b/b/g;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/n;->w:Lcom/uzmap/pkg/b/b/g$a;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/b/b/g;->a(Lcom/uzmap/pkg/b/b/g$a;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->r:Lcom/uzmap/pkg/b/b/g;

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/g;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->r:Lcom/uzmap/pkg/b/b/g;

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/g;->show()V

    :cond_1
    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->r:Lcom/uzmap/pkg/b/b/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/g;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->r:Lcom/uzmap/pkg/b/b/g;

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/g;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->t:Z

    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->r:Lcom/uzmap/pkg/b/b/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/g;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->r:Lcom/uzmap/pkg/b/b/g;

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/g;->b()V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->t:Z

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/n$3;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/h/n$3;-><init>(Lcom/uzmap/pkg/uzcore/h/n;)V

    invoke-static {v0}, Lcom/deepe/c/c;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private p()V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/n$4;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/h/n$4;-><init>(Lcom/uzmap/pkg/uzcore/h/n;)V

    invoke-static {v0}, Lcom/deepe/c/c;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->n:Lcom/uzmap/pkg/uzcore/h/n$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/h/n$b;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/n;->l()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    const/16 v0, 0x7d0

    if-gt p1, v0, :cond_0

    const/16 p1, 0x1388

    :cond_0
    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->a:I

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/h/n;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/uzmap/pkg/b/c/e;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/n;->a(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/b/b/e;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/h/n$b;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->n:Lcom/uzmap/pkg/uzcore/h/n$b;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->o:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object p1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->q:Z

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/n;->p:Ljava/lang/String;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getUzVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/uzmap/pkg/b/b/e;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->x:Lcom/uzmap/pkg/b/b/f;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/b/b/e;->a(Lcom/uzmap/pkg/b/b/f;)V

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/b/e;->a()V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/h/n;->p:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/h/n;->q:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->o:Z

    return v0
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/e;->c()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/n;->setEnabled(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/e;->a()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->l:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->m:Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->l:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/n;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->m:Z

    return-void
.end method

.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->m:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/uzmap/pkg/b/c/a;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/n;->g()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/uzmap/pkg/b/c/a;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/n;->f()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/uzmap/pkg/uzcore/h/n;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/uzmap/pkg/uzcore/h/n;->j:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/uzmap/pkg/uzcore/h/n;->c:F

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/uzmap/pkg/uzcore/h/n;->d:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/uzmap/pkg/uzcore/h/n;->f:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->e:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/uzmap/pkg/uzcore/h/n;->f:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    :cond_1
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/n;->h()V

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/h/n;->h:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/n;->g()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->e:F

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->d:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/uzmap/pkg/uzcore/h/n;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->h:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/n;->q()V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->h:Z

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/n;->f()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->e:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uzmap/pkg/uzcore/h/n;->g:J

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/uzmap/pkg/b/c/a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/n;->i()V

    return-void
.end method
