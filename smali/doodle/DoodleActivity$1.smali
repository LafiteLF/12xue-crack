.class Ldoodle/DoodleActivity$1;
.super Ljava/lang/Object;
.source "DoodleActivity.java"

# interfaces
.implements Ldoodle/IDoodleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/DoodleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldoodle/DoodleActivity;


# direct methods
.method constructor <init>(Ldoodle/DoodleActivity;)V
    .locals 0

    .line 179
    iput-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    .line 221
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    const/16 p2, -0x6f

    invoke-virtual {p1, p2}, Ldoodle/DoodleActivity;->setResult(I)V

    .line 222
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-virtual {p1}, Ldoodle/DoodleActivity;->finish()V

    return-void
.end method

.method public onReady(Ldoodle/core/IDoodle;)V
    .locals 3

    .line 227
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$200(Ldoodle/DoodleActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    iget-object v0, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$100(Ldoodle/DoodleActivity;)Ldoodle/DoodleView;

    move-result-object v0

    invoke-virtual {v0}, Ldoodle/DoodleView;->getWidth()I

    move-result v0

    iget-object v1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v1}, Ldoodle/DoodleActivity;->access$100(Ldoodle/DoodleActivity;)Ldoodle/DoodleView;

    move-result-object v1

    invoke-virtual {v1}, Ldoodle/DoodleView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 229
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$000(Ldoodle/DoodleActivity;)Ldoodle/DoodleParams;

    move-result-object p1

    iget p1, p1, Ldoodle/DoodleParams;->mPaintUnitSize:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$000(Ldoodle/DoodleActivity;)Ldoodle/DoodleParams;

    move-result-object p1

    iget p1, p1, Ldoodle/DoodleParams;->mPaintUnitSize:F

    iget-object v1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getUnitSize()F

    move-result v1

    mul-float/2addr p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    cmpg-float v1, p1, v0

    if-gtz v1, :cond_2

    .line 231
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$000(Ldoodle/DoodleActivity;)Ldoodle/DoodleParams;

    move-result-object p1

    iget p1, p1, Ldoodle/DoodleParams;->mPaintPixelSize:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$000(Ldoodle/DoodleActivity;)Ldoodle/DoodleParams;

    move-result-object p1

    iget p1, p1, Ldoodle/DoodleParams;->mPaintPixelSize:F

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object p1

    invoke-interface {p1}, Ldoodle/core/IDoodle;->getSize()F

    move-result p1

    .line 234
    :cond_2
    :goto_1
    iget-object v1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v1

    invoke-interface {v1, p1}, Ldoodle/core/IDoodle;->setSize(F)V

    .line 236
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object p1

    sget-object v1, Ldoodle/DoodlePen;->BRUSH:Ldoodle/DoodlePen;

    invoke-interface {p1, v1}, Ldoodle/core/IDoodle;->setPen(Ldoodle/core/IDoodlePen;)V

    .line 237
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object p1

    sget-object v1, Ldoodle/DoodleShape;->HAND_WRITE:Ldoodle/DoodleShape;

    invoke-interface {p1, v1}, Ldoodle/core/IDoodle;->setShape(Ldoodle/core/IDoodleShape;)V

    .line 238
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$000(Ldoodle/DoodleActivity;)Ldoodle/DoodleParams;

    move-result-object p1

    iget p1, p1, Ldoodle/DoodleParams;->mZoomerScale:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    .line 239
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    sget v0, Lcom/kukugtu/moduleplotting/R$id;->btn_zoomer:I

    invoke-virtual {p1, v0}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :cond_3
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object p1

    iget-object v0, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$000(Ldoodle/DoodleActivity;)Ldoodle/DoodleParams;

    move-result-object v0

    iget v0, v0, Ldoodle/DoodleParams;->mZoomerScale:F

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setZoomerScale(F)V

    .line 244
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$400(Ldoodle/DoodleActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Ldoodle/DoodlePen;->BRUSH:Ldoodle/DoodlePen;

    iget-object v1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$400(Ldoodle/DoodleActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    const/high16 v1, 0x41a00000    # 20.0f

    iget-object v2, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v2}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v2

    invoke-interface {v2}, Ldoodle/core/IDoodle;->getUnitSize()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$400(Ldoodle/DoodleActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Ldoodle/DoodlePen;->ERASER:Ldoodle/DoodlePen;

    iget-object v1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$400(Ldoodle/DoodleActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Ldoodle/DoodlePen;->TEXT:Ldoodle/DoodlePen;

    const/high16 v1, 0x41880000    # 17.0f

    iget-object v2, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v2}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v2

    invoke-interface {v2}, Ldoodle/core/IDoodle;->getUnitSize()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$400(Ldoodle/DoodleActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Ldoodle/DoodlePen;->BITMAP:Ldoodle/DoodlePen;

    const/high16 v1, 0x42a00000    # 80.0f

    iget-object v2, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v2}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v2

    invoke-interface {v2}, Ldoodle/core/IDoodle;->getUnitSize()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSaved(Ldoodle/core/IDoodle;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .locals 5

    .line 184
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$000(Ldoodle/DoodleActivity;)Ldoodle/DoodleParams;

    move-result-object p1

    iget-object p1, p1, Ldoodle/DoodleParams;->mSavePath:Ljava/lang/String;

    .line 185
    iget-object p3, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p3}, Ldoodle/DoodleActivity;->access$000(Ldoodle/DoodleActivity;)Ldoodle/DoodleParams;

    move-result-object p3

    iget-boolean p3, p3, Ldoodle/DoodleParams;->mSavePathIsDir:Z

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ".jpg"

    if-eqz v0, :cond_0

    .line 187
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p3

    const-string v0, "DCIM"

    invoke-direct {p1, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    new-instance p3, Ljava/io/File;

    const-string v0, "Doodle"

    invoke-direct {p3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 193
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    move-object v4, p3

    move-object p3, p1

    move-object p1, v4

    .line 201
    :goto_0
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    const/4 p3, 0x0

    .line 205
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 206
    :try_start_1
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5f

    invoke-virtual {p2, p3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 207
    iget-object p2, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-virtual {p2}, Ldoodle/DoodleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroids/utils/ImageUtils;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    .line 208
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "key_image_path"

    .line 209
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Ldoodle/DoodleActivity;->setResult(ILandroid/content/Intent;)V

    .line 211
    iget-object p1, p0, Ldoodle/DoodleActivity$1;->this$0:Ldoodle/DoodleActivity;

    invoke-virtual {p1}, Ldoodle/DoodleActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    invoke-static {v0}, Landroids/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object p3, v0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object p3, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 213
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, -0x2

    .line 214
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ldoodle/DoodleActivity$1;->onError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 216
    invoke-static {p3}, Landroids/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    :goto_2
    return-void

    :goto_3
    invoke-static {p3}, Landroids/utils/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 217
    throw p1
.end method
