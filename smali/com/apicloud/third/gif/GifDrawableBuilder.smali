.class public Lcom/apicloud/third/gif/GifDrawableBuilder;
.super Lcom/apicloud/third/gif/GifDrawableInit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/third/gif/GifDrawableInit<",
        "Lcom/apicloud/third/gif/GifDrawableBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/third/gif/GifDrawableInit;-><init>()V

    return-void
.end method


# virtual methods
.method protected self()Lcom/apicloud/third/gif/GifDrawableBuilder;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic self()Lcom/apicloud/third/gif/GifDrawableInit;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawableBuilder;->self()Lcom/apicloud/third/gif/GifDrawableBuilder;

    move-result-object v0

    return-object v0
.end method
