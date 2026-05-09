.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;ILandroid/widget/ProgressBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$2;->val$progressBar:Landroid/widget/ProgressBar;

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$2;->val$view:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 465
    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 467
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 470
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$2;->val$progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 471
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method
