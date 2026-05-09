.class Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$1;
.super Ljava/lang/Object;
.source "LargeImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->onLoadImageSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

.field final synthetic val$imageHeight:I

.field final synthetic val$imageWidth:I


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;II)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    iput p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$1;->val$imageWidth:I

    iput p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$1;->val$imageHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 525
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$1;->val$imageWidth:I

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$1;->val$imageHeight:I

    invoke-static {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;II)V

    return-void
.end method
