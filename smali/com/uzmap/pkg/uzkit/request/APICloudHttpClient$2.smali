.class Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->displayImage(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

.field private final synthetic b:Landroid/widget/ImageView;

.field private final synthetic c:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;Landroid/widget/ImageView;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$2;->a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    iput-object p2, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$2;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$2;->c:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetError(Lcom/deepe/c/c/d;)V
    .locals 1

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$2;->c:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;

    iget p1, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;->errorImageResId:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$2;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$2;->c:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;

    iget v0, v0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;->errorImageResId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onGetSuccess(Lcom/deepe/c/c/m;)V
    .locals 2

    invoke-virtual {p1}, Lcom/deepe/c/c/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/ae;

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$2;->a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->access$0(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/deepe/c/c/m;->e()[B

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/c/w;->c([B)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/deepe/c/c/ae;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/deepe/c/c/ae;

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$2;->a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->access$0(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/deepe/c/c/m;->d()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/deepe/c/c/ae;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$2;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
