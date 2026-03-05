.class Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/third/gif/GifViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifViewAttributes"
.end annotation


# instance fields
.field freezesAnimation:Z

.field final mLoopCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    return-void
.end method

.method constructor <init>(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;->freezesAnimation:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/third/gif/GifViewUtils$GifViewAttributes;->mLoopCount:I

    return-void
.end method
