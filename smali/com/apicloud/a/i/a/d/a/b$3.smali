.class Lcom/apicloud/a/i/a/d/a/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/d/a/b;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/d/a/b;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/d/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/b$3;->a:Lcom/apicloud/a/i/a/d/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b$3;->a:Lcom/apicloud/a/i/a/d/a/b;

    invoke-static {v0}, Lcom/apicloud/a/i/a/d/a/b;->a(Lcom/apicloud/a/i/a/d/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/b$3;->a:Lcom/apicloud/a/i/a/d/a/b;

    iget-object v0, v0, Lcom/apicloud/a/i/a/d/a/b;->b:Lcom/apicloud/a/i/a/d/a/f$a;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/d/a/f$a;->a([B)V

    invoke-virtual {p2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    return-void
.end method
