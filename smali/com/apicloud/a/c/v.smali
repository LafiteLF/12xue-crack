.class public Lcom/apicloud/a/c/v;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/apicloud/a/d;

.field private final b:Lcom/apicloud/a/c/g;

.field private c:Lcom/apicloud/a/c/s;

.field private d:Lcom/eclipsesource/v8/V8Object;

.field private e:Lcom/eclipsesource/v8/V8Function;

.field private f:Lcom/apicloud/a/c/a;

.field private final g:Lcom/apicloud/a/c/r;

.field private h:Lcom/apicloud/a/c/x;

.field private i:Lcom/eclipsesource/v8/V8Object;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;Lcom/apicloud/a/c/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    iput-object p2, p0, Lcom/apicloud/a/c/v;->b:Lcom/apicloud/a/c/g;

    const-string v0, "global"

    invoke-static {v0}, Lcom/apicloud/a/c/x;->a(Ljava/lang/String;)Lcom/apicloud/a/c/x;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    new-instance v0, Lcom/apicloud/a/c/r;

    invoke-direct {v0, p1}, Lcom/apicloud/a/c/r;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/c/v;->g:Lcom/apicloud/a/c/r;

    iget-object p1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/c/v;->a(Lcom/apicloud/a/c/x;Lcom/apicloud/a/c/g;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/c/v;)Lcom/apicloud/a/d;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Lcom/eclipsesource/v8/V8Value;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/eclipsesource/v8/V8Value;

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Value;->isUndefined()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    instance-of v0, p1, Lcom/eclipsesource/v8/V8Array;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/eclipsesource/v8/V8Array;

    iget-object v0, p0, Lcom/apicloud/a/c/v;->g:Lcom/apicloud/a/c/r;

    invoke-static {p1, v0}, Lcom/eclipsesource/v8/utils/V8ObjectUtils;->toList(Lcom/eclipsesource/v8/V8Array;Lcom/eclipsesource/v8/utils/TypeAdapter;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lcom/eclipsesource/v8/V8Object;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/apicloud/a/c;

    check-cast p1, Lcom/eclipsesource/v8/V8Object;

    iget-object v1, p0, Lcom/apicloud/a/c/v;->g:Lcom/apicloud/a/c/r;

    invoke-static {p1, v1}, Lcom/eclipsesource/v8/utils/V8ObjectUtils;->toMap(Lcom/eclipsesource/v8/V8Object;Lcom/eclipsesource/v8/utils/TypeAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/apicloud/a/c;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_2
    return-object p1
.end method

.method private a(Lcom/apicloud/a/c/x;Lcom/apicloud/a/c/g;)V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {v0}, Lcom/apicloud/a/c/x;->b()Lcom/eclipsesource/v8/V8Object;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "print"

    invoke-virtual {v0, p2, v2, v2, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Lcom/eclipsesource/v8/V8Object;

    const-string p2, "console"

    invoke-virtual {p1, p2, v0}, Lcom/apicloud/a/c/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Object;->close()V

    return-void
.end method

.method private a(Lcom/eclipsesource/v8/V8Object;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/c/v$2;

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/v$2;-><init>(Lcom/apicloud/a/c/v;)V

    const-string v1, "create"

    invoke-virtual {p1, v0, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Lcom/eclipsesource/v8/JavaVoidCallback;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/c/v;)Lcom/apicloud/a/c/r;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/c/v;->g:Lcom/apicloud/a/c/r;

    return-object p0
.end method

.method private b(Lcom/eclipsesource/v8/V8Object;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/c/v$3;

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/v$3;-><init>(Lcom/apicloud/a/c/v;)V

    const-string v1, "set"

    invoke-virtual {p1, v0, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Lcom/eclipsesource/v8/JavaVoidCallback;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    return-void
.end method

.method static synthetic c(Lcom/apicloud/a/c/v;)Lcom/apicloud/a/c/s;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/c/v;->c:Lcom/apicloud/a/c/s;

    return-object p0
.end method

.method private c(Lcom/eclipsesource/v8/V8Object;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/c/v$4;

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/v$4;-><init>(Lcom/apicloud/a/c/v;)V

    const-string v1, "listen"

    invoke-virtual {p1, v0, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Lcom/eclipsesource/v8/JavaVoidCallback;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    return-void
.end method

.method static synthetic d(Lcom/apicloud/a/c/v;)Lcom/apicloud/a/c/x;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    return-object p0
.end method

.method private d(Lcom/eclipsesource/v8/V8Object;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/c/v$5;

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/v$5;-><init>(Lcom/apicloud/a/c/v;)V

    const-string v1, "get"

    invoke-virtual {p1, v0, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Lcom/eclipsesource/v8/JavaCallback;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    return-void
.end method

.method private e(Lcom/eclipsesource/v8/V8Object;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/c/v$6;

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/v$6;-><init>(Lcom/apicloud/a/c/v;)V

    const-string v1, "call"

    invoke-virtual {p1, v0, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Lcom/eclipsesource/v8/JavaCallback;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    return-void
.end method

.method private f()Lcom/eclipsesource/v8/V8Object;
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {v0}, Lcom/apicloud/a/c/x;->b()Lcom/eclipsesource/v8/V8Object;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/c/d;

    iget-object v2, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    invoke-interface {v2}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    invoke-interface {v3}, Lcom/apicloud/a/d;->s()Lcom/apicloud/a/c/u;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/apicloud/a/c/d;-><init>(Landroid/content/Context;Lcom/apicloud/a/c/u;)V

    new-instance v2, Lcom/apicloud/a/c/s;

    iget-object v3, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    iget-object v4, p0, Lcom/apicloud/a/c/v;->b:Lcom/apicloud/a/c/g;

    invoke-direct {v2, v3, v4, v1}, Lcom/apicloud/a/c/s;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/c/g;Lcom/apicloud/a/c/d;)V

    iput-object v2, p0, Lcom/apicloud/a/c/v;->c:Lcom/apicloud/a/c/s;

    invoke-direct {p0}, Lcom/apicloud/a/c/v;->g()V

    invoke-direct {p0, v0}, Lcom/apicloud/a/c/v;->a(Lcom/eclipsesource/v8/V8Object;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/c/v;->b(Lcom/eclipsesource/v8/V8Object;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/c/v;->c(Lcom/eclipsesource/v8/V8Object;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/c/v;->e(Lcom/eclipsesource/v8/V8Object;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/c/v;->d(Lcom/eclipsesource/v8/V8Object;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/c/v;->g(Lcom/eclipsesource/v8/V8Object;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/c/v;->h(Lcom/eclipsesource/v8/V8Object;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/c/v;->i(Lcom/eclipsesource/v8/V8Object;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/c/v;->j(Lcom/eclipsesource/v8/V8Object;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/c/v;->f(Lcom/eclipsesource/v8/V8Object;)V

    return-object v0
.end method

.method private f(Lcom/eclipsesource/v8/V8Object;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/c/v$7;

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/v$7;-><init>(Lcom/apicloud/a/c/v;)V

    const-string v1, "destroy"

    invoke-virtual {p1, v0, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Lcom/eclipsesource/v8/JavaVoidCallback;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    const-string v1, "app"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/c/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    sget v1, Lcom/apicloud/a/a/d;->b:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "devicePixelRatio"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/apicloud/a/c/v$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/v$1;-><init>(Lcom/apicloud/a/c/v;)V

    iget-object v1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/JavaCallback;)Lcom/eclipsesource/v8/V8Function;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/c/v;->e:Lcom/eclipsesource/v8/V8Function;

    iget-object v1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    const-string v2, "$magics"

    invoke-virtual {v1, v2, v0}, Lcom/apicloud/a/c/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private g(Lcom/eclipsesource/v8/V8Object;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/c/v$8;

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/v$8;-><init>(Lcom/apicloud/a/c/v;)V

    const-string v1, "contentLoaded"

    invoke-virtual {p1, v0, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Lcom/eclipsesource/v8/JavaVoidCallback;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/c/v;->i:Lcom/eclipsesource/v8/V8Object;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    const-string v1, "api$__vm"

    invoke-virtual {v0, v1}, Lcom/apicloud/a/c/x;->c(Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/c/v;->i:Lcom/eclipsesource/v8/V8Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private h(Lcom/eclipsesource/v8/V8Object;)V
    .locals 3

    new-instance v0, Lcom/apicloud/a/c/m;

    iget-object v1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    iget-object v2, p0, Lcom/apicloud/a/c/v;->c:Lcom/apicloud/a/c/s;

    invoke-direct {v0, v1, v2}, Lcom/apicloud/a/c/m;-><init>(Lcom/apicloud/a/c/x;Lcom/apicloud/a/c/s;)V

    const-string v1, "loadAndExecute"

    invoke-virtual {p1, v0, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Lcom/eclipsesource/v8/JavaCallback;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    return-void
.end method

.method private i(Lcom/eclipsesource/v8/V8Object;)V
    .locals 3

    new-instance v0, Lcom/apicloud/a/c/i;

    iget-object v1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    iget-object v2, p0, Lcom/apicloud/a/c/v;->c:Lcom/apicloud/a/c/s;

    invoke-direct {v0, v1, v2}, Lcom/apicloud/a/c/i;-><init>(Lcom/apicloud/a/c/x;Lcom/apicloud/a/c/s;)V

    const-string v1, "execute"

    invoke-virtual {p1, v0, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Lcom/eclipsesource/v8/JavaCallback;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    return-void
.end method

.method private j(Lcom/eclipsesource/v8/V8Object;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/c/v$9;

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/v$9;-><init>(Lcom/apicloud/a/c/v;)V

    const-string v1, "load"

    invoke-virtual {p1, v0, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Lcom/eclipsesource/v8/JavaCallback;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/apicloud/a/c/x;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/c/v;->b:Lcom/apicloud/a/c/g;

    const-string v1, "dispatch script[vm] failed."

    invoke-static {p1, v1}, Lcom/apicloud/a/c/b;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/a/c/g;->b(Lcom/apicloud/a/c/b;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/apicloud/a/c/x;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p3, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    invoke-interface {p3}, Lcom/apicloud/a/d;->v()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/apicloud/a/c/v;->b:Lcom/apicloud/a/c/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatch script["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] failed."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/apicloud/a/c/b;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/apicloud/a/c/g;->b(Lcom/apicloud/a/c/b;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/apicloud/a/c/v;->h()V

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {v0}, Lcom/apicloud/a/c/x;->c()Lcom/eclipsesource/v8/V8Array;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {v1, v0, p1}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {p1, v0, p3}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/c/v;->i:Lcom/eclipsesource/v8/V8Object;

    const-string p2, "$_notify"

    invoke-virtual {p1, p2, v0}, Lcom/eclipsesource/v8/V8Object;->executeFunction(Ljava/lang/String;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/c/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    invoke-interface {p2}, Lcom/apicloud/a/d;->v()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/apicloud/a/c/v;->b:Lcom/apicloud/a/c/g;

    const-string p3, "dispatch event failed."

    invoke-static {p1, p3}, Lcom/apicloud/a/c/b;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c/g;->b(Lcom/apicloud/a/c/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    throw p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/apicloud/a/c/v;->h()V

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {v0}, Lcom/apicloud/a/c/x;->c()Lcom/eclipsesource/v8/V8Array;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {v1, v0, p1}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {p1, v0, p3}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/c/v;->i:Lcom/eclipsesource/v8/V8Object;

    const-string p2, "$_createCell"

    invoke-virtual {p1, p2, v0}, Lcom/eclipsesource/v8/V8Object;->executeStringFunction(Ljava/lang/String;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    invoke-interface {p2}, Lcom/apicloud/a/d;->v()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/apicloud/a/c/v;->b:Lcom/apicloud/a/c/g;

    const-string p3, "createCell failed."

    invoke-static {p1, p3}, Lcom/apicloud/a/c/b;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c/g;->b(Lcom/apicloud/a/c/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    throw p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/apicloud/a/c/v;->h()V

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {v0}, Lcom/apicloud/a/c/x;->c()Lcom/eclipsesource/v8/V8Array;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {v1, v0, p1}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {p1, v0, p3}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {p1, v0, p4}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/c/v;->i:Lcom/eclipsesource/v8/V8Object;

    const-string p2, "$_updateCell"

    invoke-virtual {p1, p2, v0}, Lcom/eclipsesource/v8/V8Object;->executeStringFunction(Ljava/lang/String;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    invoke-interface {p2}, Lcom/apicloud/a/d;->v()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/apicloud/a/c/v;->b:Lcom/apicloud/a/c/g;

    const-string p3, "updateCell failed."

    invoke-static {p1, p3}, Lcom/apicloud/a/c/b;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c/g;->b(Lcom/apicloud/a/c/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    throw p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 3

    invoke-direct {p0}, Lcom/apicloud/a/c/v;->f()Lcom/eclipsesource/v8/V8Object;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/c/v;->d:Lcom/eclipsesource/v8/V8Object;

    iget-object v1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    const-string v2, "native_hooks"

    invoke-virtual {v1, v2, v0}, Lcom/apicloud/a/c/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/apicloud/a/c/a;

    iget-object v1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    iget-object v2, p0, Lcom/apicloud/a/c/v;->g:Lcom/apicloud/a/c/r;

    invoke-direct {v0, v1, v2}, Lcom/apicloud/a/c/a;-><init>(Lcom/apicloud/a/c/x;Lcom/eclipsesource/v8/utils/TypeAdapter;)V

    iput-object v0, p0, Lcom/apicloud/a/c/v;->f:Lcom/apicloud/a/c/a;

    iget-object v1, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    invoke-interface {v1}, Lcom/apicloud/a/d;->l()Lcom/apicloud/a/f/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/c/a;->a(Lcom/apicloud/a/f/a/a;)V

    invoke-static {}, Lcom/deepe/d/g;->i()Lcom/deepe/d/g;

    move-result-object v0

    const-string v1, "runtimeIntend"

    invoke-virtual {v0, v1}, Lcom/deepe/d/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/c/v;->h()V

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {v0}, Lcom/apicloud/a/c/x;->c()Lcom/eclipsesource/v8/V8Array;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/eclipsesource/v8/V8Array;->push(I)Lcom/eclipsesource/v8/V8Array;

    invoke-virtual {v0, p1}, Lcom/eclipsesource/v8/V8Array;->push(Ljava/lang/String;)Lcom/eclipsesource/v8/V8Array;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Lcom/eclipsesource/v8/V8Array;->push(Ljava/lang/Object;)Lcom/eclipsesource/v8/V8Array;

    iget-object p1, p0, Lcom/apicloud/a/c/v;->i:Lcom/eclipsesource/v8/V8Object;

    const-string p2, "$_notify"

    invoke-virtual {p1, p2, v0}, Lcom/eclipsesource/v8/V8Object;->executeVoidFunction(Ljava/lang/String;Lcom/eclipsesource/v8/V8Array;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    invoke-interface {p2}, Lcom/apicloud/a/d;->v()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/apicloud/a/c/v;->b:Lcom/apicloud/a/c/g;

    const-string v1, "dispatch page event failed."

    invoke-static {p1, v1}, Lcom/apicloud/a/c/b;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c/g;->b(Lcom/apicloud/a/c/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    return-void

    :goto_2
    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    throw p1
.end method

.method public final b()Lcom/apicloud/a/c/x;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/apicloud/a/c/v;->h()V

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {v0}, Lcom/apicloud/a/c/x;->c()Lcom/eclipsesource/v8/V8Array;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {v1, v0, p1}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {p1, v0, p3}, Lcom/apicloud/a/c/x;->a(Lcom/eclipsesource/v8/V8Array;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/c/v;->i:Lcom/eclipsesource/v8/V8Object;

    const-string p3, "$_method"

    invoke-virtual {p1, p3, v0}, Lcom/eclipsesource/v8/V8Object;->executeFunction(Ljava/lang/String;Lcom/eclipsesource/v8/V8Array;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/c/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p3, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    invoke-interface {p3}, Lcom/apicloud/a/d;->v()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/apicloud/a/c/v;->b:Lcom/apicloud/a/c/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call method failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/apicloud/a/c/b;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/apicloud/a/c/g;->b(Lcom/apicloud/a/c/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    throw p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/v;->c:Lcom/apicloud/a/c/s;

    invoke-virtual {v0}, Lcom/apicloud/a/c/s;->a()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 4

    invoke-direct {p0}, Lcom/apicloud/a/c/v;->h()V

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    invoke-virtual {v0}, Lcom/apicloud/a/c/x;->c()Lcom/eclipsesource/v8/V8Array;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/c/v;->d:Lcom/eclipsesource/v8/V8Object;

    invoke-virtual {v0, v1}, Lcom/eclipsesource/v8/V8Array;->push(Lcom/eclipsesource/v8/V8Value;)Lcom/eclipsesource/v8/V8Array;

    :try_start_0
    iget-object v1, p0, Lcom/apicloud/a/c/v;->i:Lcom/eclipsesource/v8/V8Object;

    const-string v2, "$_start"

    invoke-virtual {v1, v2, v0}, Lcom/eclipsesource/v8/V8Object;->executeVoidFunction(Ljava/lang/String;Lcom/eclipsesource/v8/V8Array;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;

    invoke-interface {v2}, Lcom/apicloud/a/d;->v()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/apicloud/a/c/v;->b:Lcom/apicloud/a/c/g;

    const-string v3, "dispatch apiready failed."

    invoke-static {v1, v3}, Lcom/apicloud/a/c/b;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/apicloud/a/c/g;->b(Lcom/apicloud/a/c/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Array;->close()V

    throw v1
.end method

.method public final e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/c/v;->c:Lcom/apicloud/a/c/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/c/v;->d:Lcom/eclipsesource/v8/V8Object;

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Object;->close()V

    iput-object v1, p0, Lcom/apicloud/a/c/v;->d:Lcom/eclipsesource/v8/V8Object;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/c/v;->f:Lcom/apicloud/a/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/c/v;->f:Lcom/apicloud/a/c/a;

    invoke-virtual {v0}, Lcom/apicloud/a/c/a;->a()V

    iput-object v1, p0, Lcom/apicloud/a/c/v;->f:Lcom/apicloud/a/c/a;

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/c/v;->e:Lcom/eclipsesource/v8/V8Function;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/c/v;->e:Lcom/eclipsesource/v8/V8Function;

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Function;->close()V

    iput-object v1, p0, Lcom/apicloud/a/c/v;->e:Lcom/eclipsesource/v8/V8Function;

    :cond_2
    iget-object v0, p0, Lcom/apicloud/a/c/v;->i:Lcom/eclipsesource/v8/V8Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/c/v;->i:Lcom/eclipsesource/v8/V8Object;

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Object;->close()V

    iput-object v1, p0, Lcom/apicloud/a/c/v;->i:Lcom/eclipsesource/v8/V8Object;

    :cond_3
    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/apicloud/a/c/x;->a(Z)V

    iput-object v1, p0, Lcom/apicloud/a/c/v;->h:Lcom/apicloud/a/c/x;

    :cond_4
    iput-object v1, p0, Lcom/apicloud/a/c/v;->a:Lcom/apicloud/a/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/apicloud/a/c/v;->b:Lcom/apicloud/a/c/g;

    const-string v2, "shutdown error."

    invoke-static {v0, v2}, Lcom/apicloud/a/c/b;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apicloud/a/c/g;->b(Lcom/apicloud/a/c/b;)V

    :goto_0
    return-void
.end method
