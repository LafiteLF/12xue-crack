.class public Lcom/uzmap/pkg/uzcore/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/e$a;
    }
.end annotation


# static fields
.field static b:Z

.field private static o:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/uzmap/pkg/uzcore/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lcom/uzmap/pkg/uzcore/i/b/i;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Lcom/uzmap/pkg/uzcore/h/t;

.field private f:Ljava/lang/String;

.field private g:Lcom/uzmap/pkg/uzcore/e$a;

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/uzmap/pkg/uzcore/uzmodule/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/uzmap/pkg/uzcore/h;

.field private k:Lcom/uzmap/pkg/uzcore/d;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzcore/e;->o:Ljava/util/Hashtable;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/uzmap/pkg/uzcore/e;->b:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->k:Lcom/uzmap/pkg/uzcore/d;

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/b/i;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/i/b/i;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->a:Lcom/uzmap/pkg/uzcore/i/b/i;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/i/b/i;->a(Landroid/content/Context;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->h:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->i:Landroid/util/SparseArray;

    return-void
.end method

.method private D()Z
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/z;->k()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/e;->d(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/uzmap/pkg/uzcore/e;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/e;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/uzmap/pkg/uzcore/e;->a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/e;)V

    :cond_1
    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/e;)V
    .locals 1

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->activityToStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/uzmap/pkg/uzcore/e;->o:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->activityToStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/uzmap/pkg/uzcore/e;->o:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static d(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;
    .locals 1

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->activityToStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/uzmap/pkg/uzcore/e;->o:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uzmap/pkg/uzcore/e;

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/e$a;->requestAppInImmerseState()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final B()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/e$a;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final C()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/e$a;->onHideCustomView()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a()Lcom/uzmap/pkg/uzcore/h/t;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->e:Lcom/uzmap/pkg/uzcore/h/t;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->requestOrientation(I)Z

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->deliverLog(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->onRequestFocus(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/a;I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->i()Lcom/uzmap/pkg/openapi/WebViewProvider;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->deliverProgressChanged(Lcom/uzmap/pkg/openapi/WebViewProvider;I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    iget-object v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/uzmap/pkg/uzcore/e$a;->deliverHtml5Event(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V

    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->i()Lcom/uzmap/pkg/openapi/WebViewProvider;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->deliverPageFinished(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->i()Lcom/uzmap/pkg/openapi/WebViewProvider;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/e$a;->deliverPageStarted(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/b/d;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/h;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/h;-><init>(Lcom/uzmap/pkg/uzcore/e;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/b/d;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    return-void
.end method

.method protected a(Lcom/uzmap/pkg/uzcore/g;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/g;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/h/n$a;Z)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/n;->a(Landroid/app/Activity;)Lcom/uzmap/pkg/uzcore/h/n;

    move-result-object v0

    iget v1, p1, Lcom/uzmap/pkg/uzcore/h/n$a;->a:I

    iget-object v2, p1, Lcom/uzmap/pkg/uzcore/h/n$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/h/n;->a(ILjava/lang/String;)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/e$2;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/uzcore/e$2;-><init>(Lcom/uzmap/pkg/uzcore/e;Lcom/uzmap/pkg/uzcore/h/n$a;)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/h/n;->a(Lcom/uzmap/pkg/uzcore/h/n$b;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->d()Z

    move-result p1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->g()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v1

    iget-object v1, v1, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/h/n;->a(ZLjava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/h/n;->a(Z)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/n;->isShown()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/n;->e()V

    :cond_1
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/h/t;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->e:Lcom/uzmap/pkg/uzcore/h/t;

    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/i/j;)V
    .locals 4

    invoke-static {p1}, Lcom/deepe/d/a;->a(Lcom/uzmap/pkg/uzcore/i/j;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/i/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/i/j;->a()I

    move-result v1

    invoke-static {v1, v0}, Lcom/deepe/d/a;->c(ILjava/lang/String;)V

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/e;->e(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/e;->b(Lcom/uzmap/pkg/uzcore/i/j;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->c()Z

    move-result p1

    const-string v2, "app3c"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/h/n;->a(Landroid/app/Activity;)Lcom/uzmap/pkg/uzcore/h/n;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v0}, Lcom/uzmap/pkg/uzcore/h/n;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/e;->D()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_4

    return-void

    :cond_4
    invoke-static {p1}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/h;->a(Landroid/app/Activity;)Lcom/uzmap/pkg/b/b/h;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v0}, Lcom/uzmap/pkg/b/b/h;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/p$a;Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/p$a;Z)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/a;IZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/uzmap/pkg/uzcore/e;->i:Landroid/util/SparseArray;

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->i:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/u;Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->c:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/e;->a(Z)Z

    move-result p1

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/u;Z)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h;->a()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    new-instance v2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-direct {v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>()V

    const-string v3, "cloud_start_ad"

    iput-object v3, v2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->w:Ljava/lang/String;

    iput-object v1, v2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->setBaseUrl(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/uzmap/pkg/uzcore/b/d;->t:Z

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->l()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    iget-object v0, v2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/w;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h;->a(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, v2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->A:Z

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->J:Z

    iput-boolean v0, v2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->I:Z

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(Z)V

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->h()V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->f:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>()V

    const-string v1, "msmAuth"

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->w:Ljava/lang/String;

    iput-object p1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->A:Z

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->J:Z

    iput-boolean p1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->I:Z

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->g()V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/h;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->i:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_0
    if-lt p3, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/uzmodule/a;

    invoke-interface {v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/a;->onNewIntent(Landroid/content/Intent;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V

    iput-object p1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    iput-object p2, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->b:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/deepe/d/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->requestAppidle(ZI)V

    :cond_0
    return-void
.end method

.method public final a(ZLcom/deepe/b/b/c;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/h;->a(ZLcom/deepe/b/b/c;)V

    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/h;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->requestFullScreen(ZZ)Z

    :cond_0
    return-void
.end method

.method public final a(IILandroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x7596

    if-ne p1, v1, :cond_0

    invoke-static {p2, p3}, Lcom/deepe/c/f/c;->a(ILandroid/content/Intent;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/e;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/e;->h:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final varargs a(I[Ljava/lang/String;[I[Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/deepe/c/f/c;->a(I[Ljava/lang/String;[I[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/e$a;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->onShowFileChooser(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/deepe/sdk/ViewEntity;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->onCloseWindow(Lcom/deepe/sdk/ViewEntity;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/deepe/sdk/ViewEntity;Lcom/deepe/sdk/OptResult;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->onCreateWindow(Lcom/deepe/sdk/ViewEntity;Lcom/deepe/sdk/OptResult;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/a;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/uzmap/pkg/uzcore/e$a;->deliverReceivedError(Lcom/uzmap/pkg/uzcore/a;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/a;Lcom/deepe/sdk/ProcessGoneDetail;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->onRenderProcessGone(Lcom/uzmap/pkg/uzcore/a;Lcom/deepe/sdk/ProcessGoneDetail;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->i()Lcom/uzmap/pkg/openapi/WebViewProvider;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->requestNativeAccess(Lcom/uzmap/pkg/openapi/WebViewProvider;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 7

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-wide v5, p6

    invoke-interface/range {v0 .. v6}, Lcom/uzmap/pkg/uzcore/e$a;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/i/l;I)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->requestShowCustomView(Lcom/uzmap/pkg/uzcore/i/l;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/uzmap/pkg/uzcore/p$a;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;Landroid/content/Intent;IZ)Z
    .locals 1

    if-eqz p1, :cond_0

    if-lez p3, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2, p3, p4}, Lcom/uzmap/pkg/uzcore/e$a;->requestStartActivity(Landroid/content/Intent;IZ)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->onApiAlert(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/e$a;->onJsAlert(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->requestFinishApp(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(ZLcom/uzmap/pkg/uzcore/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->requestRemoveLaunchView(ZLcom/uzmap/pkg/uzcore/c;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/uzmap/pkg/uzcore/b/d;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h;->b(Lcom/uzmap/pkg/uzcore/b/d;)V

    return-void
.end method

.method public final b(Lcom/uzmap/pkg/uzcore/i/j;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->deliverConsoleMessage(Lcom/uzmap/pkg/uzcore/i/j;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/u;Z)V

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/e$1;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/e$1;-><init>(Lcom/uzmap/pkg/uzcore/e;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/deepe/c/c;->b(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->requestKeepScreenOn(Z)Z

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->g()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/uzmap/pkg/uzcore/b/d;->l:Z

    return v0
.end method

.method public final b(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://ops.fun.mipm/sync"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    const-string p2, "data_sync"

    invoke-virtual {p0, p2, p1}, Lcom/uzmap/pkg/uzcore/e;->a(Ljava/lang/String;Z)V

    return p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->i()Lcom/uzmap/pkg/openapi/WebViewProvider;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->requestShouldOverrideUrlLoading(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->onApiConfirm(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/e$a;->requestShouldForbiddenAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->h()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->g()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v0, "A6965066952332"

    :goto_2
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/n;->a(Landroid/app/Activity;)Lcom/uzmap/pkg/uzcore/h/n;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lcom/uzmap/pkg/uzcore/h/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return p1
.end method

.method public b(ZLcom/uzmap/pkg/uzcore/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->requestShowLaunchView(ZLcom/uzmap/pkg/uzcore/c;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->i()Lcom/uzmap/pkg/openapi/WebViewProvider;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->onReceivedPageTitle(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->l:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->onApiPrompt(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/e$a;->requestForceFinishAppWidthAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->requestConnectivityListen(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Z)I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->requestVisualHeight(Z)I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->e:Lcom/uzmap/pkg/uzcore/h/t;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/h/t;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()Z
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->g()Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/w;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->g()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/b/d;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->a:Lcom/uzmap/pkg/uzcore/i/b/i;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/i/b/i;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final e(Z)I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->requestVisualWidth(Z)I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/e;->e:Lcom/uzmap/pkg/uzcore/h/t;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/h/t;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->deliverJsError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/z;->j()Z

    move-result v0

    return v0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->requestRebootApp(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g()Lcom/uzmap/pkg/uzcore/b/d;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h;->a()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->k:Lcom/uzmap/pkg/uzcore/d;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->j()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "appintent"

    if-ne p1, v0, :cond_1

    sget-boolean v0, Lcom/uzmap/pkg/uzcore/e;->b:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uzmap/pkg/uzcore/e;->b:Z

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->requestHandlderIntent(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public h()Lcom/uzmap/pkg/uzcore/b/d;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h;->b()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->k:Lcom/uzmap/pkg/uzcore/d;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->j()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/e$a;->onLoadResource(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h;->d()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->j()V

    return-void
.end method

.method public j()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/i/b/j;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public k()Z
    .locals 2

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/e;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/e;->m:Z

    return v0

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/z;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/deepe/sdk/DeepSetting;->debugEnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/e;->D()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/e;->m:Z

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/e;->n:Z

    return v0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/deepe/c/k/h;->b()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h;->i()V

    invoke-static {}, Lcom/uzmap/pkg/uzcore/i/a/d;->c()V

    invoke-static {}, Lcom/uzmap/pkg/a/b;->a()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->c(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/uzmap/pkg/uzcore/e;->b:Z

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/e;->d:Z

    return v0
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h;->e()Z

    move-result v0

    return v0
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h;->f()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/n;->a(Landroid/app/Activity;)Lcom/uzmap/pkg/uzcore/h/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/n;->b()V

    :cond_2
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/e;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/h;->a(Landroid/app/Activity;)Lcom/uzmap/pkg/b/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/h;->g()V

    :cond_4
    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h;->g()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/n;->a(Landroid/app/Activity;)Lcom/uzmap/pkg/uzcore/h/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/n;->c()V

    :cond_2
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/e;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/h;->a(Landroid/app/Activity;)Lcom/uzmap/pkg/b/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/h;->h()V

    :cond_4
    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h;->h()V

    return-void
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "{}"

    :goto_0
    return-object v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->j:Lcom/uzmap/pkg/uzcore/h;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h;->c()Z

    move-result v0

    return v0
.end method

.method public t()V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/n;->a(Landroid/app/Activity;)Lcom/uzmap/pkg/uzcore/h/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/n;->d()V

    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->k:Lcom/uzmap/pkg/uzcore/d;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->k:Lcom/uzmap/pkg/uzcore/d;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/e$a;->onPrivacyAgreed()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->c:Landroid/content/Context;

    instance-of v1, v0, Lcom/uzmap/pkg/uzcore/UZAppActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->doPrivacyAgreed()V

    :cond_1
    return-void
.end method

.method public final x()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/e;->d:Z

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/e;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/e;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/e;->f:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/e$a;->onFirstPageFinish()V

    :cond_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/e;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/uzmap/pkg/uzcore/h/n$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/uzcore/h/n$a;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/h/n$a;Z)V

    :cond_2
    return-void
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/e$a;->requestPageTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final z()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e;->g:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/e$a;->requestHideCustomView()Z

    :cond_0
    return-void
.end method
