.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain;
.super Landroid/app/Activity;
.source "ImageFilterMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$ImageFilterAdapter;,
        Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$processImageTask;
    }
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain;)Landroid/widget/ImageView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
