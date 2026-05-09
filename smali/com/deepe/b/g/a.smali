.class public Lcom/deepe/b/g/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/deepe/b/d/e;

.field private b:Lcom/deepe/b/a;


# direct methods
.method public constructor <init>(Lcom/deepe/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/b/g/a;->b:Lcom/deepe/b/a;

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/g/a;)Lcom/deepe/b/a;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/g/a;->b:Lcom/deepe/b/a;

    return-object p0
.end method

.method static synthetic b(Lcom/deepe/b/g/a;)Lcom/deepe/b/d/e;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/g/a;->a:Lcom/deepe/b/d/e;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/deepe/b/e/a;->a()Lcom/deepe/b/e/a;

    move-result-object v0

    new-instance v1, Lcom/deepe/b/g/a$1;

    invoke-direct {v1, p0}, Lcom/deepe/b/g/a$1;-><init>(Lcom/deepe/b/g/a;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/deepe/b/e/a;->a(Lcom/uzmap/pkg/openapi/mam/UpdateCallback;Lcom/deepe/b/e/b;)V

    return-void
.end method

.method public a(Lcom/deepe/b/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/g/a;->a:Lcom/deepe/b/d/e;

    return-void
.end method
