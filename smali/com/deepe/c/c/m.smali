.class public Lcom/deepe/c/c/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/deepe/c/c/v;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/deepe/c/c/v;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/m;->a:Lcom/deepe/c/c/v;

    iput-object p2, p0, Lcom/deepe/c/c/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Landroid/graphics/Bitmap;)Lcom/deepe/c/c/m;
    .locals 1

    sget-object v0, Lcom/deepe/c/c/v;->g:Lcom/deepe/c/c/v;

    invoke-static {v0, p0}, Lcom/deepe/c/c/m;->a(Lcom/deepe/c/c/v;Ljava/lang/Object;)Lcom/deepe/c/c/m;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lcom/deepe/c/c/v;Ljava/lang/Object;)Lcom/deepe/c/c/m;
    .locals 1

    new-instance v0, Lcom/deepe/c/c/m;

    invoke-direct {v0, p0, p1}, Lcom/deepe/c/c/m;-><init>(Lcom/deepe/c/c/v;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final a([B)Lcom/deepe/c/c/m;
    .locals 1

    sget-object v0, Lcom/deepe/c/c/v;->d:Lcom/deepe/c/c/v;

    invoke-static {v0, p0}, Lcom/deepe/c/c/m;->a(Lcom/deepe/c/c/v;Ljava/lang/Object;)Lcom/deepe/c/c/m;

    move-result-object p0

    return-object p0
.end method

.method public static final b([B)Lcom/deepe/c/c/m;
    .locals 1

    sget-object v0, Lcom/deepe/c/c/v;->e:Lcom/deepe/c/c/v;

    invoke-static {v0, p0}, Lcom/deepe/c/c/m;->a(Lcom/deepe/c/c/v;Ljava/lang/Object;)Lcom/deepe/c/c/m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/m;->a:Lcom/deepe/c/c/v;

    invoke-virtual {v0}, Lcom/deepe/c/c/v;->b()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/m;->a:Lcom/deepe/c/c/v;

    invoke-virtual {v0}, Lcom/deepe/c/c/v;->c()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/m;->a:Lcom/deepe/c/c/v;

    invoke-virtual {v0}, Lcom/deepe/c/c/v;->d()Z

    move-result v0

    return v0
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/c/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/m;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()[B
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/c/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/m;->b:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()[B
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/c/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/m;->b:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/m;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/c/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/deepe/c/c/m;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/c/w;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/c/m;->b:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/m;->a:Lcom/deepe/c/c/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepe/c/c/m;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
