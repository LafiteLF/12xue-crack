.class public Lcom/deepe/c/l/f/i;
.super Lcom/deepe/c/l/f/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/deepe/c/l/c/c;->e:Lcom/deepe/c/l/c/c;

    invoke-direct {p0, v0}, Lcom/deepe/c/l/f/d;-><init>(Lcom/deepe/c/l/c/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/deepe/c/l/f/h;)V
    .locals 1

    sget-object v0, Lcom/deepe/c/l/c/c;->e:Lcom/deepe/c/l/c/c;

    invoke-direct {p0, v0}, Lcom/deepe/c/l/f/d;-><init>(Lcom/deepe/c/l/c/c;)V

    invoke-virtual {p1}, Lcom/deepe/c/l/f/h;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepe/c/l/f/i;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method
