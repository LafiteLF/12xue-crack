.class public interface abstract Lcom/apicloud/glide/load/resource/bitmap/BitmapDecoder;
.super Ljava/lang/Object;
.source "BitmapDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract decode(Ljava/lang/Object;Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/apicloud/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;",
            "II",
            "Lcom/apicloud/glide/load/DecodeFormat;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method
