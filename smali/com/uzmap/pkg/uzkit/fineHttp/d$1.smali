.class Lcom/uzmap/pkg/uzkit/fineHttp/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$BitmapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzkit/fineHttp/d;->executeBitmap(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/fineHttp/BitmapListener;Landroid/graphics/BitmapFactory$Options;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzkit/fineHttp/d;

.field private final synthetic b:Lcom/uzmap/pkg/uzkit/fineHttp/BitmapListener;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzkit/fineHttp/d;Lcom/uzmap/pkg/uzkit/fineHttp/BitmapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$1;->a:Lcom/uzmap/pkg/uzkit/fineHttp/d;

    iput-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$1;->b:Lcom/uzmap/pkg/uzkit/fineHttp/BitmapListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$1;->b:Lcom/uzmap/pkg/uzkit/fineHttp/BitmapListener;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/BitmapListener;->onResult(ILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onFinish(Landroid/graphics/Bitmap;Z)V
    .locals 1

    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$1;->b:Lcom/uzmap/pkg/uzkit/fineHttp/BitmapListener;

    if-eqz p2, :cond_0

    const/16 v0, 0xc8

    invoke-interface {p2, v0, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/BitmapListener;->onResult(ILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
