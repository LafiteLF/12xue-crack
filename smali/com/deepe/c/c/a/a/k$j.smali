.class abstract Lcom/deepe/c/c/a/a/k$j;
.super Lcom/deepe/c/c/a/a/k$ak;

# interfaces
.implements Lcom/deepe/c/c/a/a/k$ai;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "j"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/k$am;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Boolean;

.field c:Landroid/graphics/Matrix;

.field d:Lcom/deepe/c/c/a/a/k$k;

.field e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$ak;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k$j;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/c/a/a/k$am;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/e;
        }
    .end annotation

    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k$j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/c/c/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Gradient elements cannot contain "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " elements."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/deepe/c/c/a/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/k$am;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k$j;->a:Ljava/util/List;

    return-object v0
.end method
