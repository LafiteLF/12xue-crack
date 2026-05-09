.class final Lcom/apicloud/third/gif/GifRenderingExecutor$InstanceHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/third/gif/GifRenderingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/apicloud/third/gif/GifRenderingExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/apicloud/third/gif/GifRenderingExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apicloud/third/gif/GifRenderingExecutor;-><init>(Lcom/apicloud/third/gif/GifRenderingExecutor;)V

    sput-object v0, Lcom/apicloud/third/gif/GifRenderingExecutor$InstanceHolder;->INSTANCE:Lcom/apicloud/third/gif/GifRenderingExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/apicloud/third/gif/GifRenderingExecutor;
    .locals 1

    sget-object v0, Lcom/apicloud/third/gif/GifRenderingExecutor$InstanceHolder;->INSTANCE:Lcom/apicloud/third/gif/GifRenderingExecutor;

    return-object v0
.end method
