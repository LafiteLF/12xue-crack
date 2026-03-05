.class Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->getImage(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$BitmapListener;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

.field private final synthetic b:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$BitmapListener;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$BitmapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$1;->a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    iput-object p2, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$1;->b:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$BitmapListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetError(Lcom/deepe/c/c/d;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$1;->b:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$BitmapListener;

    iget p1, p1, Lcom/deepe/c/c/d;->a:I

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$BitmapListener;->onError(I)V

    return-void
.end method

.method public onGetSuccess(Lcom/deepe/c/c/m;)V
    .locals 2

    invoke-virtual {p1}, Lcom/deepe/c/c/m;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$1;->b:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$BitmapListener;

    invoke-virtual {p1}, Lcom/deepe/c/c/m;->d()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$1;->b:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$BitmapListener;

    invoke-virtual {p1}, Lcom/deepe/c/c/m;->e()[B

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/c/w;->c([B)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$BitmapListener;->onFinish(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
