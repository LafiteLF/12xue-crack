.class public Lcom/deepe/c/c/s;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:F

.field public e:Landroid/widget/ImageView$ScaleType;

.field public f:Landroid/graphics/Bitmap$Config;

.field public g:Z

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/c/s;->g:Z

    iput v0, p0, Lcom/deepe/c/c/s;->h:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/c/s;->i:Z

    iput-object p1, p0, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/deepe/c/c/s;
    .locals 1

    new-instance v0, Lcom/deepe/c/c/s;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/s;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/deepe/c/c/s;->g:Z

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/deepe/c/c/s;
    .locals 1

    new-instance v0, Lcom/deepe/c/c/s;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/s;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget v0, p0, Lcom/deepe/c/c/s;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/deepe/c/c/s;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/x;->s(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/x;->p(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Lcom/deepe/c/c/s;
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/c/s;->b(Ljava/lang/String;)Lcom/deepe/c/c/s;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    iget v1, p0, Lcom/deepe/c/c/s;->b:I

    iput v1, v0, Lcom/deepe/c/c/s;->b:I

    iget v1, p0, Lcom/deepe/c/c/s;->c:I

    iput v1, v0, Lcom/deepe/c/c/s;->c:I

    iget v1, p0, Lcom/deepe/c/c/s;->h:I

    iput v1, v0, Lcom/deepe/c/c/s;->h:I

    iget v1, p0, Lcom/deepe/c/c/s;->d:F

    iput v1, v0, Lcom/deepe/c/c/s;->d:F

    iget-object v1, p0, Lcom/deepe/c/c/s;->e:Landroid/widget/ImageView$ScaleType;

    iput-object v1, v0, Lcom/deepe/c/c/s;->e:Landroid/widget/ImageView$ScaleType;

    iget-boolean v1, p0, Lcom/deepe/c/c/s;->g:Z

    iput-boolean v1, v0, Lcom/deepe/c/c/s;->g:Z

    iget-object v1, p0, Lcom/deepe/c/c/s;->f:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Lcom/deepe/c/c/s;->f:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
