.class Lcom/deepe/b/f/a$1$2;
.super Lcom/deepe/b/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/f/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/f/a$1;

.field private final synthetic b:Lcom/deepe/b/f/c;


# direct methods
.method constructor <init>(Lcom/deepe/b/f/a$1;Lcom/deepe/b/f/c;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/f/a$1$2;->a:Lcom/deepe/b/f/a$1;

    iput-object p2, p0, Lcom/deepe/b/f/a$1$2;->b:Lcom/deepe/b/f/c;

    invoke-direct {p0}, Lcom/deepe/b/f/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 3

    iget-object v0, p0, Lcom/deepe/b/f/a$1$2;->b:Lcom/deepe/b/f/c;

    const-wide v1, 0x3feb333340000000L    # 0.8500000238418579

    mul-double/2addr p1, v1

    const-wide/high16 v1, 0x402e000000000000L    # 15.0

    add-double/2addr p1, v1

    invoke-static {p1, p2}, Lcom/deepe/c/i/e;->a(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/deepe/b/f/c;->a(D)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/f/a$1$2;->b:Lcom/deepe/b/f/c;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/b/f/c;->a(ZLjava/lang/String;)V

    return-void
.end method
