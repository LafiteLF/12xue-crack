.class public final Lcom/apicloud/third/gif/InputSource$UriSource;
.super Lcom/apicloud/third/gif/InputSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/third/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UriSource"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apicloud/third/gif/InputSource;-><init>(Lcom/apicloud/third/gif/InputSource;)V

    iput-object p1, p0, Lcom/apicloud/third/gif/InputSource$UriSource;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/apicloud/third/gif/InputSource$UriSource;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method open()Lcom/apicloud/third/gif/GifInfoHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/third/gif/InputSource$UriSource;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/apicloud/third/gif/InputSource$UriSource;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/apicloud/third/gif/GifInfoHandle;->openUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/apicloud/third/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
