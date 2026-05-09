.class public Lcom/deepe/c/l/f/j;
.super Lcom/deepe/c/l/f/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/deepe/c/l/c/c;->b:Lcom/deepe/c/l/c/c;

    invoke-direct {p0, v0}, Lcom/deepe/c/l/f/e;-><init>(Lcom/deepe/c/l/c/c;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation

    invoke-super {p0}, Lcom/deepe/c/l/f/e;->c()V

    invoke-virtual {p0}, Lcom/deepe/c/l/f/j;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/l/i/c;->b(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/c/l/d/c;

    const/16 v1, 0x3ef

    const-string v2, "Received text is no valid utf8 string!"

    invoke-direct {v0, v1, v2}, Lcom/deepe/c/l/d/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method
