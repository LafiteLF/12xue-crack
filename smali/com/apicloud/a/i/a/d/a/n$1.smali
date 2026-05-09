.class Lcom/apicloud/a/i/a/d/a/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/d/a/n;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/d/a/n;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/d/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/n$1;->a:Lcom/apicloud/a/i/a/d/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/n$1;->a:Lcom/apicloud/a/i/a/d/a/n;

    invoke-virtual {p1, p2, p3}, Lcom/apicloud/a/i/a/d/a/n;->b(II)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/n$1;->a:Lcom/apicloud/a/i/a/d/a/n;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/n;->k()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/n$1;->a:Lcom/apicloud/a/i/a/d/a/n;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/n;->e()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/n$1;->a:Lcom/apicloud/a/i/a/d/a/n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/apicloud/a/i/a/d/a/n;->b(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/n$1;->a:Lcom/apicloud/a/i/a/d/a/n;

    invoke-virtual {p1, p2, p3}, Lcom/apicloud/a/i/a/d/a/n;->b(II)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/n$1;->a:Lcom/apicloud/a/i/a/d/a/n;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/n;->k()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/n$1;->a:Lcom/apicloud/a/i/a/d/a/n;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/n;->e()V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
