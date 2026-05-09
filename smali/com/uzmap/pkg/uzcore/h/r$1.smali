.class Lcom/uzmap/pkg/uzcore/h/r$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/h/r;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/h/r$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/uzmap/pkg/uzcore/h/r$a;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/h/r$a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/r$1;->a:Lcom/uzmap/pkg/uzcore/h/r$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetError(Lcom/deepe/c/c/d;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tablayout get icon error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    return-void
.end method

.method public onGetSuccess(Lcom/deepe/c/c/m;)V
    .locals 2

    invoke-virtual {p1}, Lcom/deepe/c/c/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/ae;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/deepe/c/c/m;->e()[B

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/c/w;->c([B)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/deepe/c/c/ae;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/deepe/c/c/ae;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/deepe/c/c/m;->d()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/deepe/c/c/ae;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/r$1;->a:Lcom/uzmap/pkg/uzcore/h/r$a;

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/h/r$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
