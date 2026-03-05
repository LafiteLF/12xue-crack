.class public Lcom/uzmap/pkg/uzcore/b;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIJ)Lcom/uzmap/pkg/uzcore/b;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/b;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/b;-><init>()V

    iput p0, v0, Lcom/uzmap/pkg/uzcore/b;->a:I

    iput p1, v0, Lcom/uzmap/pkg/uzcore/b;->b:I

    iput-wide p2, v0, Lcom/uzmap/pkg/uzcore/b;->c:J

    return-object v0
.end method

.method public static e()Lcom/uzmap/pkg/uzcore/b;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/b;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/b;-><init>()V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b;->b()V

    return-object v0
.end method

.method public static f()Lcom/uzmap/pkg/uzcore/b;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/b;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/b;-><init>()V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b;->a()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/uzmap/pkg/uzcore/b;)Lcom/uzmap/pkg/uzcore/b;
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/uzmap/pkg/uzcore/b;->a:I

    iget v2, p0, Lcom/uzmap/pkg/uzcore/b;->b:I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/uzmap/pkg/uzcore/external/b;->a(II)I

    move-result v2

    iget-wide v3, p0, Lcom/uzmap/pkg/uzcore/b;->c:J

    if-eqz v0, :cond_1

    iget v1, p1, Lcom/uzmap/pkg/uzcore/b;->a:I

    iget v2, p1, Lcom/uzmap/pkg/uzcore/b;->b:I

    iget-wide v3, p1, Lcom/uzmap/pkg/uzcore/b;->c:J

    :cond_1
    invoke-static {v1, v2, v3, v4}, Lcom/uzmap/pkg/uzcore/b;->a(IIJ)Lcom/uzmap/pkg/uzcore/b;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    invoke-static {}, Lcom/deepe/c/b;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/uzmap/pkg/uzcore/b;->a:I

    iput v1, p0, Lcom/uzmap/pkg/uzcore/b;->b:I

    const-wide/16 v0, 0xc8

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/uzmap/pkg/uzcore/b;->a:I

    iput v1, p0, Lcom/uzmap/pkg/uzcore/b;->b:I

    const-wide/16 v0, 0x12c

    :goto_0
    iput-wide v0, p0, Lcom/uzmap/pkg/uzcore/b;->c:J

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/b;->d:Z

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/uzmap/pkg/uzcore/b;->a:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/b;->b:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/uzmap/pkg/uzcore/b;->c:J

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/b;->d:Z

    return v0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzcore/b;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
