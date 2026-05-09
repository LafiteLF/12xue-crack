.class public Lcom/apicloud/FNPhotograph/ExifUtils;
.super Ljava/lang/Object;
.source "ExifUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadExifData(Ljava/lang/String;)Landroid/media/ExifInterface;
    .locals 2

    .line 14
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "ExifUtils"

    const-string v1, "cannot read exif"

    .line 16
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static replaceExifTag(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveExifData(Landroid/media/ExifInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/media/ExifInterface;->saveAttributes()V

    :cond_0
    return-void
.end method

.method public static setExifRotation(Ljava/lang/String;I)V
    .locals 2

    .line 29
    :try_start_0
    rem-int/lit16 p1, p1, 0x168

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_3

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    .line 47
    :cond_4
    :goto_0
    invoke-static {p0}, Lcom/apicloud/FNPhotograph/ExifUtils;->loadExifData(Ljava/lang/String;)Landroid/media/ExifInterface;

    move-result-object p0

    const-string p1, "Orientation"

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {p0, p1, v0}, Lcom/apicloud/FNPhotograph/ExifUtils;->replaceExifTag(Landroid/media/ExifInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {p0}, Lcom/apicloud/FNPhotograph/ExifUtils;->saveExifData(Landroid/media/ExifInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "ExifUtils"

    const-string v0, "unable to save exif data with new orientation "

    .line 52
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
