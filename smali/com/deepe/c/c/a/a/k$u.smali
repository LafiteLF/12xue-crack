.class Lcom/deepe/c/c/a/a/k$u;
.super Lcom/deepe/c/c/a/a/k$an;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "u"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/deepe/c/c/a/a/k$an;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/deepe/c/c/a/a/k$an;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$an;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k$u;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepe/c/c/a/a/k$u;->b:Lcom/deepe/c/c/a/a/k$an;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/k$u;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/k$u;->b:Lcom/deepe/c/c/a/a/k$an;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
