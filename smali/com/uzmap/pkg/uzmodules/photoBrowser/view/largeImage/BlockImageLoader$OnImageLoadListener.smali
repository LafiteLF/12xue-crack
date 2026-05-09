.class public interface abstract Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;
.super Ljava/lang/Object;
.source "BlockImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnImageLoadListener"
.end annotation


# virtual methods
.method public abstract onBlockImageLoadFinished()V
.end method

.method public abstract onLoadFail(Ljava/lang/Exception;)V
.end method

.method public abstract onLoadImageSize(II)V
.end method
