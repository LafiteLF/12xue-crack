.class Lcom/apicloud/a/i/a/ai/b;
.super Lcom/apicloud/a/i/a/ai/a/j;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/ai/b$a;,
        Lcom/apicloud/a/i/a/ai/b$b;,
        Lcom/apicloud/a/i/a/ai/b$c;
    }
.end annotation


# instance fields
.field protected a:Landroid/media/MediaPlayer;

.field b:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Ljava/lang/Float;

.field private k:F

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/ai/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/apicloud/a/i/a/ai/d;

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/ai/e;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/ai/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/ai/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:I

.field private final t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/a/j;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/b;->f:Z

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/b;->g:Z

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/b;->h:Z

    iput p1, p0, Lcom/apicloud/a/i/a/ai/b;->r:I

    iput p1, p0, Lcom/apicloud/a/i/a/ai/b;->s:I

    new-instance p1, Lcom/apicloud/a/i/a/ai/b$1;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ai/b$1;-><init>(Lcom/apicloud/a/i/a/ai/b;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/b;->t:Ljava/lang/Runnable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/b;->n:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/b;->l:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/b;->o:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/b;->q:Ljava/util/List;

    invoke-virtual {p0, p0}, Lcom/apicloud/a/i/a/ai/b;->a(Landroid/media/MediaPlayer$OnInfoListener;)V

    invoke-virtual {p0, p0}, Lcom/apicloud/a/i/a/ai/b;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {p0, p0}, Lcom/apicloud/a/i/a/ai/b;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {p0, p0}, Lcom/apicloud/a/i/a/ai/b;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {p0, p0}, Lcom/apicloud/a/i/a/ai/b;->a(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    invoke-virtual {p0, p0}, Lcom/apicloud/a/i/a/ai/b;->a(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    sget-object p1, Lcom/apicloud/a/i/a/ai/d;->a:Lcom/apicloud/a/i/a/ai/d;

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/b;->m:Lcom/apicloud/a/i/a/ai/d;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ai/b;)I
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/b;->p()I

    move-result p0

    return p0
.end method

.method static a(Landroid/content/Context;)Lcom/apicloud/a/i/a/ai/b;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/ai/c;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/ai/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/a/ai/b;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/ai/b;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0
.end method

.method private a(III)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/b;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/b;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/i/a/ai/b$c;

    invoke-interface {v1, p1, p2, p3}, Lcom/apicloud/a/i/a/ai/b$c;->b(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/ai/b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ai/b;->t:Ljava/lang/Runnable;

    return-object p0
.end method

.method private b(II)V
    .locals 7

    iget v0, p0, Lcom/apicloud/a/i/a/ai/b;->r:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/apicloud/a/i/a/ai/b;->s:I

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/q/a$a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/apicloud/a/i/a/ai/b;->r:I

    mul-int v2, v1, p2

    iget v3, p0, Lcom/apicloud/a/i/a/ai/b;->s:I

    mul-int v4, p1, v3

    const-string v5, "100%"

    const-string v6, "auto"

    if-ge v2, v4, :cond_2

    invoke-virtual {v0, v6}, Lcom/apicloud/a/i/a/q/a$a;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/apicloud/a/i/a/q/a$a;->n(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/apicloud/a/i/a/q/a$a;->s(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/apicloud/a/i/a/q/a$a;->u(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    mul-int/2addr v1, p2

    mul-int/2addr p1, v3

    if-le v1, p1, :cond_3

    invoke-virtual {v0, v5}, Lcom/apicloud/a/i/a/q/a$a;->m(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/apicloud/a/i/a/q/a$a;->n(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/apicloud/a/i/a/q/a$a;->t(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/apicloud/a/i/a/q/a$a;->v(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/b;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {p1, p0}, Lcom/apicloud/a/i/a/i/b;->c(Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private b(III)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/b;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/b;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/i/a/ai/b$a;

    invoke-interface {v1, p1, p2, p3}, Lcom/apicloud/a/i/a/ai/b$a;->a(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private f(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget p1, Lcom/apicloud/a/g/b;->a:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->setBackgroundColor(I)V

    return-void
.end method

.method private n()V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/b;->o()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/b;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/b;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/b;->t:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/b;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private p()I
    .locals 6

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/b;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/b;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/b;->e()I

    move-result v1

    if-lez v1, :cond_1

    const-wide/16 v2, 0x3e8

    int-to-long v4, v0

    mul-long/2addr v4, v2

    int-to-long v2, v1

    div-long/2addr v4, v2

    long-to-int v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/apicloud/a/i/a/ai/b;->a(III)V

    :cond_1
    return v0
.end method

.method private q()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/b;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/b;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/i/a/ai/b$c;

    iget v2, p0, Lcom/apicloud/a/i/a/ai/b;->p:I

    invoke-interface {v1, v2}, Lcom/apicloud/a/i/a/ai/b$c;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a(F)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/ai/b;->r:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/apicloud/a/i/a/ai/b;->s:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ai/b;->b(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/b;->a:Landroid/media/MediaPlayer;

    sget-object p1, Lcom/apicloud/a/i/a/ai/d;->a:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->a(Lcom/apicloud/a/i/a/ai/d;)V

    return-void

    :cond_0
    sget-object v0, Lcom/apicloud/a/i/a/ai/d;->b:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/b;->a(Lcom/apicloud/a/i/a/ai/d;)V

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/ai/b;->b(Landroid/net/Uri;Ljava/util/Map;)V

    iget p1, p0, Lcom/apicloud/a/i/a/ai/b;->i:I

    if-lez p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->a(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/apicloud/a/i/a/ai/b;->i:I

    :cond_1
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ai/a/d;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->b(Lcom/apicloud/a/i/a/ai/a/d;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->b(Lcom/apicloud/a/i/a/ai/a/d;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ai/b$a;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/b;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ai/b$b;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/b;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ai/b$c;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/b;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Lcom/apicloud/a/i/a/ai/d;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/b;->m:Lcom/apicloud/a/i/a/ai/d;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/b;->m:Lcom/apicloud/a/i/a/ai/d;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/b;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/b;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/ai/e;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/b;->m:Lcom/apicloud/a/i/a/ai/d;

    invoke-interface {v0, v1}, Lcom/apicloud/a/i/a/ai/e;->a(Lcom/apicloud/a/i/a/ai/d;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ai/e;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/b;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Float;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/b;->j:Ljava/lang/Float;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/b;->j:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->a(F)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->c(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/b;->m:Lcom/apicloud/a/i/a/ai/d;

    sget-object v0, Lcom/apicloud/a/i/a/ai/d;->f:Lcom/apicloud/a/i/a/ai/d;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/apicloud/a/i/a/ai/d;->e:Lcom/apicloud/a/i/a/ai/d;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->a(Lcom/apicloud/a/i/a/ai/d;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/b;->m:Lcom/apicloud/a/i/a/ai/d;

    sget-object v0, Lcom/apicloud/a/i/a/ai/d;->h:Lcom/apicloud/a/i/a/ai/d;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/apicloud/a/i/a/ai/d;->b:Lcom/apicloud/a/i/a/ai/d;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/apicloud/a/i/a/ai/a/j;->a()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/b;->n()V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ai/b;->i:I

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->a(I)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/apicloud/a/i/a/ai/d;->f:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->a(Lcom/apicloud/a/i/a/ai/d;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->c(I)V

    :cond_0
    invoke-super {p0}, Lcom/apicloud/a/i/a/ai/a/j;->b()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/b;->o()V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/b;->o()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/b;->m()V

    return-void
.end method

.method protected c(I)V
    .locals 2

    int-to-float v0, p1

    iput v0, p0, Lcom/apicloud/a/i/a/ai/b;->k:F

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/b;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/b;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/i/a/ai/b$b;

    invoke-interface {v1, p1}, Lcom/apicloud/a/i/a/ai/b$b;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/b;->f:Z

    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/b;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/ai/b;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/b;->b(Z)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/b;->g:Z

    return-void
.end method

.method public e(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/b;->h:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/b;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/b;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/ai/b;->k:F

    return v0
.end method

.method public l()Lcom/apicloud/a/i/a/ai/d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/b;->m:Lcom/apicloud/a/i/a/ai/d;

    return-object v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    iget p1, p0, Lcom/apicloud/a/i/a/ai/b;->p:I

    if-eq p1, p2, :cond_0

    iput p2, p0, Lcom/apicloud/a/i/a/ai/b;->p:I

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/b;->q()V

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    sget-object p1, Lcom/apicloud/a/i/a/ai/d;->h:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->a(Lcom/apicloud/a/i/a/ai/d;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->c(I)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    sget-object p1, Lcom/apicloud/a/i/a/ai/d;->g:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->a(Lcom/apicloud/a/i/a/ai/d;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->c(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 p3, 0x3

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ai/b;->f(Z)V

    :cond_0
    const/4 v1, 0x0

    if-eq p2, p3, :cond_2

    const/16 p3, 0x2bd

    if-eq p2, p3, :cond_1

    const/16 p3, 0x2be

    if-eq p2, p3, :cond_2

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/apicloud/a/i/a/ai/d;->d:Lcom/apicloud/a/i/a/ai/d;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->a(Lcom/apicloud/a/i/a/ai/d;)V

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ai/b;->c(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/apicloud/a/i/a/ai/d;->f:Lcom/apicloud/a/i/a/ai/d;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/apicloud/a/i/a/ai/d;->f:Lcom/apicloud/a/i/a/ai/d;

    iget-object p2, p0, Lcom/apicloud/a/i/a/ai/b;->m:Lcom/apicloud/a/i/a/ai/d;

    if-ne p1, p2, :cond_4

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/apicloud/a/i/a/ai/d;->e:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->a(Lcom/apicloud/a/i/a/ai/d;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/b;->c(I)V

    :goto_1
    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/b;->a:Landroid/media/MediaPlayer;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/b;->a:Landroid/media/MediaPlayer;

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/b;->g:Z

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/apicloud/a/i/a/ai/b;->b(III)V

    sget-object p1, Lcom/apicloud/a/i/a/ai/d;->c:Lcom/apicloud/a/i/a/ai/d;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->a(Lcom/apicloud/a/i/a/ai/d;)V

    iget-boolean p1, p0, Lcom/apicloud/a/i/a/ai/b;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/b;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/b;->n()V

    iget-boolean p1, p0, Lcom/apicloud/a/i/a/ai/b;->h:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/b;->a:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/b;->a:Landroid/media/MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/b;->j:Ljava/lang/Float;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/b;->a(F)V

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    new-instance p3, Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p3}, Lcom/apicloud/a/i/a/ai/b;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    iget p1, p0, Lcom/apicloud/a/i/a/ai/b;->r:I

    if-eq p1, p2, :cond_0

    iget p1, p0, Lcom/apicloud/a/i/a/ai/b;->s:I

    if-eq p1, p3, :cond_0

    iput p2, p0, Lcom/apicloud/a/i/a/ai/b;->r:I

    iput p3, p0, Lcom/apicloud/a/i/a/ai/b;->s:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/b;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/b;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ai/b;->b(II)V

    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/ai/a/j;->onWindowVisibilityChanged(I)V

    return-void
.end method
