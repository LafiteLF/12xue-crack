.class public final Lcom/apicloud/third/gif/InputSource$ByteArraySource;
.super Lcom/apicloud/third/gif/InputSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/third/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteArraySource"
.end annotation


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apicloud/third/gif/InputSource;-><init>(Lcom/apicloud/third/gif/InputSource;)V

    iput-object p1, p0, Lcom/apicloud/third/gif/InputSource$ByteArraySource;->bytes:[B

    return-void
.end method


# virtual methods
.method open()Lcom/apicloud/third/gif/GifInfoHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apicloud/third/gif/GifIOException;
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/GifInfoHandle;

    iget-object v1, p0, Lcom/apicloud/third/gif/InputSource$ByteArraySource;->bytes:[B

    invoke-direct {v0, v1}, Lcom/apicloud/third/gif/GifInfoHandle;-><init>([B)V

    return-object v0
.end method
