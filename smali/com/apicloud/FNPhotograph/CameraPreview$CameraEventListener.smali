.class public interface abstract Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;
.super Ljava/lang/Object;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/FNPhotograph/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraEventListener"
.end annotation


# virtual methods
.method public abstract onAutoFocus()V
.end method

.method public abstract onBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end method

.method public abstract onImageSaved(Ljava/lang/String;)V
.end method
