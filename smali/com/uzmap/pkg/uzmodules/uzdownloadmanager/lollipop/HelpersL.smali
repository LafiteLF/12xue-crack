.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/HelpersL;
.super Ljava/lang/Object;
.source "HelpersL.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableBytes(Ljava/io/FileDescriptor;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

    move-result-object p0

    .line 17
    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_bavail:J

    iget-wide v2, p0, Landroid/system/StructStatVfs;->f_bsize:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x2000000

    sub-long/2addr v0, v2

    return-wide v0

    .line 19
    :catch_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method
