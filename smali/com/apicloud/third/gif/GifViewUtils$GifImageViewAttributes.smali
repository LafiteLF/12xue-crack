.class Lcom/apicloud/third/gif/GifViewUtils$GifImageViewAttributes;
.super Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/third/gif/GifViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifImageViewAttributes"
.end annotation


# instance fields
.field final mBackgroundResId:I

.field final mSourceResId:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/third/gif/GifViewUtils$GifImageViewAttributes;->mSourceResId:I

    iput v0, p0, Lcom/apicloud/third/gif/GifViewUtils$GifImageViewAttributes;->mBackgroundResId:I

    return-void
.end method

.method constructor <init>(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;-><init>(Landroid/view/View;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/apicloud/third/gif/GifViewUtils$GifImageViewAttributes;->getResourceId(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I

    move-result p3

    iput p3, p0, Lcom/apicloud/third/gif/GifViewUtils$GifImageViewAttributes;->mSourceResId:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/apicloud/third/gif/GifViewUtils$GifImageViewAttributes;->getResourceId(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I

    move-result p1

    iput p1, p0, Lcom/apicloud/third/gif/GifViewUtils$GifImageViewAttributes;->mBackgroundResId:I

    return-void
.end method

.method private static getResourceId(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "src"

    goto :goto_0

    :cond_0
    const-string v0, "background"

    :goto_0
    const/4 v1, 0x0

    const-string v2, "http://schemas.android.com/apk/res/android"

    invoke-interface {p1, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/apicloud/third/gif/GifViewUtils;->SUPPORTED_RESOURCE_TYPE_NAMES:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p2, p1}, Lcom/apicloud/third/gif/GifViewUtils;->setResource(Landroid/widget/ImageView;ZI)Z

    move-result p0

    if-nez p0, :cond_1

    return p1

    :cond_1
    return v1
.end method
