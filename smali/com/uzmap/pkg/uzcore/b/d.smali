.class public Lcom/uzmap/pkg/uzcore/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Lcom/uzmap/pkg/uzcore/b/i;

.field private F:Lcom/uzmap/pkg/uzcore/b/c;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/k/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

.field private I:Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

.field private J:Lcom/uzmap/pkg/uzcore/b/a;

.field private K:Z

.field private L:Lcom/uzmap/pkg/uzcore/h/x;

.field private M:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

.field private N:Z

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Ljava/lang/Integer;

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Lcom/uzmap/pkg/uzcore/uzmodule/b/u;

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/uzmap/pkg/uzcore/b/g;",
            ">;"
        }
    .end annotation
.end field

.field public z:Lcom/uzmap/pkg/uzcore/uzmodule/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->e:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->f:Z

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->g:Z

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->h:Z

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->i:Z

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->j:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->k:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->l:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->m:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->n:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->t:Z

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->K:Z

    new-instance v0, Lcom/uzmap/pkg/uzcore/b/a;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/b/a;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->J:Lcom/uzmap/pkg/uzcore/b/a;

    new-instance v0, Lcom/uzmap/pkg/uzcore/b/c;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/b/c;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->F:Lcom/uzmap/pkg/uzcore/b/c;

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->j()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->r()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, v0, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lcom/uzmap/pkg/uzcore/b/d;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/b/d;-><init>()V

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->i()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, v0, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    const-string p1, "1.0.0"

    iput-object p1, v0, Lcom/uzmap/pkg/uzcore/b/d;->b:Ljava/lang/String;

    const-string p1, "name"

    const-string v1, "FromURL"

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "href"

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "author"

    const-string v1, "NativeDeveloper"

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "file:///android_asset/widget/index.html"

    iput-object p1, v0, Lcom/uzmap/pkg/uzcore/b/d;->A:Ljava/lang/String;

    const-string p1, "file:///android_asset/widget/"

    iput-object p1, v0, Lcom/uzmap/pkg/uzcore/b/d;->d:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/b/d;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method public static i(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 3

    new-instance v0, Lcom/uzmap/pkg/uzcore/b/d;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/b/d;-><init>()V

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    const-string v1, "1.0.0"

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/b/d;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/uzmap/pkg/uzcore/b/d;->t:Z

    const-string v1, "name"

    const-string v2, "FromURL"

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "href"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "author"

    const-string v2, "NativeDeveloper"

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/b/d;->b(Ljava/lang/String;)V

    const-string p0, "file:///android_asset/widget/index.html"

    iput-object p0, v0, Lcom/uzmap/pkg/uzcore/b/d;->A:Ljava/lang/String;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/uzmap/pkg/uzcore/b/d;->i:Z

    const-string p0, "file:///android_asset/widget/"

    iput-object p0, v0, Lcom/uzmap/pkg/uzcore/b/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static j(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/b/f;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p0

    return-object p0
.end method

.method private k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->l()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/i/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private s()Lcom/uzmap/pkg/uzcore/h/x;
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->L:Lcom/uzmap/pkg/uzcore/h/x;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/b/d;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    new-instance v1, Lcom/uzmap/pkg/uzcore/h/x;

    invoke-direct {v1, v0, v2}, Lcom/uzmap/pkg/uzcore/h/x;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/UZWebView;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->L:Lcom/uzmap/pkg/uzcore/h/x;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/h/x;->b(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->L:Lcom/uzmap/pkg/uzcore/h/x;

    const-string v1, "root"

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/h/x;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->z:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->L:Lcom/uzmap/pkg/uzcore/h/x;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/h/x;->a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V

    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->L:Lcom/uzmap/pkg/uzcore/h/x;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->l()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/h/x;->a(Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->L:Lcom/uzmap/pkg/uzcore/h/x;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/h/x;->setBaseUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->L:Lcom/uzmap/pkg/uzcore/h/x;

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->t:Z

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/b/d;->D:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->l()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzcore/h/x;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->L:Lcom/uzmap/pkg/uzcore/h/x;

    return-object v0
.end method

.method private t()Lcom/uzmap/pkg/uzcore/uzmodule/b/v;
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->M:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->M:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->M:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    const-string v1, "root"

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->M:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->p()Z

    move-result v1

    iput-boolean v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->Y:Z

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->M:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->setBaseUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->M:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->t:Z

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/b/d;->D:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->l()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->z:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->M:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->M:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    return-object v0
.end method

.method private u()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/x;->s(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".js"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/w;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->A:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->G:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->G:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/deepe/c/k/e;->a(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/k/e$a;

    iget-object v2, v1, Lcom/deepe/c/k/e$a;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/deepe/c/k/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/deepe/c/k/e$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/h/x;)V
    .locals 3

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->L:Lcom/uzmap/pkg/uzcore/h/x;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->l()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/h/x;->a(Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->L:Lcom/uzmap/pkg/uzcore/h/x;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/h/x;->setBaseUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->L:Lcom/uzmap/pkg/uzcore/h/x;

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->t:Z

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->D:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->l()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/h/x;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->N:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->F:Lcom/uzmap/pkg/uzcore/b/c;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->E:Lcom/uzmap/pkg/uzcore/b/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/b/i;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/b/i;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->E:Lcom/uzmap/pkg/uzcore/b/i;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->E:Lcom/uzmap/pkg/uzcore/b/i;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/b/j;)V
    .locals 1

    const-string v0, "pageBounce"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->e:Z

    :cond_0
    const-string v0, "avm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->n:Z

    goto/16 :goto_1

    :cond_1
    const-string v0, "appBackground"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->F:Lcom/uzmap/pkg/uzcore/b/c;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/b/c;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "windowBackground"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->F:Lcom/uzmap/pkg/uzcore/b/c;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/b/c;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "frameBackgroundColor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "frameBackground"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const-string v0, "hScrollBarEnabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->f:Z

    goto/16 :goto_1

    :cond_5
    const-string v0, "vScrollBarEnabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->g:Z

    goto/16 :goto_1

    :cond_6
    const-string v0, "autoLaunch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->i:Z

    goto/16 :goto_1

    :cond_7
    const-string v0, "autoUpdate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->j:Z

    goto/16 :goto_1

    :cond_8
    const-string v0, "smartUpdate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->k:Z

    goto/16 :goto_1

    :cond_9
    const-string v0, "debug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->l:Z

    goto/16 :goto_1

    :cond_a
    const-string v0, "statusBarAppearance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->m:Z

    goto/16 :goto_1

    :cond_b
    const-string v0, "userAgent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/b/d;->v:Ljava/lang/String;

    goto/16 :goto_1

    :cond_c
    const-string v0, "customRefreshHeader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/b/d;->u:Ljava/lang/String;

    goto/16 :goto_1

    :cond_d
    const-string v0, "forbiddenSchemes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->J:Lcom/uzmap/pkg/uzcore/b/a;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/b/a;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const-string v0, "checkSslTrusted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->h:Z

    invoke-static {p1}, Lcom/deepe/c/k/f;->a(Z)V

    goto/16 :goto_1

    :cond_f
    const-string v0, "privacyPromptMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "custom"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->p:Z

    goto/16 :goto_1

    :cond_10
    const-string v0, "privacyPromptVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/b/d;->q:Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    const-string v0, "ajaxCorePoolSize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p2}, Lcom/deepe/c/i/e;->c(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/deepe/c/k/f;->a(I)V

    goto :goto_1

    :cond_12
    const-string v0, "lowEndMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/deepe/c/b;->b(Z)V

    goto :goto_1

    :cond_13
    const-string v0, "font"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "family"

    invoke-virtual {p3, p1}, Lcom/uzmap/pkg/uzcore/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_18

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_18

    const-string p3, "\\|"

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aget-object p2, p2, p3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_14
    const-string p3, "colorEdgeEffect"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    invoke-static {p2}, Lcom/deepe/c/i/e;->e(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->o:Ljava/lang/Integer;

    goto :goto_1

    :cond_15
    const-string p3, "statisticEnabled"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/b/d;->r:Ljava/lang/String;

    goto :goto_1

    :cond_16
    const-string p3, "adEnabled"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/b/d;->s:Ljava/lang/String;

    goto :goto_1

    :cond_17
    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->F:Lcom/uzmap/pkg/uzcore/b/c;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/b/c;->b(Ljava/lang/String;)V

    :cond_18
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->y:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->y:Ljava/util/Hashtable;

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->y:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/b/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3}, Lcom/uzmap/pkg/uzcore/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/uzmap/pkg/uzcore/b/g;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/b/g;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p3}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p2, p3}, Lcom/uzmap/pkg/uzcore/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/b/d;->y:Ljava/util/Hashtable;

    invoke-virtual {p2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->B:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/deepe/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    invoke-static {p1}, Lcom/deepe/c/i/x;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/f;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/f;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->z:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/f;->a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/b/d;->z:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->G:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->G:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->G:Ljava/util/List;

    new-instance v1, Lcom/deepe/c/k/e$a;

    invoke-direct {v1, p1, p2}, Lcom/deepe/c/k/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Lcom/uzmap/pkg/uzcore/uzmodule/b/v;
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->N:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/b/d;->s()Lcom/uzmap/pkg/uzcore/h/x;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/b/d;->s()Lcom/uzmap/pkg/uzcore/h/x;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/b/d;->t()Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->E:Lcom/uzmap/pkg/uzcore/b/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/b/i;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/b/i;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->E:Lcom/uzmap/pkg/uzcore/b/i;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->E:Lcom/uzmap/pkg/uzcore/b/i;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/b/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->r()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/uzmap/pkg/uzcore/b/a;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->J:Lcom/uzmap/pkg/uzcore/b/a;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/g;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->y:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzcore/b/g;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->x:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->x:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->d()Lcom/uzmap/pkg/uzcore/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/a;->a()Z

    move-result v0

    return v0
.end method

.method public f()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->F:Lcom/uzmap/pkg/uzcore/b/c;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->J:Lcom/uzmap/pkg/uzcore/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/b/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->F:Lcom/uzmap/pkg/uzcore/b/c;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->d()Lcom/uzmap/pkg/uzcore/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/b/a;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->F:Lcom/uzmap/pkg/uzcore/b/c;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/c;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 3

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/deepe/c/i/x;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->k:Z

    if-eqz v0, :cond_3

    const-string v0, "widget/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/b/d;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ".html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/deepe/c/i/x;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/w;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "config.xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/b/d;->j(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p1

    goto :goto_2

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->r()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/b/d;->b(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/b/d;->b(Ljava/lang/String;)V

    return-object p0

    :cond_5
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/b/f;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public i()Lcom/uzmap/pkg/uzcore/b;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->w:Lcom/uzmap/pkg/uzcore/uzmodule/b/u;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/b;->f()Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->d:Lcom/uzmap/pkg/uzcore/b;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->D:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->d:Ljava/lang/String;

    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->D:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->I:Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->y:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;-><init>(Ljava/util/Hashtable;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->I:Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->I:Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;->appName:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->I:Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->I:Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->I:Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;->version:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->I:Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    const-string v1, "description"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;->description:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->I:Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    const-string v1, "author"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;->author:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->I:Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    const-string v1, "email"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;->authorEmail:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->I:Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    const-string v1, "href"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;->authorHref:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->I:Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;->iconPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->I:Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;->widgetPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->I:Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->l:Z

    iput-boolean v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;->debug:Z

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->I:Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    return-object v0
.end method

.method public l()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->H:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->H:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->H:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->H:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->version:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->H:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    const-string v1, "description"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->description:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->H:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    const-string v1, "author"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->author:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->H:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    const-string v1, "email"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->authorEmail:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->H:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    const-string v1, "href"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->authorHref:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->H:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->iconPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->H:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->widgetPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->H:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzcore/b/d;->l:Z

    iput-boolean v1, v0, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->debug:Z

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->H:Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    return-object v0
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->v:Ljava/lang/String;

    const-string v1, "widget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/k/k;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->v:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/b/d;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/deepe/c/k/k;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/b/d;->v:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->c()Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/b/d;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/n;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/b/d;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/n;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "json"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/b/d;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "avm"

    goto :goto_0

    :cond_1
    const-string v0, "html"

    :goto_0
    return-object v0
.end method

.method protected r()Lcom/uzmap/pkg/uzcore/b/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/b/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/b/d;->M:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/b/d;->L:Lcom/uzmap/pkg/uzcore/h/x;

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/b/d;->w:Lcom/uzmap/pkg/uzcore/uzmodule/b/u;

    return-object v0
.end method
