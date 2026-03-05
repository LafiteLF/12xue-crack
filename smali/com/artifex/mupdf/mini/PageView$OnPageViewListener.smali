.class public interface abstract Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;
.super Ljava/lang/Object;
.source "PageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artifex/mupdf/mini/PageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPageViewListener"
.end annotation


# virtual methods
.method public abstract gotoPage(I)V
.end method

.method public abstract gotoURI(Ljava/lang/String;)V
.end method

.method public abstract onBackward()V
.end method

.method public abstract onForward()V
.end method

.method public abstract onPageViewZoomChanged(F)V
.end method

.method public abstract onSizeChanged(II)V
.end method
