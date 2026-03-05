.class final Lcom/apicloud/a/i/a/e/c/f;
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
.field final a:[B

.field final b:Lcom/apicloud/a/i/a/e/c/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/e/c/d;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/c/f;->b:Lcom/apicloud/a/i/a/e/c/d;

    iput-object p2, p0, Lcom/apicloud/a/i/a/e/c/f;->a:[B

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/c/f;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/c/f;->b:Lcom/apicloud/a/i/a/e/c/d;

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/c/f;->a:[B

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/e/c/d;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
