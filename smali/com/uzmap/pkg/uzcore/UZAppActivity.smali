.class public abstract Lcom/uzmap/pkg/uzcore/UZAppActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/UZAppActivity$a;,
        Lcom/uzmap/pkg/uzcore/UZAppActivity$b;,
        Lcom/uzmap/pkg/uzcore/UZAppActivity$c;,
        Lcom/uzmap/pkg/uzcore/UZAppActivity$d;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/uzmap/pkg/uzcore/h/t;

.field private c:Lcom/uzmap/pkg/uzcore/e;

.field private d:Lcom/uzmap/pkg/uzcore/UZAppActivity$b;

.field private e:Lcom/uzmap/pkg/uzcore/f/e;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lcom/deepe/b/d;

.field private m:Lcom/uzmap/pkg/uzcore/UZAppActivity$c;

.field private n:Lcom/uzmap/pkg/uzcore/b/e;

.field private o:Ljava/lang/Runnable;

.field private p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->a:Z

    iput v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->h:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->i:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->j:I

    new-instance v0, Lcom/uzmap/pkg/uzcore/UZAppActivity$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$1;-><init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->n:Lcom/uzmap/pkg/uzcore/b/e;

    new-instance v0, Lcom/uzmap/pkg/uzcore/UZAppActivity$2;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$2;-><init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->o:Ljava/lang/Runnable;

    new-instance v0, Lcom/uzmap/pkg/uzcore/UZAppActivity$3;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$3;-><init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->p:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzcore/UZAppActivity;ZLcom/uzmap/pkg/uzcore/b/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->initializeEngine(ZLcom/uzmap/pkg/uzcore/b/d;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Lcom/uzmap/pkg/uzcore/e;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    return-object p0
.end method

.method static synthetic access$10(Lcom/uzmap/pkg/uzcore/UZAppActivity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->handlderIntent(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->f:Z

    return p0
.end method

.method static synthetic access$12(Lcom/uzmap/pkg/uzcore/UZAppActivity;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->appidle(ZI)V

    return-void
.end method

.method static synthetic access$13(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Lcom/uzmap/pkg/uzcore/b/e;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->n:Lcom/uzmap/pkg/uzcore/b/e;

    return-object p0
.end method

.method static synthetic access$14(Lcom/uzmap/pkg/uzcore/UZAppActivity;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->onLaunchViewClick(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3(Lcom/uzmap/pkg/uzcore/UZAppActivity;ZLcom/uzmap/pkg/uzcore/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->removeLaunchView(ZLcom/uzmap/pkg/uzcore/c;)V

    return-void
.end method

.method static synthetic access$4(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->finishNow()V

    return-void
.end method

.method static synthetic access$5(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->askForFinish()V

    return-void
.end method

.method static synthetic access$6(Lcom/uzmap/pkg/uzcore/UZAppActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->warnAndForceFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/uzmap/pkg/uzcore/UZAppActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->rebootApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/uzmap/pkg/uzcore/UZAppActivity;)Lcom/uzmap/pkg/uzcore/h/t;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->b:Lcom/uzmap/pkg/uzcore/h/t;

    return-object p0
.end method

.method static synthetic access$9(Lcom/uzmap/pkg/uzcore/UZAppActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->showLaunchView(Z)V

    return-void
.end method

.method private appidle(ZI)V
    .locals 2

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    iput p2, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->h:I

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->o:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/deepe/c/c;->c(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->o:Ljava/lang/Runnable;

    iget p2, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->h:I

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/deepe/c/c;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->o:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/deepe/c/c;->c(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->h:I

    :goto_0
    return-void
.end method

.method private final askForFinish()V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/UZAppActivity$5;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$5;-><init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V

    invoke-static {p0, v0}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/external/c$c;)V

    return-void
.end method

.method private final cleanEngine(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->l()V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->b:Lcom/uzmap/pkg/uzcore/h/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/t;->removeAllViews()V

    :cond_1
    invoke-static {}, Lcom/uzmap/pkg/openapi/APIEventCenter;->get()Lcom/uzmap/pkg/openapi/APIEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/openapi/APIEventCenter;->removeAllHtml5EventListener(Landroid/content/Context;)V

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/a;->a()V

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/external/i;->a(Landroid/app/Activity;)V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->a:Z

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d;->p()V

    return-void

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d;->d()V

    :cond_4
    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->m:Lcom/uzmap/pkg/uzcore/UZAppActivity$c;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/d;->c(Lcom/uzmap/pkg/uzcore/ac;)V

    return-void
.end method

.method private final dispatchKeyBackPress(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->d:Lcom/uzmap/pkg/uzcore/UZAppActivity$b;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->requestHideCustomView()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/deepe/c/k/h;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/uzmap/pkg/uzcore/p$a;->a:Lcom/uzmap/pkg/uzcore/p$a;

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->shouldOverrideKeyPress(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    sget-object v2, Lcom/uzmap/pkg/uzcore/p$a;->a:Lcom/uzmap/pkg/uzcore/p$a;

    invoke-virtual {v0, v2, p1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/p$a;Z)V

    return v1

    :cond_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/e;->n()Z

    move-result p1

    return p1
.end method

.method private final finishNow()V
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->finish()V

    return-void
.end method

.method private handlderIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->isEmptyIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseAppParam(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/e;->c(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/deepe/c/a/e;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v1, v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v0, "noticeclicked"

    if-ne p2, v0, :cond_3

    const-string v0, "api_arguments"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_3
    const-string v0, "appintent"

    if-ne p2, v0, :cond_4

    const-string p2, "appParam"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private final initializeEngine(ZLcom/uzmap/pkg/uzcore/b/d;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_1

    sget-object p1, Lcom/deepe/b;->O:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    sget-object p1, Lcom/deepe/b;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p3, p1

    move-object p1, p2

    :goto_0
    invoke-direct {p0, p1, p3, p2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->warnAndForceFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean p1, p2, Lcom/uzmap/pkg/uzcore/b/d;->i:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->e:Lcom/uzmap/pkg/uzcore/f/e;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/f/e;->a()V

    :cond_2
    iget-boolean p1, p2, Lcom/uzmap/pkg/uzcore/b/d;->m:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/uzmap/pkg/b/a/i;->a(Landroid/content/Context;Z)V

    iget-boolean p1, p2, Lcom/uzmap/pkg/uzcore/b/d;->m:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->f:Z

    :cond_3
    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/b/d;->h()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/uzmap/pkg/b/a/i;->a(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->b:Lcom/uzmap/pkg/uzcore/h/t;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/b/d;->h()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/uzmap/pkg/uzcore/h/t;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    iget-object p3, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->b:Lcom/uzmap/pkg/uzcore/h/t;

    invoke-virtual {p1, p3}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/h/t;)V

    new-instance p1, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;

    invoke-direct {p1, p0, p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;-><init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->d:Lcom/uzmap/pkg/uzcore/UZAppActivity$b;

    iget-object p3, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p3, p1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/e$a;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseAppParam(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/uzmap/pkg/uzcore/e;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/b/d;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/e;->i()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->doCloudManager()V

    return-void
.end method

.method private final initializeNativeUI()V
    .locals 2

    invoke-static {p0}, Lcom/uzmap/pkg/b/a/i;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->j()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/uzmap/pkg/uzcore/b/d;->m:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/uzmap/pkg/b/a/i;->b(Landroid/app/Activity;Z)V

    iget-boolean v0, v0, Lcom/uzmap/pkg/uzcore/b/d;->m:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->f:Z

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/h/t;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/h/t;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->b:Lcom/uzmap/pkg/uzcore/h/t;

    new-instance v1, Lcom/uzmap/pkg/uzcore/UZAppActivity$d;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$d;-><init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/h/t;->a(Lcom/uzmap/pkg/uzcore/h/t$a;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->b:Lcom/uzmap/pkg/uzcore/h/t;

    invoke-static {}, Lcom/deepe/c/b/e;->a()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/external/i;->a(Landroid/view/Window;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->showLaunchView(Z)V

    return-void
.end method

.method private isHoldAppidle()Z
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onLaunchViewClick(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/e;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private rebootApp(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->cleanEngine(Z)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->setupPackageBoot()V

    return-void
.end method

.method private removeLaunchView(ZLcom/uzmap/pkg/uzcore/c;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->e:Lcom/uzmap/pkg/uzcore/f/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/f/e;->a(ZLcom/uzmap/pkg/uzcore/c;)V

    return-void
.end method

.method private saveOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->i:I

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/z;->a(I)V

    return-void
.end method

.method private saveUiMode(I)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->j:I

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/z;->b(I)V

    return-void
.end method

.method private setupPackageBoot()V
    .locals 4

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->initializeNativeUI()V

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    new-instance v1, Lcom/deepe/b/d;

    new-instance v2, Lcom/uzmap/pkg/uzcore/UZAppActivity$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/uzmap/pkg/uzcore/UZAppActivity$a;-><init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;Lcom/uzmap/pkg/uzcore/UZAppActivity$a;)V

    invoke-direct {v1, v2}, Lcom/deepe/b/d;-><init>(Lcom/deepe/b/d$a;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->l:Lcom/deepe/b/d;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/d;->a(Lcom/deepe/b/d/e;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->l:Lcom/deepe/b/d;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/d;->a(Lcom/deepe/b/d/d;)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/UZAppActivity$c;

    invoke-direct {v1, p0, v3}, Lcom/uzmap/pkg/uzcore/UZAppActivity$c;-><init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;Lcom/uzmap/pkg/uzcore/UZAppActivity$c;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->m:Lcom/uzmap/pkg/uzcore/UZAppActivity$c;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/d;->a(Lcom/uzmap/pkg/uzcore/ac;)V

    return-void
.end method

.method private shouldOverrideKeyPress(Lcom/uzmap/pkg/uzcore/p$a;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private showLaunchView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->e:Lcom/uzmap/pkg/uzcore/f/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/f/e;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/f/e;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->e:Lcom/uzmap/pkg/uzcore/f/e;

    new-instance v1, Lcom/uzmap/pkg/uzcore/UZAppActivity$4;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$4;-><init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/f/e;->a(Lcom/uzmap/pkg/uzcore/f/e$a;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->e:Lcom/uzmap/pkg/uzcore/f/e;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/f/e;->a(Z)V

    return-void
.end method

.method private final warnAndForceFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/UZAppActivity$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/UZAppActivity$6;-><init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/deepe/c/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected final addH5EventListener(Lcom/uzmap/pkg/openapi/Html5EventListener;)V
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/openapi/APIEventCenter;->get()Lcom/uzmap/pkg/openapi/APIEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->addHtml5EventListener(Landroid/content/Context;Lcom/uzmap/pkg/openapi/Html5EventListener;)V

    return-void
.end method

.method public askPrivacyAgreed()Z
    .locals 1

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/f/d;->a(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isHoldAppidle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->appidle(ZI)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public doCloudManager()V
    .locals 3

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->e()V

    return-void

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/UZAppActivity$8;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$8;-><init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;)V

    const-wide/16 v1, 0x5dc

    invoke-static {v0, v1, v2}, Lcom/deepe/c/c;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public doPrivacyAgreed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->g:Z

    invoke-static {}, Lcom/uzmap/pkg/uzcore/f/d;->b()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->n:Lcom/uzmap/pkg/uzcore/b/e;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->n:Lcom/uzmap/pkg/uzcore/b/e;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/e;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->doCloudManager()V

    :goto_0
    return-void
.end method

.method protected final evaluateScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->k:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/d;->d(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected abstract isFromNativeSDK()Z
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/e;->a(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->dispatchKeyBackPress(Z)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->i:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->saveOrientation(I)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->b:Lcom/uzmap/pkg/uzcore/h/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/t;->a()V

    :cond_1
    iget v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->j:I

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-static {p1}, Lcom/uzmap/pkg/b/a/i;->a(I)I

    move-result p1

    if-eq v0, p1, :cond_2

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->saveUiMode(I)V

    :cond_2
    return-void
.end method

.method protected abstract onConsoleMessage(Landroid/webkit/ConsoleMessage;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/external/i;->b(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->k:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->a:Z

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->getRequestedOrientation()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->saveOrientation(I)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->setupPackageBoot()V

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uzmap/pkg/uzcore/d;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->cleanEngine(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->isFromNativeSDK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method

.method protected abstract onHtml5AccessRequest(Lcom/uzmap/pkg/openapi/WebViewProvider;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/p;->a(I)Lcom/uzmap/pkg/uzcore/p$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->shouldOverrideKeyPress(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result p1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->dispatchKeyBackPress(Z)Z

    move-result p1

    return p1

    :cond_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/p;->a(I)Lcom/uzmap/pkg/uzcore/p$a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->shouldOverrideKeyPress(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/p$a;Z)V

    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/p;->a(I)Lcom/uzmap/pkg/uzcore/p$a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->shouldOverrideKeyPress(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/p$a;Z)V

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "empty"

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->handlderIntent(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract onPageFinished(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V
.end method

.method protected abstract onPageStarted(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->o()V

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->d:Lcom/uzmap/pkg/uzcore/UZAppActivity$b;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a(Lcom/uzmap/pkg/uzcore/UZAppActivity$b;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/deepe/c/c;->c(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->q()V

    :cond_2
    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/d;->c(Landroid/app/Activity;)V

    return-void
.end method

.method protected abstract onProgressChanged(Lcom/uzmap/pkg/openapi/WebViewProvider;I)V
.end method

.method protected abstract onReceivedError(Lcom/uzmap/pkg/openapi/WebViewProvider;ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method protected abstract onReceivedTitle(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Lcom/uzmap/pkg/uzcore/ab;

    invoke-direct {v3, p0}, Lcom/uzmap/pkg/uzcore/ab;-><init>(Landroid/app/Activity;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/uzmap/pkg/uzcore/e;->a(I[Ljava/lang/String;[I[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->c:Lcom/uzmap/pkg/uzcore/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->p()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->d:Lcom/uzmap/pkg/uzcore/UZAppActivity$b;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a(Lcom/uzmap/pkg/uzcore/UZAppActivity$b;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->r()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->p:Ljava/lang/Runnable;

    const-wide/32 v1, 0x2bf20

    invoke-static {v0, v1, v2}, Lcom/deepe/c/c;->a(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZAppActivity;->d:Lcom/uzmap/pkg/uzcore/UZAppActivity$b;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/UZAppActivity$b;->a(Lcom/uzmap/pkg/uzcore/UZAppActivity$b;Z)V

    :cond_2
    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/d;->b(Landroid/app/Activity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected abstract onSmartUpdateFinish(Lcom/uzmap/pkg/openapi/IncPackage;)Z
.end method

.method protected final openAssign(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/UZAppActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity$7;-><init>(Lcom/uzmap/pkg/uzcore/UZAppActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/deepe/c/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final removeH5EventListener(Lcom/uzmap/pkg/openapi/Html5EventListener;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/openapi/APIEventCenter;->get()Lcom/uzmap/pkg/openapi/APIEventCenter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uzmap/pkg/openapi/APIEventCenter;->removeAllHtml5EventListener(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/openapi/APIEventCenter;->get()Lcom/uzmap/pkg/openapi/APIEventCenter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->removeHtml5EventListener(Landroid/content/Context;Lcom/uzmap/pkg/openapi/Html5EventListener;)V

    :goto_0
    return-void
.end method

.method protected final sendEventToH5(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/openapi/APIEventCenter;->get()Lcom/uzmap/pkg/openapi/APIEventCenter;

    move-result-object v0

    new-instance v1, Lcom/uzmap/pkg/openapi/EventEntity;

    invoke-direct {v1, p1, p2}, Lcom/uzmap/pkg/openapi/EventEntity;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, p0, v1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->sendEvent(Landroid/content/Context;Lcom/uzmap/pkg/openapi/EventEntity;)V

    return-void
.end method

.method protected abstract shouldForbiddenAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected abstract shouldOverrideUrlLoading(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)Z
.end method
