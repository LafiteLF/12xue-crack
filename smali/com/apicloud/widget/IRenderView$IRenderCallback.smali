.class public interface abstract Lcom/apicloud/widget/IRenderView$IRenderCallback;
.super Ljava/lang/Object;
.source "IRenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/widget/IRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRenderCallback"
.end annotation


# virtual methods
.method public abstract onSurfaceChanged(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;III)V
.end method

.method public abstract onSurfaceCreated(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;II)V
.end method

.method public abstract onSurfaceDestroyed(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;)V
.end method
