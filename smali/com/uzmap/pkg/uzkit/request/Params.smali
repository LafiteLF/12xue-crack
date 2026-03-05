.class interface abstract Lcom/uzmap/pkg/uzkit/request/Params;
.super Ljava/lang/Object;


# virtual methods
.method public abstract contentSafe()Z
.end method

.method public abstract getAdditionalHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHttpEntity()Lcom/deepe/c/j/e/a/a;
.end method

.method public abstract serialize()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
