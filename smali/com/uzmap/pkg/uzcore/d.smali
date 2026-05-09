.class public Lcom/uzmap/pkg/uzcore/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/d$a;,
        Lcom/uzmap/pkg/uzcore/d$b;
    }
.end annotation


# static fields
.field private static h:Z = true

.field private static j:Lcom/uzmap/pkg/uzcore/d;


# instance fields
.field private a:Lcom/uzmap/pkg/uzcore/uzmodule/e;

.field private b:Lcom/uzmap/pkg/uzcore/e/c;

.field private c:Landroid/content/Context;

.field private d:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

.field private e:Lcom/deepe/b/c;

.field private f:Z

.field private g:Lcom/deepe/c/i/p$a;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/uzmap/pkg/uzcore/b/d;

.field private l:Lcom/uzmap/pkg/uzcore/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/deepe/a;->a(Landroid/content/Context;)Lcom/deepe/a;

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/d;)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->x()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/uzmap/pkg/uzcore/d;
    .locals 2

    sget-object v0, Lcom/uzmap/pkg/uzcore/d;->j:Lcom/uzmap/pkg/uzcore/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SuperWebview do not initialize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/d;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/d;->j:Lcom/uzmap/pkg/uzcore/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/d;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uzmap/pkg/uzcore/d;->j:Lcom/uzmap/pkg/uzcore/d;

    :cond_0
    sget-object p0, Lcom/uzmap/pkg/uzcore/d;->j:Lcom/uzmap/pkg/uzcore/d;

    return-object p0
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/d;)Lcom/uzmap/pkg/uzcore/b/d;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/d;->l:Lcom/uzmap/pkg/uzcore/b/d;

    return-object p0
.end method

.method public static b()Lcom/uzmap/pkg/uzcore/d;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/d;->j:Lcom/uzmap/pkg/uzcore/d;

    return-object v0
.end method

.method private final e(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->t()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;->attachBaseContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic s()Z
    .locals 1

    sget-boolean v0, Lcom/uzmap/pkg/uzcore/d;->h:Z

    return v0
.end method

.method private t()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->i:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d;->i()Lcom/uzmap/pkg/uzcore/uzmodule/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/e;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->i:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private u()Lcom/deepe/c/i/p$a;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->g:Lcom/deepe/c/i/p$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/i/p;->a(Landroid/content/Context;)Lcom/deepe/c/i/p$a;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->g:Lcom/deepe/c/i/p$a;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->g:Lcom/deepe/c/i/p$a;

    return-object v0
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->u()Lcom/deepe/c/i/p$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/deepe/b/e;->a(Landroid/content/Context;Lcom/deepe/c/i/p$a;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/z;->a(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/z;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/b/f/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/openapi/APIEventCenter;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/a/b;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/b/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->u()Lcom/deepe/c/i/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/p$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/deepe/c/a/b;->a()Lcom/deepe/c/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/deepe/c/a/b;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->a(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->d:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->u()Lcom/deepe/c/i/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/p$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/i/b/j;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private w()Lcom/deepe/b/c;
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->e:Lcom/deepe/b/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    new-instance v1, Lcom/uzmap/pkg/uzcore/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/uzmap/pkg/uzcore/d$a;-><init>(Lcom/uzmap/pkg/uzcore/d;Lcom/uzmap/pkg/uzcore/d$a;)V

    invoke-static {v0, v1}, Lcom/deepe/b/c;->a(Landroid/content/Context;Lcom/deepe/b/b;)Lcom/deepe/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->e:Lcom/deepe/b/c;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->e:Lcom/deepe/b/c;

    return-object v0
.end method

.method private x()Lcom/uzmap/pkg/uzcore/b/d;
    .locals 5

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->f()Z

    move-result v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/b/f;->a(Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v1

    const-string v2, "data:"

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/deepe/b;->af:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/b/d;->i(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    return-object v0

    :cond_0
    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/d;->l:Lcom/uzmap/pkg/uzcore/b/d;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->y()V

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    iget-object v3, v1, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/uzmap/pkg/uzcore/b/f;->a(Ljava/lang/String;Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v1, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/f/c;->d(Landroid/content/Context;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v4, v0}, Lcom/uzmap/pkg/uzcore/i/m;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/b/d;->b(Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/d;->k:Lcom/uzmap/pkg/uzcore/b/d;

    return-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/deepe/b/f/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/b/f;->b(Z)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v3

    if-eqz v3, :cond_3

    iput-boolean v0, v1, Lcom/uzmap/pkg/uzcore/b/d;->t:Z

    iput-boolean v0, v3, Lcom/uzmap/pkg/uzcore/b/d;->t:Z

    iput-object v2, v3, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    move-object v1, v3

    :cond_3
    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/d;->k:Lcom/uzmap/pkg/uzcore/b/d;

    return-object v1
.end method

.method private final y()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->a:Lcom/uzmap/pkg/uzcore/uzmodule/e;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/l;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/uzmodule/e;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->a:Lcom/uzmap/pkg/uzcore/uzmodule/e;

    return-void
.end method

.method private final z()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->b:Lcom/uzmap/pkg/uzcore/e/c;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/l;->a(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->b:Lcom/uzmap/pkg/uzcore/e/c;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->t()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->k:Lcom/uzmap/pkg/uzcore/b/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->k()Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;

    invoke-virtual {v2, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;->onActivityCreate(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V

    goto :goto_1
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->t()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public a(Lcom/deepe/b/d/d;)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->w()Lcom/deepe/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->w()Lcom/deepe/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepe/b/c;->a(Lcom/deepe/b/d/d;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/deepe/b/d/e;)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->w()Lcom/deepe/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->w()Lcom/deepe/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepe/b/c;->a(Lcom/deepe/b/d/e;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/ac;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/d;->b(Lcom/uzmap/pkg/uzcore/ac;)V

    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/b/e;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->k:Lcom/uzmap/pkg/uzcore/b/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d;->k:Lcom/uzmap/pkg/uzcore/b/d;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/b/e;->a(ZLcom/uzmap/pkg/uzcore/b/d;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/d$b;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/d$b;-><init>(Lcom/uzmap/pkg/uzcore/d;Lcom/uzmap/pkg/uzcore/b/e;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d$b;->start()V

    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->d:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->a(Z)V

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->t()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->k:Lcom/uzmap/pkg/uzcore/b/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->k()Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;->onActivityResume(Landroid/app/Activity;)V

    invoke-virtual {v2, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;->onActivityResume(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d;->f:Z

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-static {}, Lcom/deepe/a;->a()Lcom/deepe/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepe/a;->b(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->u()Lcom/deepe/c/i/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/p$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/deepe/d/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/uzmap/pkg/uzapp/c;->a()V

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/e;->b(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/uzmap/pkg/uzcore/d;->h:Z

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->v()V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->x()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/b/d;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/d;->d(Landroid/content/Context;)V

    return-void
.end method

.method public final b(Lcom/uzmap/pkg/uzcore/ac;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->d:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->a(Lcom/uzmap/pkg/uzcore/ac;)V

    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->c:Landroid/content/Context;

    return-object v0
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->t()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->k:Lcom/uzmap/pkg/uzcore/b/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->k()Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;->onActivityPause(Landroid/app/Activity;)V

    invoke-virtual {v2, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;->onActivityPause(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V

    goto :goto_1
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->u()Lcom/deepe/c/i/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/p$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/d;->e(Landroid/content/Context;)V

    return-void
.end method

.method public final c(Lcom/uzmap/pkg/uzcore/ac;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->d:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->b(Lcom/uzmap/pkg/uzcore/ac;)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->k:Lcom/uzmap/pkg/uzcore/b/d;

    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->t()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->k:Lcom/uzmap/pkg/uzcore/b/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->k()Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;->onActivityFinish(Landroid/app/Activity;)V

    invoke-virtual {v2, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;->onActivityFinish(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V

    goto :goto_1
.end method

.method public final d(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->t()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->k:Lcom/uzmap/pkg/uzcore/b/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->k()Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->u()Lcom/deepe/c/i/p$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/i/p$a;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v2, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;->onApplicationCreate(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/AppInfo;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/uzmodule/ApplicationDelegate;->supportMulti()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2
.end method

.method public final e()V
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/f/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->w()Lcom/deepe/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "sw startupProcess."

    invoke-static {v0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->w()Lcom/deepe/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/b/c;->d()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->w()Lcom/deepe/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->w()Lcom/deepe/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/b/c;->e()V

    :cond_0
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->d:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->d:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/uzmap/pkg/uzcore/uzmodule/e;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->a:Lcom/uzmap/pkg/uzcore/uzmodule/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->y()V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->a:Lcom/uzmap/pkg/uzcore/uzmodule/e;

    return-object v0
.end method

.method public j()Lcom/uzmap/pkg/uzcore/b/d;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->l:Lcom/uzmap/pkg/uzcore/b/d;

    return-object v0
.end method

.method public k()Lcom/uzmap/pkg/uzcore/b/d;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->k:Lcom/uzmap/pkg/uzcore/b/d;

    return-object v0
.end method

.method public final l()Lcom/uzmap/pkg/uzcore/e/c;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->k:Lcom/uzmap/pkg/uzcore/b/d;

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e/c;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/e/c;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->b:Lcom/uzmap/pkg/uzcore/e/c;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->z()V

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->b:Lcom/uzmap/pkg/uzcore/e/c;

    return-object v0
.end method

.method public m()Z
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/uzmodule/e;->c()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/z;->i()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/z;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final p()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->d:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d;->d:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->w()Lcom/deepe/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->w()Lcom/deepe/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/b/c;->c()V

    :cond_1
    invoke-static {}, Lcom/deepe/c/c;->b()V

    invoke-static {}, Lcom/deepe/c/k/d;->a()Lcom/deepe/c/k/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/k/d;->c()V

    return-void
.end method

.method public final q()V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->w()Lcom/deepe/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->w()Lcom/deepe/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/b/c;->b()V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->w()Lcom/deepe/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d;->w()Lcom/deepe/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/b/c;->a()V

    :cond_0
    return-void
.end method
