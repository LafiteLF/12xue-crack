.class final Lcom/apicloud/a/i/a/e/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/e/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apicloud/a/i/a/e/c/a<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/apicloud/a/i/a/e/c/d;

.field final b:Lcom/apicloud/a/i/a/e/c/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/e/c/d;Lcom/apicloud/a/i/a/e/c/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/c/i;->b:Lcom/apicloud/a/i/a/e/c/d;

    iput-object p2, p0, Lcom/apicloud/a/i/a/e/c/i;->a:Lcom/apicloud/a/i/a/e/c/d;

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/c/i;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/c/i;->b:Lcom/apicloud/a/i/a/e/c/d;

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/c/i;->a:Lcom/apicloud/a/i/a/e/c/d;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/e/c/d;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/e/c/d;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/c/i;->b:Lcom/apicloud/a/i/a/e/c/d;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/e/c/d;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
