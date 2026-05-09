.class Lcom/kukugtu/moduleutils/api/APIScaleImage$1;
.super Ljava/lang/Object;
.source "APIScaleImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kukugtu/moduleutils/api/APIScaleImage;->jsmethod_showImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

.field final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/kukugtu/moduleutils/api/APIScaleImage;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    iput-object p2, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 79
    iget-object p1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    invoke-static {p1}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$100(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    invoke-static {v0}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$000(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 80
    iget-object p1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    invoke-static {p1}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$300(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v0, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    invoke-static {v0}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$200(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    invoke-static {v1}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$200(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 81
    iget-object p1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    invoke-static {p1}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$200(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    invoke-static {v1}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$200(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    invoke-static {v1}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$200(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    .line 82
    invoke-static {v1}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$300(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Landroid/graphics/Matrix;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 81
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$202(Lcom/kukugtu/moduleutils/api/APIScaleImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 83
    iget-object p1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    new-instance v0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    iget-object v1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$002(Lcom/kukugtu/moduleutils/api/APIScaleImage;Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;)Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    .line 84
    iget-object p1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    invoke-static {p1}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$000(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    invoke-static {v0}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$200(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    iget-object v0, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    invoke-static {v0}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$100(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    invoke-static {v1}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->access$000(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
