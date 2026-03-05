.class Lcom/apicloud/a/i/a/y/a/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/y/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/y/a/e;->a(Ljava/lang/String;FF)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/y/a/e;

.field private final synthetic b:F

.field private final synthetic c:F

.field private final synthetic d:I

.field private final synthetic e:Lcom/apicloud/a/i/a/y/a/i;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/y/a/e;FFILcom/apicloud/a/i/a/y/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/e$1;->a:Lcom/apicloud/a/i/a/y/a/e;

    iput p2, p0, Lcom/apicloud/a/i/a/y/a/e$1;->b:F

    iput p3, p0, Lcom/apicloud/a/i/a/y/a/e$1;->c:F

    iput p4, p0, Lcom/apicloud/a/i/a/y/a/e$1;->d:I

    iput-object p5, p0, Lcom/apicloud/a/i/a/y/a/e$1;->e:Lcom/apicloud/a/i/a/y/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Lcom/deepe/c/k/j;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/apicloud/a/i/a/y/a/e$1;->b:F

    iget v2, p0, Lcom/apicloud/a/i/a/y/a/e$1;->c:F

    iget v3, p0, Lcom/apicloud/a/i/a/y/a/e$1;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/apicloud/a/i/a/y/a/e;->a(Landroid/graphics/drawable/Drawable;FFI)Lcom/deepe/c/c/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/y/a/e$1;->a:Lcom/apicloud/a/i/a/y/a/e;

    iget-object v3, p0, Lcom/apicloud/a/i/a/y/a/e$1;->e:Lcom/apicloud/a/i/a/y/a/i;

    invoke-static {v2, v3, v0, v1}, Lcom/apicloud/a/i/a/y/a/e;->a(Lcom/apicloud/a/i/a/y/a/e;Lcom/apicloud/a/i/a/y/a/i;Landroid/graphics/drawable/Drawable;Lcom/deepe/c/c/ad;)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget v0, p0, Lcom/apicloud/a/i/a/y/a/e$1;->b:F

    iget v1, p0, Lcom/apicloud/a/i/a/y/a/e$1;->c:F

    iget v2, p0, Lcom/apicloud/a/i/a/y/a/e$1;->d:I

    invoke-static {p1, v0, v1, v2}, Lcom/apicloud/a/i/a/y/a/e;->a(Landroid/graphics/drawable/Drawable;FFI)Lcom/deepe/c/c/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/y/a/e$1;->a:Lcom/apicloud/a/i/a/y/a/e;

    iget-object v2, p0, Lcom/apicloud/a/i/a/y/a/e$1;->e:Lcom/apicloud/a/i/a/y/a/i;

    invoke-static {v1, v2, p1, v0}, Lcom/apicloud/a/i/a/y/a/e;->a(Lcom/apicloud/a/i/a/y/a/e;Lcom/apicloud/a/i/a/y/a/i;Landroid/graphics/drawable/Drawable;Lcom/deepe/c/c/ad;)V

    return-void
.end method
