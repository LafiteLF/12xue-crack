.class public Lcom/apicloud/a/c/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/eclipsesource/v8/utils/TypeAdapter;

.field private final b:Lcom/apicloud/a/c/x;

.field private c:Lcom/apicloud/a/f/a/a;

.field private d:Lcom/eclipsesource/v8/V8Object;


# direct methods
.method constructor <init>(Lcom/apicloud/a/c/x;Lcom/eclipsesource/v8/utils/TypeAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/c/a;->b:Lcom/apicloud/a/c/x;

    iput-object p2, p0, Lcom/apicloud/a/c/a;->a:Lcom/eclipsesource/v8/utils/TypeAdapter;

    invoke-direct {p0}, Lcom/apicloud/a/c/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/c/a;)Lcom/apicloud/a/f/a/a;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/c/a;->c:Lcom/apicloud/a/f/a/a;

    return-object p0
.end method

.method static synthetic a(Lcom/apicloud/a/c/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/eclipsesource/v8/V8Object;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/c/a$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/a$1;-><init>(Lcom/apicloud/a/c/a;)V

    const-string v1, "A"

    invoke-virtual {p1, v0, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Lcom/eclipsesource/v8/JavaCallback;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/c/a;->c:Lcom/apicloud/a/f/a/a;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " module not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/apicloud/a/f/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/c/a;)Lcom/eclipsesource/v8/utils/TypeAdapter;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/c/a;->a:Lcom/eclipsesource/v8/utils/TypeAdapter;

    return-object p0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/c/a;->b:Lcom/apicloud/a/c/x;

    invoke-virtual {v0}, Lcom/apicloud/a/c/x;->b()Lcom/eclipsesource/v8/V8Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/c/a;->a(Lcom/eclipsesource/v8/V8Object;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/c/a;->b(Lcom/eclipsesource/v8/V8Object;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/c/a;->e(Lcom/eclipsesource/v8/V8Object;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/c/a;->c(Lcom/eclipsesource/v8/V8Object;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/c/a;->d(Lcom/eclipsesource/v8/V8Object;)V

    iget-object v1, p0, Lcom/apicloud/a/c/a;->b:Lcom/apicloud/a/c/x;

    sget-object v2, Lcom/apicloud/a/c/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/apicloud/a/c/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apicloud/a/c/a;->d:Lcom/eclipsesource/v8/V8Object;

    return-void
.end method

.method private b(Lcom/eclipsesource/v8/V8Object;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/c/a$2;

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/a$2;-><init>(Lcom/apicloud/a/c/a;)V

    const-string v1, "G"

    invoke-virtual {p1, v0, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Lcom/eclipsesource/v8/JavaCallback;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    return-void
.end method

.method private c(Lcom/eclipsesource/v8/V8Object;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/c/a$3;

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/a$3;-><init>(Lcom/apicloud/a/c/a;)V

    const-string v1, "E"

    invoke-virtual {p1, v0, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Lcom/eclipsesource/v8/JavaCallback;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    return-void
.end method

.method private d(Lcom/eclipsesource/v8/V8Object;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/c/a$4;

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/a$4;-><init>(Lcom/apicloud/a/c/a;)V

    const-string v1, "ES"

    invoke-virtual {p1, v0, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Lcom/eclipsesource/v8/JavaCallback;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    return-void
.end method

.method private e(Lcom/eclipsesource/v8/V8Object;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/c/a$5;

    invoke-direct {v0, p0}, Lcom/apicloud/a/c/a$5;-><init>(Lcom/apicloud/a/c/a;)V

    const-string v1, "require"

    invoke-virtual {p1, v0, v1}, Lcom/eclipsesource/v8/V8Object;->registerJavaMethod(Lcom/eclipsesource/v8/JavaCallback;Ljava/lang/String;)Lcom/eclipsesource/v8/V8Object;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/c/a;->d:Lcom/eclipsesource/v8/V8Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/c/a;->d:Lcom/eclipsesource/v8/V8Object;

    invoke-virtual {v0}, Lcom/eclipsesource/v8/V8Object;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/c/a;->d:Lcom/eclipsesource/v8/V8Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method a(Lcom/apicloud/a/f/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/c/a;->c:Lcom/apicloud/a/f/a/a;

    return-void
.end method
