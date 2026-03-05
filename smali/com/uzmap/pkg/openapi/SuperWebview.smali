.class public final Lcom/uzmap/pkg/openapi/SuperWebview;
.super Landroid/widget/FrameLayout;


# static fields
.field private static m:Z = false


# instance fields
.field private a:Lcom/uzmap/pkg/uzcore/g;

.field private b:Lcom/uzmap/pkg/uzcore/e;

.field private final c:Lcom/uzmap/pkg/openapi/ViewClient;

.field private d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/uzmap/pkg/uzcore/h/x;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->l:Ljava/lang/Boolean;

    new-instance v0, Lcom/uzmap/pkg/openapi/ViewClient;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/openapi/ViewClient;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->c:Lcom/uzmap/pkg/openapi/ViewClient;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->b:Lcom/uzmap/pkg/uzcore/e;

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/openapi/SuperWebview;->tryToTablayoutInfo(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/openapi/SuperWebview;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1(Lcom/uzmap/pkg/openapi/SuperWebview;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/uzmap/pkg/openapi/SuperWebview;)Lcom/uzmap/pkg/uzcore/g;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    return-object p0
.end method

.method private changeEngineModeIfNeeded(Lcom/uzmap/pkg/uzcore/b/d;)V
    .locals 2

    iget-boolean v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/b/d;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/b/d;->p()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/b/d;->p()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput-boolean v1, p1, Lcom/uzmap/pkg/uzcore/b/d;->n:Z

    :cond_2
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->createSuperView(Lcom/uzmap/pkg/uzcore/b/d;)V

    iput-boolean v1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->g:Z

    sget-boolean v0, Lcom/deepe/d/a;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuperWebview@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " changeEngineMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/b/d;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->logTo(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private checkWithNullUrlInitialized()V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getDefaultStartUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->initialize(Lcom/uzmap/pkg/uzcore/b/d;)V

    return-void
.end method

.method private createSuperView(Lcom/uzmap/pkg/uzcore/b/d;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->t()V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->i:Lcom/uzmap/pkg/uzcore/h/x;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/b/d;->a(Lcom/uzmap/pkg/uzcore/h/x;)V

    :cond_1
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/e/b;->a(Lcom/uzmap/pkg/uzcore/b/d;)V

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->b:Lcom/uzmap/pkg/uzcore/e;

    iget-object v1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->c:Lcom/uzmap/pkg/openapi/ViewClient;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/e$a;)V

    new-instance v0, Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/g;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/b/d;)V

    iput-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->c:Lcom/uzmap/pkg/openapi/ViewClient;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/e$a;)V

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/g;->a()V

    invoke-static {}, Lcom/deepe/c/b/e;->b()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/g;->c(Z)V

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/g;->b(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->addView(Landroid/view/View;)V

    return-void
.end method

.method private doSpecialScheme(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "http://ops.fun.mipm/sync"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->b:Lcom/uzmap/pkg/uzcore/e;

    const/4 v0, 0x1

    const-string v1, "data_sync"

    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/e;->a(Ljava/lang/String;Z)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getCurAPIView()Lcom/uzmap/pkg/uzcore/a;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurFrame()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final getCurFrame()Lcom/uzmap/pkg/uzcore/d/a;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWindow()Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->E()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getCurWebView()Landroid/webkit/WebView;
    .locals 2

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurAPIView()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/webkit/WebView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getCurWindow()Lcom/uzmap/pkg/uzcore/d/c;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->p()Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private ifNeededTransUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/uzmap/pkg/openapi/FileSystem;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->k()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/uzmap/pkg/uzcore/b/d;->k:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "widget/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private initialize(Lcom/uzmap/pkg/uzcore/b/d;)V
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->changeEngineModeIfNeeded(Lcom/uzmap/pkg/uzcore/b/d;)V

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/b/d;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->createSuperView(Lcom/uzmap/pkg/uzcore/b/d;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->f:Z

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->b:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/e;->j()V

    return-void
.end method

.method private final logTo(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/deepe/d/a;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->b:Lcom/uzmap/pkg/uzcore/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/e;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private makeRealUrlAndSuperViewIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/deepe/c/i/n;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/deepe/c/i/x;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/b/d;->j(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->changeEngineModeIfNeeded(Lcom/uzmap/pkg/uzcore/b/d;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->start()V

    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->n()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->changeEngineModeIfNeeded(Lcom/uzmap/pkg/uzcore/b/d;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/w;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {p1}, Lcom/deepe/c/i/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1, v1}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->changeEngineModeIfNeeded(Lcom/uzmap/pkg/uzcore/b/d;)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->start(Ljava/lang/String;)V

    return-object v1

    :cond_4
    return-object p1
.end method

.method private realStart()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->d()V

    iget-boolean v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->startupProcess()V

    :cond_0
    return-void
.end method

.method private shouldOverrideKeyPress(Lcom/uzmap/pkg/uzcore/p$a;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final startupProcess()V
    .locals 2

    sget-boolean v0, Lcom/uzmap/pkg/openapi/SuperWebview;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uzmap/pkg/openapi/SuperWebview;->m:Z

    new-instance v0, Lcom/deepe/b/d;

    new-instance v1, Lcom/uzmap/pkg/openapi/SuperWebview$2;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/openapi/SuperWebview$2;-><init>(Lcom/uzmap/pkg/openapi/SuperWebview;)V

    invoke-direct {v0, v1}, Lcom/deepe/b/d;-><init>(Lcom/deepe/b/d$a;)V

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/d;->a(Lcom/deepe/b/d/d;)V

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->e()V

    return-void
.end method

.method private tryToSetPageParam(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/a/a;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v0

    const-string v1, "pageParam"

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "appParam"

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->d:Ljava/lang/Object;

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->b:Lcom/uzmap/pkg/uzcore/e;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method private tryToTablayoutInfo(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/uzmap/pkg/uzcore/h/x;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    check-cast p1, Lcom/uzmap/pkg/uzcore/h/x;

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->i:Lcom/uzmap/pkg/uzcore/h/x;

    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/uzmap/pkg/uzcore/h/x;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/uzmap/pkg/uzcore/h/x;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/UZWebView;)V

    iput-object v3, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->i:Lcom/uzmap/pkg/uzcore/h/x;

    iget-boolean v1, v3, Lcom/uzmap/pkg/uzcore/h/x;->ac:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->i:Lcom/uzmap/pkg/uzcore/h/x;

    iget-boolean v1, v1, Lcom/uzmap/pkg/uzcore/h/x;->ab:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    return v2

    :cond_2
    iput-object v4, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->i:Lcom/uzmap/pkg/uzcore/h/x;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->tryToSetPageParam(Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public final addHtml5EventListener(Lcom/uzmap/pkg/openapi/Html5EventListener;)V
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/openapi/APIEventCenter;->get()Lcom/uzmap/pkg/openapi/APIEventCenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->addHtml5EventListener(Landroid/content/Context;Lcom/uzmap/pkg/openapi/Html5EventListener;)V

    return-void
.end method

.method public final addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "SuperWebview addJavascriptInterface method in, but WebView is null."

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final appendUserAgent(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/deepe/c/k/k;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final canGoBack()Z
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "SuperWebview canGoBack method in, but WebView is null."

    invoke-static {v0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final canGoBackOrForward(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "SuperWebview canGoBackOrForward method in, but WebView is null."

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final canGoForward()Z
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "SuperWebview canGoForward method in, but WebView is null."

    invoke-static {v0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final clearCache(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "SuperWebview clearCache method in, but WebView is null."

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final clearFormData()V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    goto :goto_0

    :cond_0
    const-string v0, "SuperWebview clearFormData method in, but WebView is null."

    invoke-static {v0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    goto :goto_0

    :cond_0
    const-string v0, "SuperWebview clearHistory method in, but WebView is null."

    invoke-static {v0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "SuperWebview copyBackForwardList method in, but WebView is null."

    invoke-static {v0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->t()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-static {}, Lcom/uzmap/pkg/a/b;->a()V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->c:Lcom/uzmap/pkg/openapi/ViewClient;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/openapi/ViewClient;->destroy()V

    :cond_1
    return-void
.end method

.method public final evaluateJavascript(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->evaluateJavascript(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/uzmap/pkg/openapi/SuperWebview;->evaluateJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final evaluateJavascript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/uzmap/pkg/openapi/SuperWebview;->evaluateJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final evaluateJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->evaluateJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final evaluateJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;-><init>()V

    iput-object p1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;->b:Ljava/lang/String;

    iput-object p3, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;->c:Ljava/lang/String;

    iput-object p4, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;->d:Landroid/webkit/ValueCallback;

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/g;->b(Lcom/uzmap/pkg/uzcore/uzmodule/b/q;)V

    :cond_0
    return-void
.end method

.method public final getBrowserView()Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultStartUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->k()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "file:///android_asset/widget/index.html"

    :goto_0
    return-object v0
.end method

.method public final getFrameName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurFrame()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurFrame()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getHitTestResult()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_0
    const-string v0, "SuperWebview getHitTestResult method in, but WebView is null."

    invoke-static {v0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOriginalUrl()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "SuperWebview getOriginalUrl method in, but WebView is null."

    invoke-static {v0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSettings()Landroid/webkit/WebSettings;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "SuperWebview getSettings method in, but WebView is null."

    invoke-static {v0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurAPIView()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurAPIView()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "SuperWebview getUrl method in, but WebView is null. return mStartUrl. "

    invoke-static {v0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->k:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "SuperWebview getUrl method in, but WebView is null."

    invoke-static {v0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/k/k;->b(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getViewGroup()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public final getWindowName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWindow()Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWindow()Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final goBack()V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    const-string v0, "SuperWebview goBack method in, but WebView is null."

    invoke-static {v0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final goBackOrForward(I)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    goto :goto_0

    :cond_0
    const-string p1, "SuperWebview goBackOrForward method in, but WebView is null."

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final goForward()V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    :cond_0
    const-string v0, "SuperWebview goForward method in, but WebView is null."

    invoke-static {v0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->f:Z

    return v0
.end method

.method public final isWebClientNull()Z
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isWebviewNull()Z
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurAPIView()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p1, Lcom/deepe/d/a;->a:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "SuperWebview@"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " loadDataWithBaseURL: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->logTo(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "SuperWebview loadDataWithBaseURL method in, but WebView is null."

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->doSpecialScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->h:Z

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->j:Ljava/lang/String;

    return-void

    :cond_1
    sget-boolean v0, Lcom/deepe/d/a;->a:Z

    const-string v1, "SuperWebview@"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " loadUrl: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->logTo(Ljava/lang/String;)V

    :cond_3
    iput-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->i:Lcom/uzmap/pkg/uzcore/h/x;

    if-eqz v0, :cond_5

    sget-boolean p1, Lcom/deepe/d/a;->a:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " loadUrl mTablayoutInfo is not null."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->logTo(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->realStart()V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurAPIView()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->makeRealUrlAndSuperViewIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurAPIView()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Lcom/deepe/c/i/t;)V

    goto :goto_1

    :cond_6
    const-string p1, "SuperWebview loadUrl method in, but WebView is null."

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final onActivated()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/g;->a(Z)V

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    sget-boolean v0, Lcom/deepe/d/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuperWebview@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " onActivityResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/w;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->logTo(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->b:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/e;->a(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->h:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    sget-boolean v0, Lcom/deepe/d/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuperWebview@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " onAttachedToWindow... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->logTo(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/uzmap/pkg/openapi/SuperWebview$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/openapi/SuperWebview$1;-><init>(Lcom/uzmap/pkg/openapi/SuperWebview;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final onHibernate()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/g;->b(Z)V

    :cond_0
    return-void
.end method

.method public final onNetworkChanged(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/g;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->k()V

    :cond_0
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 2

    sget-boolean v0, Lcom/deepe/d/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuperWebview@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " onRequestPermissionsResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->logTo(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->b:Lcom/uzmap/pkg/uzcore/e;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/uzmap/pkg/uzcore/e;->a(I[Ljava/lang/String;[I[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final onResume()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->l()V

    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->g()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final postUrl(Ljava/lang/String;[B)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    const-string p1, "SuperWebview postUrl method in, but WebView is null."

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final reload()V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    :cond_0
    const-string v0, "SuperWebview reload method in, but WebView is null."

    invoke-static {v0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final removeAllHtml5EventListener()V
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/openapi/APIEventCenter;->get()Lcom/uzmap/pkg/openapi/APIEventCenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->removeAllHtml5EventListener(Landroid/content/Context;)V

    return-void
.end method

.method public final removeHtml5EventListener(Lcom/uzmap/pkg/openapi/Html5EventListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/openapi/APIEventCenter;->get()Lcom/uzmap/pkg/openapi/APIEventCenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->removeHtml5EventListener(Landroid/content/Context;Lcom/uzmap/pkg/openapi/Html5EventListener;)V

    return-void
.end method

.method public final sendEvent(Lcom/uzmap/pkg/openapi/EventEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V

    iget-object v1, p1, Lcom/uzmap/pkg/openapi/EventEntity;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/uzmap/pkg/openapi/EventEntity;->extra:Lorg/json/JSONObject;

    iput-object p1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->b:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V

    :cond_0
    return-void
.end method

.method public final sendEventToHtml5(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/openapi/EventEntity;

    invoke-direct {v0, p1, p2}, Lcom/uzmap/pkg/openapi/EventEntity;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->sendEvent(Lcom/uzmap/pkg/openapi/EventEntity;)V

    return-void
.end method

.method public final setAcceptClient(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->e:Z

    return-void
.end method

.method public final setApiListener(Lcom/uzmap/pkg/openapi/APIListener;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->c:Lcom/uzmap/pkg/openapi/ViewClient;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/openapi/ViewClient;->setApiClient(Lcom/uzmap/pkg/openapi/APIListener;)V

    return-void
.end method

.method public final setChromeListener(Lcom/uzmap/pkg/openapi/ChromeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->c:Lcom/uzmap/pkg/openapi/ViewClient;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/openapi/ViewClient;->setChromeListener(Lcom/uzmap/pkg/openapi/ChromeListener;)V

    return-void
.end method

.method public final setForceDarkAllowed(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->l:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setForceDarkAllowed(Z)V

    :cond_0
    return-void
.end method

.method public final setImmerseState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->c:Lcom/uzmap/pkg/openapi/ViewClient;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/openapi/ViewClient;->setImmerseState(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final setInnerMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->c:Lcom/uzmap/pkg/openapi/ViewClient;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/openapi/ViewClient;->setInnerMode(Z)V

    sget-boolean v0, Lcom/deepe/d/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuperWebview@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " setInnerMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->logTo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setOpenInfo(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->tryToTablayoutInfo(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setPullRefreshListener(Lcom/uzmap/pkg/openapi/PullRefreshListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurFrame()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurFrame()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/a;->a(Lcom/uzmap/pkg/openapi/PullRefreshListener;)V

    :cond_0
    return-void
.end method

.method public final setRefreshFooterEnable(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurFrame()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurFrame()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/a;->d(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "SuperWebview setRefreshFooterEnable method in, but WebView is null."

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setRefreshHeaderEnable(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurFrame()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurFrame()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/a;->c(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "SuperWebview setRefreshHeaderEnable method in, but WebView is null."

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setSupportZoom(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurAPIView()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurAPIView()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/a;->a(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "SuperWebview setSupportZoom method in, but WebView is null."

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setTNSRes(Ljava/lang/String;)V
    .locals 1

    const-string v0, "yonyou_tns"

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->setWebShare(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->c:Lcom/uzmap/pkg/openapi/ViewClient;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/openapi/ViewClient;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/deepe/c/k/k;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final setWebShare(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/deepe/sdk/WebShare;->setGlobalData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setWebviewBackgroundColor(I)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const-string p1, "SuperWebview setBackgroundColor method in, but WebView is null."

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setWebviewHorizontalScrollBarEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "SuperWebview setHorizontalScrollBarEnabled method in, but WebView is null."

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setWebviewOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "SuperWebview setOnLongClickListener method in, but WebView is null."

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setWebviewOverScrollMode(I)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    goto :goto_0

    :cond_0
    const-string p1, "SuperWebview setOverScrollMode method in, but WebView is null."

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setWebviewVerticalScrollBarEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "SuperWebview setVerticalScrollBarEnabled method in, but WebView is null."

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->start(Ljava/lang/String;)V

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/deepe/d/a;->a:Z

    const-string v1, "SuperWebview@"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " start: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->logTo(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->doSpecialScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getDefaultStartUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {v0, v3}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/f;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/f;

    move-result-object v0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/w;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/deepe/c/i/n;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/b/d;->j(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v4, v2, Lcom/uzmap/pkg/uzcore/b/d;->z:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    if-nez v4, :cond_4

    iput-object v0, v2, Lcom/uzmap/pkg/uzcore/b/d;->z:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    goto :goto_0

    :cond_3
    move-object v2, v3

    :cond_4
    :goto_0
    iput-object p1, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->k:Ljava/lang/String;

    move-object v0, p1

    move-object p1, v2

    :goto_1
    if-nez p1, :cond_5

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->ifNeededTransUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p1

    :cond_5
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->initialize(Lcom/uzmap/pkg/uzcore/b/d;)V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->realStart()V

    sget-boolean v0, Lcom/deepe/d/a;->a:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " final start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/b/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/SuperWebview;->logTo(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final stopLoading()V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->checkWithNullUrlInitialized()V

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/SuperWebview;->getCurWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    :cond_0
    const-string v0, "SuperWebview stopLoading method in, but WebView is null."

    invoke-static {v0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public windowBack()Z
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/uzmap/pkg/uzcore/p$a;->a:Lcom/uzmap/pkg/uzcore/p$a;

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->shouldOverrideKeyPress(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    sget-object v2, Lcom/uzmap/pkg/uzcore/p$a;->a:Lcom/uzmap/pkg/uzcore/p$a;

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/p$a;Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->h()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public windowCanBack()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/uzmap/pkg/uzcore/p$a;->a:Lcom/uzmap/pkg/uzcore/p$a;

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/openapi/SuperWebview;->shouldOverrideKeyPress(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/openapi/SuperWebview;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->j()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
