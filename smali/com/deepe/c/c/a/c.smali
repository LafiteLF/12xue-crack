.class public Lcom/deepe/c/c/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/deepe/c/c/a/a/k;


# direct methods
.method private constructor <init>(Lcom/deepe/c/c/a/a/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/a/c;->a:Lcom/deepe/c/c/a/a/k;

    return-void
.end method

.method public static a([B)Lcom/deepe/c/c/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/a/c;

    invoke-static {p0}, Lcom/deepe/c/c/a/a/k;->a([B)Lcom/deepe/c/c/a/a/k;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/c;-><init>(Lcom/deepe/c/c/a/a/k;)V

    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/c;->a:Lcom/deepe/c/c/a/a/k;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k;->b()F

    move-result v0

    return v0
.end method

.method public a(F)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/c;->a:Lcom/deepe/c/c/a/a/k;

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/a/a/k;->a(F)V

    return-void
.end method

.method public a(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/c;->a:Lcom/deepe/c/c/a/a/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/deepe/c/c/a/a/k;->a(FFFF)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Lcom/deepe/c/c/a/b;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/c;->a:Lcom/deepe/c/c/a/a/k;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/c/a/a/k;->a(Landroid/graphics/Canvas;Lcom/deepe/c/c/a/b;)V

    return-void
.end method

.method public a(Lcom/deepe/c/c/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/c;->a:Lcom/deepe/c/c/a/a/k;

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/a/a/k;->a(Lcom/deepe/c/c/a/a;)V

    return-void
.end method

.method public b()F
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/c;->a:Lcom/deepe/c/c/a/a/k;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k;->a()F

    move-result v0

    return v0
.end method

.method public b(F)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/c;->a:Lcom/deepe/c/c/a/a/k;

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/a/a/k;->b(F)V

    return-void
.end method

.method public c()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/c;->a:Lcom/deepe/c/c/a/a/k;

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/k;->c()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method
