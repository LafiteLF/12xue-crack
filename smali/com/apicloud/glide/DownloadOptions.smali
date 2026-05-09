.class interface abstract Lcom/apicloud/glide/DownloadOptions;
.super Ljava/lang/Object;
.source "DownloadOptions.java"


# virtual methods
.method public abstract downloadOnly(II)Lcom/apicloud/glide/request/FutureTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/apicloud/glide/request/FutureTarget<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract downloadOnly(Lcom/apicloud/glide/request/target/Target;)Lcom/apicloud/glide/request/target/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/apicloud/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation
.end method
