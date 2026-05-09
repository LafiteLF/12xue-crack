.class Lcom/apicloud/a/i/a/r/b;
.super Lcom/apicloud/c/a/a/c;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/c/a/a/c;-><init>()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/a/i/a/r/b;->d(J)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/a/i/a/r/b;->b(J)V

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/a/i/a/r/b;->a(J)V

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/a/i/a/r/b;->c(J)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/b;->a(Z)V

    return-void
.end method

.method static a()Lcom/apicloud/a/i/a/r/b;
    .locals 1

    new-instance v0, Lcom/apicloud/a/i/a/r/b;

    invoke-direct {v0}, Lcom/apicloud/a/i/a/r/b;-><init>()V

    return-object v0
.end method
