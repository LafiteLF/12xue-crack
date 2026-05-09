.class public Lcom/uzmap/pkg/a/g;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/a;


# static fields
.field public static final a:Ljava/lang/String;

.field private static v:F

.field private static w:I


# instance fields
.field protected b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/uzmap/pkg/uzcore/uzmodule/f;

.field private f:Lcom/uzmap/pkg/uzcore/uzmodule/d;

.field private g:Lcom/uzmap/pkg/uzcore/d/i;

.field private h:Lcom/uzmap/pkg/openapi/WebViewProvider;

.field private i:Lcom/uzmap/pkg/uzcore/d/a;

.field private j:Lcom/uzmap/pkg/uzcore/d/f;

.field private k:Lcom/uzmap/pkg/uzcore/i/o;

.field private l:J

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:Z

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, "text/html; charset=UTF-8"

    goto :goto_0

    :cond_0
    const-string v0, "text/html"

    :goto_0
    sput-object v0, Lcom/uzmap/pkg/a/g;->a:Ljava/lang/String;

    sget v0, Lcom/uzmap/pkg/uzcore/z;->c:F

    sput v0, Lcom/uzmap/pkg/a/g;->v:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/uzmap/pkg/a/g;->w:I

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uzmap/pkg/a/g;->l:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/a/g;->n:Z

    iput-object p3, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    iput p1, p0, Lcom/uzmap/pkg/a/g;->c:I

    new-instance p1, Lcom/uzmap/pkg/uzcore/d/f;

    invoke-direct {p1, p2}, Lcom/uzmap/pkg/uzcore/d/f;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/uzmap/pkg/a/g;->j:Lcom/uzmap/pkg/uzcore/d/f;

    return-void
.end method

.method private d(I)V
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/a/g;->s:I

    return-void
.end method

.method private k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/a/g;->o:Z

    return-void
.end method

.method private l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/a/g;->p:Z

    return-void
.end method


# virtual methods
.method public A()Lcom/uzmap/pkg/uzcore/i/o;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->k:Lcom/uzmap/pkg/uzcore/i/o;

    return-object v0
.end method

.method public B()Lcom/uzmap/pkg/uzcore/b/d;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/i;->u()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    return-object v0
.end method

.method public C()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/j;->z()V

    :cond_0
    return-void
.end method

.method public D()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/j;->A()V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->j:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/uzmap/pkg/a/g;->l:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/uzmap/pkg/a/g;->l:J

    const-wide/16 v0, 0x104

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "scrolltobottom"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/a/g;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/a/g;->n:Z

    return v0
.end method

.method public final G()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/a/g;->n:Z

    return-void
.end method

.method public H()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()V
    .locals 0

    return-void
.end method

.method public K()V
    .locals 0

    return-void
.end method

.method public L()Z
    .locals 1

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/h/g;->a(Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->f:Lcom/uzmap/pkg/uzcore/uzmodule/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->g()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/uzmap/pkg/uzcore/d/i;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/i;->b(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;ZZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/uzmap/pkg/uzcore/d/i;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/a/g;->addView(Landroid/view/View;)V

    if-eqz p2, :cond_0

    iput-boolean p2, p0, Lcom/uzmap/pkg/a/g;->x:Z

    :cond_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/a/g;->i:Lcom/uzmap/pkg/uzcore/d/a;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/i/o;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/a/g;->k:Lcom/uzmap/pkg/uzcore/i/o;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/i;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->j:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/f;->a(Lcom/uzmap/pkg/uzcore/d/f$a;)V

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/p;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lcom/uzmap/pkg/a/g;->q:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    const-string v0, "viewappear"

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/a/g;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/p;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "threshold"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->a(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/a/g;->d(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/p;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/d/j;->a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/a/g;->e:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/x;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/CharSequence;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/a/g;->l(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/a/g;->k(Z)V

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/a/g;->l(Z)V

    iget-object v1, p0, Lcom/uzmap/pkg/a/g;->j:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/d/f;->a()V

    iget-object v1, p0, Lcom/uzmap/pkg/a/g;->f:Lcom/uzmap/pkg/uzcore/uzmodule/d;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a()V

    iget-object v1, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/d/i;->a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    const/4 p2, 0x0

    invoke-virtual {p0, v0, v0, p2, p1}, Lcom/uzmap/pkg/a/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/deepe/c/i/t;)V
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/a/g;->b(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/a/g;->b(Z)V

    :goto_0
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/a/g;->j(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/deepe/c/i/t;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/a/g;->a(Ljava/lang/String;Z)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/a/g;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uzmap/pkg/a/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/uzmap/pkg/a/g;->a:Ljava/lang/String;

    const-string p3, "UTF-8"

    invoke-virtual {p0, p2, p1, p3}, Lcom/uzmap/pkg/a/g;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/a/g;->o:Z

    return v0
.end method

.method public a(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollBy(II)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/uzmap/pkg/uzcore/p$a;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->j:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/f;->a(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Runnable;J)Z
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uzmap/pkg/a/g;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    invoke-static {p1, p2, p3}, Lcom/deepe/c/c;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/deepe/c/c;->a(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->j:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/p;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iput-boolean v0, p0, Lcom/uzmap/pkg/a/g;->q:Z

    :cond_1
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/p;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/uzmap/pkg/a/g;->r:Z

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->F()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/d/i;->b(Lcom/uzmap/pkg/uzcore/a;I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0, v0}, Lcom/uzmap/pkg/a/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/i/x;->s(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/a/g;->b(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public b(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/i;->b(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->j:Lcom/uzmap/pkg/uzcore/d/f;

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/f;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/a/g;->k(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v0, p0, p1, p2}, Lcom/uzmap/pkg/uzcore/d/i;->a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Z)V

    const/4 p2, 0x2

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/uzmap/pkg/a/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public b(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method

.method public c(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    const/16 v1, 0x30

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    goto :goto_0

    :cond_2
    const/16 v1, 0x50

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected c(Ljava/lang/String;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public canGoBack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public canGoForward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public clearCache(Z)V
    .locals 0

    return-void
.end method

.method public clearHistory()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/a/g;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->j:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/f;->d()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->f:Lcom/uzmap/pkg/uzcore/uzmodule/d;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/d;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/a/g;->f:Lcom/uzmap/pkg/uzcore/uzmodule/d;

    iput-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/a/g;->clearCache(Z)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->G()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->j:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->j:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/f;->a(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/uzmap/pkg/a/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/a/g;->m:Z

    return-void
.end method

.method public f()V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->B()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    iget-boolean v1, v0, Lcom/uzmap/pkg/uzcore/b/d;->t:Z

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/uzmap/pkg/uzcore/uzmodule/d;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzcore/uzmodule/d;-><init>(Lcom/uzmap/pkg/uzcore/ah;)V

    iput-object v2, p0, Lcom/uzmap/pkg/a/g;->f:Lcom/uzmap/pkg/uzcore/uzmodule/d;

    invoke-virtual {v2, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/d/i;->a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/uzmap/pkg/a/g;->a(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->F()Z

    move-result p1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->f:Lcom/uzmap/pkg/uzcore/uzmodule/d;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->F()Z

    move-result p1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/i;->u()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->l()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 0

    return-void
.end method

.method public goBackOrForward(I)V
    .locals 0

    return-void
.end method

.method public goForward()V
    .locals 0

    return-void
.end method

.method public h()Lcom/uzmap/pkg/uzcore/d/a;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->i:Lcom/uzmap/pkg/uzcore/d/a;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/a/g;->d:Ljava/lang/String;

    return-void
.end method

.method public h(Z)V
    .locals 0

    return-void
.end method

.method public i(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1

    :cond_1
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/a/g;->c(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/i;->f(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public i()Lcom/uzmap/pkg/openapi/WebViewProvider;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->h:Lcom/uzmap/pkg/openapi/WebViewProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/openapi/WebViewProvider;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/openapi/WebViewProvider;-><init>(Lcom/uzmap/pkg/uzcore/a;)V

    iput-object v0, p0, Lcom/uzmap/pkg/a/g;->h:Lcom/uzmap/pkg/openapi/WebViewProvider;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->h:Lcom/uzmap/pkg/openapi/WebViewProvider;

    return-object v0
.end method

.method public i(Z)V
    .locals 0

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->F()Z

    move-result p1

    return-void
.end method

.method public j(Z)V
    .locals 0

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/a/g;->p:Z

    return v0
.end method

.method public k()Lcom/uzmap/pkg/uzcore/aa;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lcom/deepe/d/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/i;->x()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/i;->w()I

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/a/g;->x:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/a/g;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    return v0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onOverScrolled(IIZZ)V

    iget-object p1, p0, Lcom/uzmap/pkg/a/g;->j:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/f;->c()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz p4, :cond_1

    if-lez p2, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p3

    :goto_0
    iput-boolean v0, p0, Lcom/uzmap/pkg/a/g;->u:Z

    if-eqz p4, :cond_2

    if-lez p2, :cond_2

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->E()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->getContentHeight()I

    move-result p4

    int-to-float p4, p4

    sget v0, Lcom/uzmap/pkg/a/g;->v:F

    mul-float/2addr p4, v0

    float-to-int p4, p4

    iget v0, p0, Lcom/uzmap/pkg/a/g;->s:I

    sub-int v0, p4, v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    iget v2, p0, Lcom/uzmap/pkg/a/g;->t:I

    sub-int v2, p2, v2

    sget v3, Lcom/uzmap/pkg/a/g;->w:I

    if-gt v2, v3, :cond_3

    if-eq v1, p4, :cond_3

    move p1, p3

    :cond_3
    iput p2, p0, Lcom/uzmap/pkg/a/g;->t:I

    if-lt v1, v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->E()V

    :cond_4
    return-void
.end method

.method public p()I
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public pageUp(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public pauseTimers()V
    .locals 0

    return-void
.end method

.method public q()I
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/a/g;->m:Z

    return v0
.end method

.method public reload()V
    .locals 0

    return-void
.end method

.method public resumeTimers()V
    .locals 0

    return-void
.end method

.method public s()Lcom/uzmap/pkg/uzcore/d/i;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    return-object v0
.end method

.method public stopLoading()V
    .locals 0

    return-void
.end method

.method public t()Z
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/a/g;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "frame["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/a/g;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public v()Z
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/a/g;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/a/g;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/i;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/uzmap/pkg/uzcore/uzmodule/f;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->g:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/i;->z()Lcom/uzmap/pkg/uzcore/uzmodule/f;

    move-result-object v0

    return-object v0
.end method

.method public z()Lcom/uzmap/pkg/uzcore/uzmodule/f;
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/g;->F()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/a/g;->e:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/f;

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/f;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
