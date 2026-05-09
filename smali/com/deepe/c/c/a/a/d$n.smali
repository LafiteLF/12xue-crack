.class public Lcom/deepe/c/c/a/a/d$n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field final a:Lcom/deepe/c/c/a/a/d$q;

.field final b:Lcom/deepe/c/c/a/a/o;

.field final c:Lcom/deepe/c/c/a/a/d$s;


# direct methods
.method constructor <init>(Lcom/deepe/c/c/a/a/d$q;Lcom/deepe/c/c/a/a/o;Lcom/deepe/c/c/a/a/d$s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/a/a/d$n;->a:Lcom/deepe/c/c/a/a/d$q;

    iput-object p2, p0, Lcom/deepe/c/c/a/a/d$n;->b:Lcom/deepe/c/c/a/a/o;

    iput-object p3, p0, Lcom/deepe/c/c/a/a/d$n;->c:Lcom/deepe/c/c/a/a/d$s;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/d$n;->a:Lcom/deepe/c/c/a/a/d$q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " {...} (src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/d$n;->c:Lcom/deepe/c/c/a/a/d$s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
