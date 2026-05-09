.class Lcom/kukugtu/moduleutils/api/APIScaleImage$5;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "APIScaleImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kukugtu/moduleutils/api/APIScaleImage;->jsmethod_showImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

.field final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/kukugtu/moduleutils/api/APIScaleImage;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$5;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    iput-object p2, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$5;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 224
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/SimpleTarget;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object p1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$5;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string p2, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/kukugtu/moduleutils/apiutils/ReturnUtils;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 231
    iget-object p2, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$5;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    invoke-static {p2, p1}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$202(Lcom/kukugtu/moduleutils/api/APIScaleImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 232
    iget-object p2, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$5;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    invoke-static {p2}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$000(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .line 221
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/kukugtu/moduleutils/api/APIScaleImage$5;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
