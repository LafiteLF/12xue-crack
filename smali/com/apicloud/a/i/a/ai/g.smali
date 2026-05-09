.class Lcom/apicloud/a/i/a/ai/g;
.super Lcom/apicloud/a/i/a/i/b;

# interfaces
.implements Lcom/apicloud/a/i/a/ai/a/b;
.implements Lcom/apicloud/a/i/a/ai/b$a;
.implements Lcom/apicloud/a/i/a/ai/b$b;
.implements Lcom/apicloud/a/i/a/ai/b$c;
.implements Lcom/apicloud/a/i/a/ai/e;


# static fields
.field public static final a:I

.field private static synthetic r:[I


# instance fields
.field private b:Lcom/apicloud/a/i/a/ai/b;

.field private c:Lcom/apicloud/a/i/a/n/b;

.field private d:Landroid/net/Uri;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:F

.field private n:Z

.field private o:Lcom/apicloud/a/i/a/ai/a/d;

.field private p:Lcom/apicloud/a/i/a/ai/a/b;

.field private q:Lcom/apicloud/a/i/a/ai/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    sput v0, Lcom/apicloud/a/i/a/ai/g;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Lcom/apicloud/a/d;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/g;->g:Z

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/g;->h:Z

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/g;->i:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/g;->j:Z

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/apicloud/a/i/a/ai/g;->m:F

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/g;->B()V

    return-void
.end method

.method private B()V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/n/b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/g;->h()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/n/b;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->c:Lcom/apicloud/a/i/a/n/b;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/n/b;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Lcom/apicloud/a/i/a/q/a$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/apicloud/a/i/a/q/a$a;-><init>(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/q/a$a;->o(I)V

    const-string v1, "100%"

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/q/a$a;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/q/a$a;->n(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/g;->c:Lcom/apicloud/a/i/a/n/b;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/n/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->c:Lcom/apicloud/a/i/a/n/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/n/b;->setVisibility(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->c:Lcom/apicloud/a/i/a/n/b;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/g;->addView(Landroid/view/View;)V

    return-void
.end method

.method private C()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/g;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/ai/g;->n:Z

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apicloud/a/i/a/ai/b;->a(Landroid/content/Context;)Lcom/apicloud/a/i/a/ai/b;

    move-result-object v1

    iput-object v1, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    iget-boolean v2, p0, Lcom/apicloud/a/i/a/ai/g;->h:Z

    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/a/ai/b;->d(Z)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    iget-boolean v2, p0, Lcom/apicloud/a/i/a/ai/g;->i:Z

    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/a/ai/b;->e(Z)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    iget v2, p0, Lcom/apicloud/a/i/a/ai/g;->k:I

    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/a/ai/b;->b(I)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    iget v2, p0, Lcom/apicloud/a/i/a/ai/g;->m:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/a/ai/b;->a(Ljava/lang/Float;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    iget-boolean v2, p0, Lcom/apicloud/a/i/a/ai/g;->g:Z

    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/a/ai/b;->c(Z)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    invoke-virtual {v1, p0}, Lcom/apicloud/a/i/a/ai/b;->a(Lcom/apicloud/a/i/a/ai/b$a;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    invoke-virtual {v1, p0}, Lcom/apicloud/a/i/a/ai/b;->a(Lcom/apicloud/a/i/a/ai/e;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    invoke-virtual {v1, p0}, Lcom/apicloud/a/i/a/ai/b;->a(Lcom/apicloud/a/i/a/ai/b$c;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    invoke-virtual {v1, p0}, Lcom/apicloud/a/i/a/ai/b;->a(Lcom/apicloud/a/i/a/ai/b$b;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/ai/b;->setZOrderOnTop(Z)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/ai/b;->setZOrderMediaOverlay(Z)V

    new-instance v0, Lcom/apicloud/a/i/a/q/a$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/apicloud/a/i/a/q/a$a;-><init>(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/q/a$a;->l(I)V

    const-string v1, "100%"

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/q/a$a;->m(Ljava/lang/String;)V

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/q/a$a;->n(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/q/a$a;->t(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/q/a$a;->v(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/ai/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/a/i/a/ai/g;->addView(Landroid/view/View;I)V

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/g;->j:Z

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ai/g;->i(Z)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->d:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ai/g;->c(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ai/g;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/g;->i(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/c/s;->a(Ljava/lang/String;)Lcom/deepe/c/c/s;

    move-result-object p1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/g;->h()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->f()Lcom/apicloud/a/d/g;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/i/a/ai/g$2;

    invoke-direct {v1, p0}, Lcom/apicloud/a/i/a/ai/g$2;-><init>(Lcom/apicloud/a/i/a/ai/g;)V

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/a/d/g;->a(Lcom/deepe/c/c/s;Lcom/apicloud/a/d/g$a;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ai/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/apicloud/a/i/a/ai/g;->j:Z

    return p0
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/ai/g;)Lcom/apicloud/a/i/a/n/b;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ai/g;->c:Lcom/apicloud/a/i/a/n/b;

    return-object p0
.end method

.method private c(Landroid/net/Uri;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "referer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    invoke-virtual {v1, p1, v0}, Lcom/apicloud/a/i/a/ai/b;->a(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method private i(Z)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->o:Lcom/apicloud/a/i/a/ai/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/ai/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->o:Lcom/apicloud/a/i/a/ai/a/d;

    new-instance v0, Lcom/apicloud/a/i/a/q/a$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/apicloud/a/i/a/q/a$a;-><init>(II)V

    const-string v1, "100%"

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/q/a$a;->m(Ljava/lang/String;)V

    const/16 v1, 0x2c

    invoke-static {v1}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/q/a$a;->k(F)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/q/a$a;->o(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/q/a$a;->f(F)V

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/q/a$a;->i(F)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/g;->o:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/ai/a/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/g;->o:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/g;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/ai/b;->a(Lcom/apicloud/a/i/a/ai/a/d;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/g;->o:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/d;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/g;->o:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/g;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/g;->o:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {p1, p0}, Lcom/apicloud/a/i/a/ai/a/d;->a(Lcom/apicloud/a/i/a/ai/a/b;)V

    :cond_2
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->o:Lcom/apicloud/a/i/a/ai/a/d;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic r()[I
    .locals 3

    sget-object v0, Lcom/apicloud/a/i/a/ai/g;->r:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/apicloud/a/i/a/ai/d;->values()[Lcom/apicloud/a/i/a/ai/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/apicloud/a/i/a/ai/d;->a:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ai/d;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/apicloud/a/i/a/ai/d;->g:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ai/d;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/apicloud/a/i/a/ai/d;->h:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ai/d;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/apicloud/a/i/a/ai/d;->b:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ai/d;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/apicloud/a/i/a/ai/d;->f:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ai/d;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/apicloud/a/i/a/ai/d;->e:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ai/d;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/apicloud/a/i/a/ai/d;->c:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ai/d;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/apicloud/a/i/a/ai/d;->d:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ai/d;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    sput-object v0, Lcom/apicloud/a/i/a/ai/g;->r:[I

    return-object v0
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/ai/g;->m:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/apicloud/a/i/a/ai/g;->m:F

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/b;->a(Ljava/lang/Float;)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(III)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->q:Lcom/apicloud/a/i/a/ai/a;

    if-eqz v0, :cond_0

    div-int/lit16 p3, p3, 0x3e8

    invoke-virtual {v0, p1, p2, p3}, Lcom/apicloud/a/i/a/ai/a;->a(III)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->d:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/g;->d:Landroid/net/Uri;

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/g;->n:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/g;->c(Landroid/net/Uri;)V

    :cond_1
    iget-boolean p1, p0, Lcom/apicloud/a/i/a/ai/g;->g:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/g;->b()V

    :cond_2
    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/ai/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/g;->p:Lcom/apicloud/a/i/a/ai/a/b;

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/ai/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/g;->q:Lcom/apicloud/a/i/a/ai/a;

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ai/d;)V
    .locals 2

    sget-object v0, Lcom/apicloud/a/i/a/ai/d;->e:Lcom/apicloud/a/i/a/ai/d;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->c:Lcom/apicloud/a/i/a/n/b;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/n/b;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->c:Lcom/apicloud/a/i/a/n/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/n/b;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->q:Lcom/apicloud/a/i/a/ai/a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/apicloud/a/i/a/ai/g;->r()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/d;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/g;->q:Lcom/apicloud/a/i/a/ai/a;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a;->c()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/g;->q:Lcom/apicloud/a/i/a/ai/a;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a;->e()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/g;->q:Lcom/apicloud/a/i/a/ai/a;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a;->b()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/g;->q:Lcom/apicloud/a/i/a/ai/a;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a;->a()V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/g;->q:Lcom/apicloud/a/i/a/ai/a;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a;->d()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/g;->g:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/b;->c(Z)V

    :cond_0
    iget-boolean p1, p0, Lcom/apicloud/a/i/a/ai/g;->g:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/g;->b()V

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/g;->j:Z

    return v0
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/g;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ai/g;->f(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/g;->C()V

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ai/g;->f(Z)V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->q:Lcom/apicloud/a/i/a/ai/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/a;->a(I)V

    :cond_0
    return-void
.end method

.method public b(III)V
    .locals 0

    iget-object p3, p0, Lcom/apicloud/a/i/a/ai/g;->q:Lcom/apicloud/a/i/a/ai/a;

    if-eqz p3, :cond_0

    div-int/lit16 p2, p2, 0x3e8

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p3, p1, p2}, Lcom/apicloud/a/i/a/ai/a;->a(II)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/net/Uri;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    iput p1, p0, Lcom/apicloud/a/i/a/ai/g;->k:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/b;->b(I)V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/g;->j:Z

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/g;->i(Z)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/b;->d()V

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 1

    iput p1, p0, Lcom/apicloud/a/i/a/ai/g;->l:I

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/g;->e(I)V

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/g;->h:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/b;->d(Z)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/b;->j()V

    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/b;->a(I)V

    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/g;->i:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/b;->e(Z)V

    :cond_0
    return-void
.end method

.method public final f()F
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/b;->k()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public final g()Lcom/apicloud/a/i/a/ai/d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/b;->l()Lcom/apicloud/a/i/a/ai/d;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/apicloud/a/i/a/ai/d;->a:Lcom/apicloud/a/i/a/ai/d;

    return-object v0
.end method

.method public final g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/b;->b(Z)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->p:Lcom/apicloud/a/i/a/ai/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apicloud/a/i/a/ai/a/b;->j()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/g;->b()V

    return-void
.end method

.method public k()V
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/ai/d;->e:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/g;->a(Lcom/apicloud/a/i/a/ai/d;)V

    return-void
.end method

.method public l()V
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/ai/d;->f:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/g;->a(Lcom/apicloud/a/i/a/ai/d;)V

    return-void
.end method

.method public final m()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/b;->e()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final n()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/b;->f()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->o:Lcom/apicloud/a/i/a/ai/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/d;->c()V

    :cond_0
    return-void
.end method

.method public o(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->p:Lcom/apicloud/a/i/a/ai/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/ai/a/b;->o(Z)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/apicloud/a/i/a/i/b;->onAttachedToWindow()V

    new-instance v0, Lcom/apicloud/a/i/a/ai/g$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/ai/g$1;-><init>(Lcom/apicloud/a/i/a/ai/g;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/g;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    iget-object p3, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/apicloud/a/i/a/ai/b;->a(II)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/b;->c()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/g;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g;->b:Lcom/apicloud/a/i/a/ai/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/b;->c()V

    :cond_0
    return-void
.end method
