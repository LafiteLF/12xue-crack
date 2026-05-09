.class public final Lcom/deepe/b/d;
.super Lcom/deepe/b/d/d;

# interfaces
.implements Lcom/deepe/b/d/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/b/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/deepe/c/h/a;

.field private final b:Lcom/deepe/b/d$a;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/deepe/b/d$a;)V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/b/d/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/deepe/b/d;->d:I

    iput-object p1, p0, Lcom/deepe/b/d;->b:Lcom/deepe/b/d$a;

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d;)Lcom/deepe/b/d$a;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/d;->b:Lcom/deepe/b/d$a;

    return-object p0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/d;->a:Lcom/deepe/c/h/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/h/a;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/b/d;->a:Lcom/deepe/c/h/a;

    :cond_0
    return-void
.end method

.method private a(ID)V
    .locals 1

    new-instance v0, Lcom/deepe/b/d$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/deepe/b/d$6;-><init>(Lcom/deepe/b/d;ID)V

    invoke-direct {p0, v0}, Lcom/deepe/b/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(IIID)V
    .locals 2

    iget-boolean v0, p0, Lcom/deepe/b/d;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/deepe/b/d;->d:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/deepe/b/d;->d:I

    invoke-static {p1, p2, p3}, Lcom/deepe/b/d/d;->a(III)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/deepe/b/d;->a(Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    move p2, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move p2, p3

    :goto_1
    invoke-direct {p0, p2, p4, p5}, Lcom/deepe/b/d;->a(ID)V

    return-void
.end method

.method private a(Lcom/deepe/b/d/f;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/b/d$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/deepe/b/d$3;-><init>(Lcom/deepe/b/d;ZLcom/deepe/b/d/f;)V

    invoke-direct {p0, v0}, Lcom/deepe/b/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d;ID)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepe/b/d;->a(ID)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d;Lcom/deepe/c/h/a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d;->a:Lcom/deepe/c/h/a;

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/b/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/b/d;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/b/d;->c:Z

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/b/d;->b:Lcom/deepe/b/d$a;

    invoke-virtual {v0}, Lcom/deepe/b/d$a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/b/d$5;

    invoke-direct {v0, p0, p1}, Lcom/deepe/b/d$5;-><init>(Lcom/deepe/b/d;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/deepe/b/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Lcom/deepe/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepe/b;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/deepe/b/d;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;-><init>()V

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setUrl(Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setMethod(I)V

    iget-object p1, p0, Lcom/deepe/b/d;->b:Lcom/deepe/b/d$a;

    invoke-virtual {p1}, Lcom/deepe/b/d$a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "apk/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setDefaultSavePath(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setWillReportProgress(Z)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->toRequest(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object p1

    new-instance v0, Lcom/deepe/b/d$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/deepe/b/d$4;-><init>(Lcom/deepe/b/d;Lcom/uzmap/pkg/uzkit/request/Request;Z)V

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->request(Lcom/uzmap/pkg/uzkit/request/Request;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/b/d$2;

    invoke-direct {v0, p0, p1}, Lcom/deepe/b/d$2;-><init>(Lcom/deepe/b/d;Z)V

    invoke-direct {p0, v0}, Lcom/deepe/b/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/deepe/b/d;)Lcom/deepe/c/h/a;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/d;->a:Lcom/deepe/c/h/a;

    return-object p0
.end method

.method private b(Lcom/deepe/b/d/c;)V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/b/d$1;

    invoke-direct {v0, p0, p1}, Lcom/deepe/b/d$1;-><init>(Lcom/deepe/b/d;Lcom/deepe/b/d/c;)V

    invoke-direct {p0, v0}, Lcom/deepe/b/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Lcom/deepe/b/d/f;)V
    .locals 3

    invoke-virtual {p1}, Lcom/deepe/b/d/f;->c()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/deepe/b/d/f;->h:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/deepe/b/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d/f;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d/f;Z)V

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/b/d$7;

    invoke-direct {v0, p0, p1}, Lcom/deepe/b/d$7;-><init>(Lcom/deepe/b/d;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/deepe/b/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/d;->b:Lcom/deepe/b/d$a;

    invoke-virtual {v0}, Lcom/deepe/b/d$a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/b/d;->b:Lcom/deepe/b/d$a;

    invoke-virtual {v0}, Lcom/deepe/b/d$a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/deepe/b/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/b/d;->a()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/b/d$8;

    invoke-direct {v0, p0, p1}, Lcom/deepe/b/d$8;-><init>(Lcom/deepe/b/d;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/deepe/b/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(IIIDLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/deepe/b/d;->a(IIID)V

    return-void
.end method

.method public final a(Lcom/deepe/b/d/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/b/d;->b(Lcom/deepe/b/d/c;)V

    return-void
.end method

.method public final a(Lcom/deepe/b/d/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/b/d;->b(Lcom/deepe/b/d/f;)V

    return-void
.end method

.method public final a(ZLcom/deepe/b/b/c;)V
    .locals 1

    iget-boolean v0, p2, Lcom/deepe/b/b/c;->c:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/deepe/b/d;->a(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/b/d;->b:Lcom/deepe/b/d$a;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/b/d$a;->onSmartUpdateFinish(ZLcom/deepe/b/b/c;)V

    return-void
.end method
