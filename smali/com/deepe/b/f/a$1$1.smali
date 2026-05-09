.class Lcom/deepe/b/f/a$1$1;
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

    iput-object p1, p0, Lcom/deepe/b/f/a$1$1;->a:Lcom/deepe/b/f/a$1;

    iput-object p2, p0, Lcom/deepe/b/f/a$1$1;->b:Lcom/deepe/b/f/c;

    invoke-direct {p0}, Lcom/deepe/b/f/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 3

    iget-object v0, p0, Lcom/deepe/b/f/a$1$1;->b:Lcom/deepe/b/f/c;

    const-wide v1, 0x3fc3333340000000L    # 0.15000000596046448

    mul-double/2addr p1, v1

    invoke-static {p1, p2}, Lcom/deepe/c/i/e;->a(D)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/deepe/b/f/c;->a(D)V

    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/f/a$1$1;->b:Lcom/deepe/b/f/c;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/b/f/c;->a(J)V

    return-void
.end method
