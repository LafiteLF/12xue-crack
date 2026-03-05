.class public Lcom/apicloud/devlop/FNImageClip/SaveUtil;
.super Ljava/lang/Object;
.source "SaveUtil.java"


# instance fields
.field private isSaveToAlbum:Z

.field public mAlbumPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImgClipOpen:Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;

.field private mImgName:Ljava/lang/String;

.field private mImgPath:Ljava/lang/String;

.field private mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private mMoudle:Lcom/apicloud/devlop/FNImageClip/UzImgClip;

.field private mQuality:D


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Context;Lcom/apicloud/devlop/FNImageClip/UzImgClip;Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;D)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 31
    iput-object p2, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mContext:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mMoudle:Lcom/apicloud/devlop/FNImageClip/UzImgClip;

    .line 33
    iput-object p4, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mImgClipOpen:Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;

    const-string p2, "copyToAlbum"

    const/4 p3, 0x0

    .line 34
    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->isSaveToAlbum:Z

    .line 35
    iput-wide p5, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mQuality:D

    .line 36
    invoke-direct {p0}, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->initImgPath()V

    return-void
.end method

.method private existSDCard()Z
    .locals 2

    .line 40
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initImgPath()V
    .locals 4

    .line 49
    invoke-direct {p0}, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->existSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 54
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "destPath"

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mImgClipOpen:Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getSavePath()Ljava/lang/String;

    move-result-object v1

    .line 59
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ".jpg"

    if-lez v2, :cond_2

    .line 60
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mMoudle:Lcom/apicloud/devlop/FNImageClip/UzImgClip;

    invoke-virtual {v0, v1}, Lcom/apicloud/devlop/FNImageClip/UzImgClip;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mImgPath:Ljava/lang/String;

    const/16 v1, 0x2f

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mImgName:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mImgPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mImgPath:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mImgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mImgName:Ljava/lang/String;

    goto :goto_1

    .line 67
    :cond_2
    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mImgPath:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mImgName:Ljava/lang/String;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public saveImage(Landroid/graphics/Bitmap;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/io/File;Ljava/lang/String;DZ)V
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p5, v0

    double-to-int p5, p5

    .line 103
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "intQuality : "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string v0, "debug"

    invoke-static {v0, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    :try_start_0
    const-string p6, ".jpg"

    .line 106
    invoke-virtual {p4, p6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 107
    new-instance p6, Ljava/io/File;

    invoke-direct {p6, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    .line 109
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 110
    sget-object p6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p6, p5, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const-string p6, ".png"

    if-eqz p4, :cond_1

    .line 112
    :try_start_1
    invoke-virtual {p4, p6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    new-instance p6, Ljava/io/File;

    invoke-direct {p6, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    .line 115
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 116
    sget-object p6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p6, p5, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1

    :cond_1
    const-string v0, "."

    .line 119
    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "png"

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 122
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 124
    :goto_0
    new-instance p6, Ljava/io/File;

    invoke-direct {p6, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    .line 126
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 127
    sget-object p6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p6, p5, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 131
    :goto_1
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V

    if-eqz p7, :cond_4

    .line 135
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string p4, "destPath"

    .line 137
    invoke-virtual {p1, p4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    iget-object p3, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mAlbumPath:Ljava/lang/String;

    if-eqz p3, :cond_3

    const-string p3, "albumPath"

    .line 139
    iget-object p4, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mAlbumPath:Ljava/lang/String;

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_2
    move-exception p3

    .line 141
    :try_start_3
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_2
    const/4 p3, 0x0

    .line 143
    invoke-virtual {p2, p1, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    goto :goto_5

    .line 145
    :cond_4
    iput-object p3, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mAlbumPath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 150
    :goto_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 148
    :goto_4
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_5
    return-void
.end method

.method public saveOutput(Landroid/graphics/Bitmap;)V
    .locals 10

    .line 75
    iget-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->isSaveToAlbum:Z

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 77
    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 79
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 84
    :cond_0
    iget-object v4, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-wide v7, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mQuality:D

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->saveImage(Landroid/graphics/Bitmap;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/io/File;Ljava/lang/String;DZ)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mImgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 88
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mImgPath:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 92
    :cond_2
    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v5, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mImgName:Ljava/lang/String;

    iget-wide v6, p0, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->mQuality:D

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/apicloud/devlop/FNImageClip/SaveUtil;->saveImage(Landroid/graphics/Bitmap;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/io/File;Ljava/lang/String;DZ)V

    :cond_3
    return-void
.end method
