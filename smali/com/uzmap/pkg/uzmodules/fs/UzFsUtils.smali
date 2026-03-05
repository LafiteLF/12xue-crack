.class public Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "UzFsUtils.java"


# static fields
.field public static final ERR_CAN_NOT_READ:I = 0x2

.field public static final ERR_NO_SUCH_FILE:I = 0x1

.field public static final ERR_SUCCESS:I = 0x0

.field private static REQ_CODE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "UzFsUtils"

.field private static final readFlag:I = 0x1

.field private static final read_write_Flag:I = 0x3

.field private static final writeFlag:I = 0x2


# instance fields
.field private err:Lorg/json/JSONObject;

.field private fd:Ljava/lang/String;

.field private fileLen:J

.field private iomap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private readoffset:I

.field private ret:Lorg/json/JSONObject;

.field private size:J

.field private textSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    .line 52
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    .line 53
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    .line 54
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->iomap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->transferTo(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;)Lorg/json/JSONObject;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$200(Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;)Lorg/json/JSONObject;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    return-object p0
.end method

.method private checkStorage()Z
    .locals 2

    .line 1239
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

.method private copy(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 973
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 974
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 976
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 p2, 0x400

    :try_start_1
    new-array p2, p2, [B

    .line 979
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x0

    .line 980
    invoke-virtual {v1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 985
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 989
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 991
    throw p1

    .line 989
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_1
    move-exception p2

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p2

    :goto_2
    if-eqz p1, :cond_4

    .line 985
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_3

    .line 989
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 991
    :cond_3
    throw p1

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 989
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 992
    :cond_5
    throw p2
.end method

.method private copyAssetRes(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10

    .line 1348
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1352
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p3, v1

    :goto_0
    if-eqz p3, :cond_1

    const/16 v0, 0x2f

    .line 1358
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/2addr v0, v2

    .line 1360
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1362
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1363
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1365
    :try_start_1
    invoke-direct {p0, p3, p2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->streamCopy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception p1

    .line 1367
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v3

    .line 1375
    :cond_1
    :try_start_2
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p3

    .line 1377
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    move-object p3, v1

    .line 1379
    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 1381
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1382
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_2
    move v5, v3

    .line 1384
    :goto_2
    array-length v6, p3

    if-ge v5, v6, :cond_7

    .line 1385
    aget-object v6, p3, v5

    const-string v7, "."

    .line 1386
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1387
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 1388
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->copyAssetRes(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_5

    .line 1390
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v7, v6, v3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->copyAssetRes(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_5

    .line 1394
    :cond_4
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1395
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1396
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1399
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_6

    .line 1401
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v6

    .line 1403
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1407
    :cond_6
    :try_start_4
    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v6

    .line 1409
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    move-object v6, v1

    .line 1413
    :goto_4
    :try_start_5
    invoke-direct {p0, v6, v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->streamCopy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v6

    .line 1415
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_7
    return v2
.end method

.method private copyDirectory(Ljava/io/File;Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1074
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1079
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFile(Ljava/lang/String;Z)Z

    .line 1083
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v2, p1, v0

    .line 1084
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1085
    invoke-direct {p0, v2, v1, p3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    goto :goto_1

    .line 1087
    :cond_1
    invoke-direct {p0, v2, v1, p3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1038
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    .line 1039
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFile(Ljava/lang/String;Z)Z

    .line 1041
    :cond_0
    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "//"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1042
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 1043
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    const-wide/16 v1, 0x0

    .line 1044
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 1045
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    .line 1046
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V

    return-void
.end method

.method private createFile(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Z)V
    .locals 3

    .line 1197
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->checkStorage()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "status"

    if-eqz v0, :cond_0

    .line 1199
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFile(Ljava/lang/String;Z)Z

    move-result p2

    .line 1200
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p3, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1201
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1203
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1207
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    const/4 p3, 0x0

    invoke-virtual {p2, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1208
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string p3, "msg"

    const-string v0, "\u5185\u5b58\u5361\u4e0d\u53ef\u7528"

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 1210
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1212
    :goto_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, p3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    :goto_1
    return-void
.end method

.method private createFile(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V
    .locals 4

    const-string v0, "path"

    .line 1176
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->checkStorage()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "status"

    if-eqz v1, :cond_0

    .line 1179
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFile(Ljava/lang/String;Z)Z

    move-result p2

    .line 1180
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1181
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1183
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1187
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    const/4 v0, 0x0

    invoke-virtual {p2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1188
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string v0, "msg"

    const-string v1, "\u5185\u5b58\u5361\u4e0d\u53ef\u7528"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 1190
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1192
    :goto_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    :goto_1
    return-void
.end method

.method public static getExtSDCardPathList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "data"

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "mounted"

    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v4, "mount"

    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 87
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 88
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v4, 0x1

    .line 91
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v6, "xDebug"

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "===>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "fat"

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "fuse"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "storage"

    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_2
    const-string v6, "secure"

    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "asec"

    .line 97
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "firmware"

    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "shell"

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "obb"

    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "legacy"

    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    const-string v6, " "

    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 105
    array-length v6, v5

    if-lt v4, v6, :cond_4

    goto :goto_0

    .line 109
    :cond_4
    aget-object v5, v5, v4

    const-string v6, "/"

    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Data"

    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_0

    .line 114
    :cond_5
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 116
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_0

    .line 120
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 119
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto/16 :goto_0

    .line 125
    :cond_7
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    return-object v1
.end method

.method private getFile(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1217
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1218
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1220
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 1221
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1222
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    if-eqz p2, :cond_1

    .line 1225
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    return p1

    .line 1227
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static getFileMD5(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x400

    new-array v2, v1, [B

    :try_start_0
    const-string v3, "MD5"

    .line 1723
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    .line 1724
    invoke-virtual {p0, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1725
    invoke-virtual {v3, v2, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 1727
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1732
    new-instance p0, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    .line 1733
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 1729
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private getSize(Ljava/io/File;)V
    .locals 4

    .line 1287
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1288
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1292
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 1293
    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getSize(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1296
    :cond_1
    iget-wide v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->size:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->size:J

    :cond_2
    return-void
.end method

.method private isAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "android_asset/"

    .line 1438
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1439
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    .line 1440
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private moveTo(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "msg"

    const-string v3, "status"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_7

    .line 295
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    invoke-direct {p0, p2, v5}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFile(Ljava/lang/String;Z)Z

    .line 299
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const-string v6, "//"

    if-eqz v1, :cond_2

    .line 300
    new-instance p2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 302
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 303
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string p2, "\u6587\u4ef6\u5df2\u5b58\u5728"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p3, p1, p2, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    .line 307
    :cond_1
    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void

    .line 310
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 314
    :cond_3
    :goto_0
    array-length v2, v1

    if-ge v4, v2, :cond_6

    .line 316
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 318
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->moveTo(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 320
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 322
    :cond_4
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v4

    .line 323
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 325
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 327
    :cond_5
    aget-object v3, v1, v4

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 329
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 332
    :cond_7
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->isAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 334
    invoke-direct {p0, p1, p2, v5}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->copyAssetRes(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 336
    :cond_8
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-nez v4, :cond_9

    .line 338
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string p2, "\u6e90\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    :cond_9
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p3, p1, p2, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    :goto_1
    return-void
.end method

.method private open(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->iomap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1001
    :cond_1
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->iomap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 998
    :cond_2
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->iomap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private readAsText(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    .line 842
    invoke-virtual/range {p0 .. p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 843
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->iomap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const-string v7, "\u6ca1\u6709\u6253\u5f00\u6587\u4ef6\u6216\u6587\u4ef6\u6253\u5f00\u65b9\u5f0f\u4e0d\u5bf9"

    const-string v8, "msg"

    const-string v9, "status"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v6, :cond_0

    .line 845
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 846
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 847
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v4, v1, v2, v11}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    .line 851
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v11, :cond_1

    const/4 v12, 0x3

    if-eq v6, v12, :cond_1

    .line 856
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 857
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 858
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v4, v1, v2, v11}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    .line 862
    :cond_1
    new-array v6, v3, [B

    const-string v7, "android_asset"

    .line 863
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x2f

    .line 867
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/2addr v7, v11

    .line 868
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 869
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->context()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-direct {v8, v12, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 870
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 871
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 872
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->context()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const/16 v13, 0xf

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 873
    invoke-direct {p0, v5, v8}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    :cond_2
    move-object v5, v7

    .line 877
    :cond_3
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v7, v5, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez v3, :cond_4

    .line 881
    :goto_0
    invoke-virtual {v7, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v8

    if-ltz v8, :cond_8

    .line 882
    invoke-virtual {v5, v6, v10, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_4
    if-lez v2, :cond_5

    int-to-long v12, v2

    goto :goto_1

    :cond_5
    const-wide/16 v12, 0x0

    .line 885
    :goto_1
    invoke-virtual {v7, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    if-ltz v2, :cond_6

    move v8, v3

    goto :goto_2

    .line 886
    :cond_6
    iget v8, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    if-ltz v8, :cond_7

    goto :goto_2

    :cond_7
    move v8, v10

    :goto_2
    invoke-virtual {v7, v6, v10, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v8

    .line 887
    invoke-virtual {v5, v6, v10, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 889
    :cond_8
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 890
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 891
    array-length v6, v5

    .line 892
    new-instance v7, Ljava/lang/String;

    move-object/from16 v8, p4

    invoke-direct {v7, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 893
    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fd:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 895
    iput v6, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    .line 896
    iput v6, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->textSize:I

    goto :goto_3

    :cond_9
    if-eqz p6, :cond_a

    add-int v1, v2, v3

    .line 899
    iput v1, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    goto :goto_3

    .line 901
    :cond_a
    iput v2, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    .line 904
    :goto_3
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 905
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v1, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 906
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v4, v1, v11}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private remove(Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1128
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1129
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    .line 1133
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1134
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1135
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1136
    aget-object v2, v0, v1

    invoke-direct {p0, v2, p2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->remove(Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    goto :goto_1

    .line 1138
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1141
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 1143
    :cond_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    const-string v0, "status"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1144
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string v0, "msg"

    const-string v1, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1145
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    :goto_2
    return-void
.end method

.method private renameTo(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 414
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    const/4 p2, 0x0

    const-string v0, "status"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 415
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string v0, "msg"

    const-string v1, "\u6e90\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return p2

    .line 419
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method private showAssetDir(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1108
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "/"

    .line 1111
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2f

    .line 1112
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1113
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1115
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1117
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1119
    array-length v0, p1

    if-lez v0, :cond_1

    .line 1120
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1121
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p2
.end method

.method private showDir(Ljava/io/File;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1093
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1094
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    .line 1095
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1096
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 1101
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1102
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private streamCopy(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1422
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1423
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1424
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1426
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x2000

    new-array p2, p2, [B

    .line 1429
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    .line 1430
    invoke-virtual {v0, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 1432
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1433
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private transferTo(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1010
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1011
    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1012
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1013
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1016
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1017
    invoke-direct {p0, v0, v1, p3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    goto :goto_0

    .line 1019
    :cond_0
    invoke-direct {p0, v0, v1, p3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    goto :goto_0

    .line 1023
    :cond_1
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->isAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    const-string v0, "/"

    .line 1025
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2f

    .line 1026
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1027
    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1029
    :cond_2
    invoke-direct {p0, p1, p2, v3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->copyAssetRes(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    move v3, p1

    goto :goto_0

    :cond_3
    move v3, p3

    :goto_0
    return v3
.end method


# virtual methods
.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1652
    invoke-virtual {p1, p2, p3, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V
    .locals 2

    .line 2582
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    .line 2584
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 p2, 0x0

    .line 2585
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2587
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V
    .locals 3

    .line 1637
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1638
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "status"

    .line 1641
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "code"

    .line 1642
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "msg"

    .line 1643
    invoke-virtual {v1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1645
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 1648
    invoke-virtual {p1, v0, v1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZLjava/lang/String;)V
    .locals 2

    .line 1704
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    .line 1706
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "md5Str"

    .line 1707
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1709
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 1711
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public callback_failed(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 2561
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    const/4 v2, 0x0

    .line 2563
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2564
    invoke-virtual {p1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2566
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public cb_failed()Lorg/json/JSONObject;
    .locals 3

    .line 2571
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    const/4 v2, 0x0

    .line 2573
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2575
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public createCommonRet(ZILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 2041
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "code"

    .line 2043
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2044
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "msg"

    .line 2045
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p2, "status"

    .line 2047
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "fd"

    .line 2048
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2050
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public createCommonRet(ZILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 2

    .line 1796
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "code"

    .line 1799
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1800
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "msg"

    .line 1801
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p2, "status"

    .line 1803
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 1804
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1806
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1783
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "code"

    .line 1786
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "msg"

    .line 1787
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "status"

    const/4 p2, 0x0

    .line 1788
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1790
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public createRetWithData(ZILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1813
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "code"

    .line 1816
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1817
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "msg"

    .line 1818
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p2, "status"

    .line 1820
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 1821
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1823
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public createSuccessRet()Lorg/json/JSONObject;
    .locals 3

    .line 1772
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    const/4 v2, 0x1

    .line 1775
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1777
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public generatePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 1332
    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    .line 1333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "file://"

    .line 1335
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1336
    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "android_asset"

    .line 1337
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :goto_0
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileContent(Ljava/io/File;)Ljava/lang/StringBuilder;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1580
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 1585
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1588
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1589
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1592
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 1594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1599
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1597
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getFileLength(Ljava/lang/String;)J
    .locals 4

    .line 707
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    .line 708
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 710
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 712
    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UzFsUtils"

    .line 713
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :try_start_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 717
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p1

    return-wide v0

    :catch_0
    move-exception p1

    .line 720
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return-wide v1
.end method

.method public getFileNameByPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1898
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "/"

    .line 1899
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 1903
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public isBlank(Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 573
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 576
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public isEmpty(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 584
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public jsmethod_close(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    const-string v0, "status"

    const-string v1, "fd"

    .line 393
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 395
    :try_start_0
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->iomap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 397
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 399
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    :try_start_1
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 402
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string v3, "msg"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 405
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public jsmethod_closeSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 1

    const-string v0, "fd"

    .line 2286
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2287
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->iomap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createSuccessRet()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_copyTo(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 423
    new-instance v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;

    const-string v1, "fs-copyTo"

    invoke-direct {v0, p0, v1, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;-><init>(Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 444
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;->start()V

    return-void
.end method

.method public jsmethod_copyToSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 4

    const-string v0, "oldPath"

    .line 1915
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "$"

    const-string v2, "%"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "newPath"

    .line 1916
    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1918
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1919
    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1923
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1925
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1928
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1929
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFileNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 1932
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v3, 0x0

    .line 1933
    invoke-virtual {v2, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 1935
    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1936
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1937
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createSuccessRet()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1943
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1944
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const/4 v0, 0x2

    const-string v1, "IO \u5f02\u5e38"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 1939
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1940
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const/4 v0, 0x1

    const-string v1, "\u627e\u4e0d\u5230\u6b64\u6587\u4ef6"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_createDir(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 6

    const-string v0, "msg"

    const-string v1, "status"

    const-string v2, "path"

    .line 148
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 150
    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFile(Ljava/lang/String;Z)Z

    move-result v2

    .line 151
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 152
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 154
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :try_start_2
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 157
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v4, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 160
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void

    .line 163
    :goto_1
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    throw p1
.end method

.method public jsmethod_createDirSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 4

    const-string v0, "path"

    .line 1756
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1757
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "\u627e\u4e0d\u5230\u6587\u4ef6\u9519\u8bef"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1758
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v3, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 1760
    :cond_0
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1761
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1762
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1763
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const/4 v0, 0x7

    const-string v1, "\u6587\u4ef6\u5df2\u5b58\u5728\u9519\u8bef"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 1765
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1766
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createSuccessRet()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 1768
    :cond_2
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v3, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_createFile(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createFile(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    return-void
.end method

.method public jsmethod_createFileSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 3

    const-string v0, "path"

    .line 1862
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1863
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u627e\u4e0d\u5230\u6b64\u6587\u4ef6"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1864
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v2, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 1868
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->checkStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFile(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1869
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createSuccessRet()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1874
    :cond_1
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v2, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 1872
    :catch_0
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v2, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_cutFile(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 12

    const-string v0, "path"

    .line 2515
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cutFiles"

    .line 2516
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2518
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2519
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2520
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v3, 0x1

    const-string v4, "cutSize"

    .line 2523
    invoke-virtual {p1, v4, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 2525
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    mul-int/lit16 v4, v4, 0x400

    mul-int/lit16 v4, v4, 0x400

    .line 2528
    new-array v0, v4, [B

    .line 2531
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    .line 2533
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 2534
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "part"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2536
    invoke-virtual {v10, v0, v6, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2537
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    add-int/lit8 v7, v7, 0x1

    .line 2539
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 2542
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "status"

    .line 2543
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2544
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2545
    invoke-virtual {p1, v0, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2555
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2556
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback_failed(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2552
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2553
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback_failed(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 2549
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2550
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback_failed(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    :goto_1
    return-void
.end method

.method public jsmethod_cutFileSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 11

    const-string v0, "path"

    .line 2609
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cutFiles"

    .line 2610
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2612
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2613
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2614
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v3, 0x1

    const-string v4, "cutSize"

    .line 2617
    invoke-virtual {p1, v4, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 2619
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    mul-int/lit16 p1, p1, 0x400

    mul-int/lit16 p1, p1, 0x400

    .line 2622
    new-array p1, p1, [B

    .line 2625
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 2627
    :goto_0
    invoke-virtual {v4, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 2628
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "part"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2630
    invoke-virtual {v9, p1, v5, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2631
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    add-int/lit8 v6, v6, 0x1

    .line 2633
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 2636
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "status"

    .line 2637
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2638
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2639
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2647
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2648
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->cb_failed()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 2644
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 2645
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->cb_failed()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :catch_2
    move-exception p1

    .line 2641
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2642
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->cb_failed()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_exist(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 6

    const-string v0, "directory"

    const-string v1, "exist"

    const-string v2, "path"

    .line 1302
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1303
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1304
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1306
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 1307
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1308
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1309
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    goto :goto_1

    .line 1311
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 1312
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1313
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1314
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    :goto_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1320
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1322
    :cond_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1317
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1319
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1320
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1322
    :cond_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1323
    :goto_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    return-void

    .line 1319
    :goto_3
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1320
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1322
    :cond_5
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1323
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1325
    :cond_6
    throw p1
.end method

.method public jsmethod_existSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 5

    const-string v0, "path"

    .line 2297
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2298
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2299
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2301
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "directory"

    const-string v2, "exist"

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 2303
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2304
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2305
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2306
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 2310
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2311
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v4, 0x1

    .line 2312
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    move v3, v4

    .line 2313
    :cond_1
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2314
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2318
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2320
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const/4 v0, -0x1

    const-string v1, "\u64cd\u4f5c\u5931\u8d25"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_getAttribute(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 10

    const-string v0, "path"

    .line 1246
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1248
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "msg"

    const-string v3, "status"

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 1249
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1252
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string v1, "\u6587\u4ef6\u6216\u6587\u4ef6\u5939\u4e0d\u5b58\u5728"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1253
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto :goto_1

    :cond_0
    const-wide/16 v5, 0x0

    .line 1256
    iput-wide v5, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->size:J

    .line 1258
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1259
    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getSize(Ljava/io/File;)V

    const-string v0, "folder"

    goto :goto_0

    .line 1262
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->size:J

    const-string v0, "file"

    .line 1265
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 1266
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "modificationDate"

    .line 1267
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0x3e8

    div-long/2addr v1, v8

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "size"

    .line 1268
    iget-wide v6, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->size:J

    invoke-virtual {v5, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 1269
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1270
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1271
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    const-string v1, "attribute"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1272
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    goto :goto_1

    .line 1275
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1276
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string v1, "\u8def\u5f84\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1277
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1280
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public jsmethod_getAttributeSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 9

    const-string v0, "path"

    .line 2328
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    .line 2330
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2331
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2332
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2333
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v1, "\u6587\u4ef6\u6216\u6587\u4ef6\u5939\u4e0d\u5b58\u5728"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_0
    const-wide/16 v2, 0x0

    .line 2336
    iput-wide v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->size:J

    .line 2338
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2339
    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getSize(Ljava/io/File;)V

    const-string p1, "folder"

    goto :goto_0

    .line 2342
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->size:J

    const-string p1, "file"

    .line 2345
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 2346
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2347
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "modificationDate"

    .line 2348
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long/2addr v1, v7

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "size"

    .line 2349
    iget-wide v5, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->size:J

    invoke-virtual {v4, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 2350
    invoke-virtual {v4, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "status"

    const/4 v1, 0x1

    .line 2351
    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "attribute"

    .line 2352
    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2353
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 2356
    :cond_2
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v1, "\u8def\u5f84\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2359
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2361
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v1, "\u64cd\u4f5c\u5931\u8d25"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_getDirs(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 134
    new-instance p1, Ljava/io/File;

    const-string v0, "/storage/1234-5678"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    .line 137
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==><><> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XDebug"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public jsmethod_getExtSDCardPathList(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 64
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getExtSDCardPathList()Ljava/util/List;

    move-result-object p1

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdcard\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xDebug"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public jsmethod_getMD5(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    const-string v0, "path"

    .line 1682
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 1683
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1686
    :try_start_0
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1687
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFileMD5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 1688
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1689
    invoke-virtual {p0, p1, v1, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZLjava/lang/String;)V

    goto :goto_0

    .line 1691
    :cond_0
    invoke-virtual {p0, p1, v3, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1694
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1695
    invoke-virtual {p0, p1, v3, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZLjava/lang/String;)V

    goto :goto_0

    .line 1699
    :cond_1
    invoke-virtual {p0, p1, v3, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public jsmethod_getMD5Sync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 5

    const-string v0, "path"

    .line 2484
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "\u64cd\u4f5c\u5931\u8d25"

    const/4 v3, -0x1

    if-nez v1, :cond_1

    .line 2485
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2488
    :try_start_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 2489
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFileMD5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 2490
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2491
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "status"

    const/4 v4, 0x1

    .line 2493
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "md5Str"

    .line 2494
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2496
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2498
    :goto_0
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 2500
    :cond_0
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v3, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 2503
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 2504
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v3, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 2507
    :cond_1
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v3, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_moveTo(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 213
    new-instance v0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;

    const-string v1, "fs-moveTo"

    invoke-direct {v0, p0, v1, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;-><init>(Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 235
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$1;->start()V

    return-void
.end method

.method public jsmethod_moveToSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 5

    const-string v0, "oldPath"

    .line 1968
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "newPath"

    .line 1969
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1970
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1971
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1973
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1974
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1975
    new-instance v2, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const/4 v3, 0x1

    const-string v4, "\u627e\u4e0d\u5230\u6587\u4ef6\u9519\u8bef"

    invoke-virtual {p0, v3, v4}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    .line 1978
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1979
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createSuccessRet()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 1982
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->moveDirectory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1983
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createSuccessRet()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 1985
    :cond_2
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const/4 v0, 0x5

    const-string v1, "\u65e0\u6548\u64cd\u4f5c\u9519\u8bef"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 14

    const-string v0, "file://"

    const-string v1, "msg"

    const-string v2, "status"

    const-string v3, "path"

    .line 492
    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "flags"

    .line 493
    invoke-virtual {p1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 495
    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFileLength(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fileLen:J

    .line 497
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fileLen:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UzFsUtils"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 501
    :try_start_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object v8

    .line 502
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pathname : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "android_asset"

    .line 505
    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v9, "fd"

    const-string v10, "read_write"

    const-string v11, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    const-string v12, "write"

    const-string v13, "read"

    if-eqz v6, :cond_3

    .line 508
    :try_start_1
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-direct {p0, v3, v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->open(Ljava/lang/String;I)V

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "asset\u76ee\u5f55\u4e0b\u7684\u6587\u4ef6\u53ea\u80fd\u8bfb\u53d6"

    if-eqz v0, :cond_1

    .line 511
    :try_start_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 513
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v4, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 514
    :cond_1
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 517
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v4, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 519
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 520
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 523
    :catch_0
    :try_start_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 525
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v3, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto/16 :goto_2

    .line 529
    :cond_3
    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 530
    invoke-virtual {p0, v8, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 534
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 536
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 537
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v3, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    .line 541
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 542
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 543
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string v3, "\u6587\u4ef6\u662f\u76ee\u5f55,\u65e0\u6548\u64cd\u4f5c"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v3, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    .line 547
    :cond_6
    iput-object v8, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fd:Ljava/lang/String;

    .line 548
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 549
    invoke-direct {p0, v8, v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->open(Ljava/lang/String;I)V

    goto :goto_1

    .line 550
    :cond_7
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    .line 551
    invoke-direct {p0, v8, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->open(Ljava/lang/String;I)V

    goto :goto_1

    .line 552
    :cond_8
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    .line 553
    invoke-direct {p0, v8, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->open(Ljava/lang/String;I)V

    .line 555
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 556
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 560
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 562
    :try_start_4
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 563
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 564
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 566
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public jsmethod_openSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 10

    const-string v0, "file://"

    const-string v1, "\u64cd\u4f5c\u5931\u8d25"

    const-string v2, "path"

    .line 2061
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "read"

    const-string v4, "flags"

    .line 2062
    invoke-virtual {p1, v4, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2063
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFileLength(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fileLen:J

    const/4 v4, 0x5

    .line 2065
    :try_start_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "android_asset"

    .line 2066
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_1

    .line 2068
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2069
    invoke-direct {p0, v2, v9}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->open(Ljava/lang/String;I)V

    .line 2073
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v9, v8, v7, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createCommonRet(ZILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 2071
    :cond_0
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v4, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 2075
    :catch_0
    :try_start_2
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v4, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 2079
    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2080
    invoke-virtual {p0, v5, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2084
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2085
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2086
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-virtual {p0, v9, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 2088
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2089
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v4, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 2091
    :cond_4
    iput-object v5, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fd:Ljava/lang/String;

    .line 2092
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2093
    invoke-direct {p0, v5, v9}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->open(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const-string v0, "write"

    .line 2094
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x2

    .line 2095
    invoke-direct {p0, v5, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->open(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const-string v0, "read_write"

    .line 2096
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    .line 2097
    invoke-direct {p0, v5, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->open(Ljava/lang/String;I)V

    .line 2099
    :cond_7
    :goto_0
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v9, v8, v7, v5}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createCommonRet(ZILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    .line 2102
    :catch_1
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v4, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_read(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 16
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v0, "utf-8"

    const-string v10, "msg"

    const-string v11, "status"

    const/4 v12, 0x1

    const/4 v13, 0x0

    :try_start_0
    const-string v1, "fd"

    .line 607
    invoke-virtual {v9, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "offset"

    .line 608
    invoke-virtual {v9, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "length"

    .line 609
    invoke-virtual {v9, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v4, "codingType"

    .line 610
    invoke-virtual {v9, v4, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 612
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 618
    :goto_0
    invoke-virtual {v8, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFileLength(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fileLen:J

    const-wide/16 v14, 0x0

    cmp-long v0, v6, v14

    if-gtz v0, :cond_1

    .line 621
    iget-object v0, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 622
    iget-object v0, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string v1, "\u6587\u4ef6\u4e3a\u7a7a"

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 623
    iget-object v0, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v9, v0, v1, v12}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    :cond_1
    if-gtz v1, :cond_2

    long-to-int v0, v6

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-gez v3, :cond_3

    .line 632
    iget-object v0, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 633
    iget-object v0, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string v1, "offset \u4e0d\u80fd\u5c0f\u4e8e\u96f6 "

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 634
    iget-object v0, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v9, v0, v1, v12}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    :cond_3
    add-int v0, v3, v4

    int-to-long v0, v0

    .line 638
    iget-wide v6, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fileLen:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_4

    .line 639
    iget-object v0, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 640
    iget-object v0, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string v1, "\u8d85\u8fc7\u6587\u4ef6\u5927\u5c0f "

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 641
    iget-object v0, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v9, v0, v1, v12}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    :cond_4
    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 647
    invoke-direct/range {v1 .. v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsText(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 649
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 652
    :try_start_1
    iget-object v1, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v1, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 653
    iget-object v1, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 654
    iget-object v0, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, v8, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v9, v0, v1, v12}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 656
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public jsmethod_readByLength(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 9

    const-string v0, "\u627e\u4e0d\u5230\u6b64\u6587\u4ef6"

    const-string v1, "path"

    .line 1450
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "substring"

    .line 1454
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_0

    const-string v5, "start"

    .line 1456
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "length"

    .line 1457
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1458
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_0
    move v5, v3

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 1463
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1466
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    return-void

    .line 1470
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v6

    if-gtz v4, :cond_3

    move v4, v6

    :cond_3
    add-int v7, v4, v5

    if-le v7, v6, :cond_4

    const-string v1, "\u8d85\u51fa\u6587\u4ef6\u5927\u5c0f"

    .line 1476
    invoke-virtual {p0, p1, v3, v2, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    return-void

    .line 1480
    :cond_4
    new-array v6, v4, [C

    .line 1481
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1482
    invoke-virtual {v7, v6, v5, v4}, Ljava/io/BufferedReader;->read([CII)I

    .line 1484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1485
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1487
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1488
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v6, "status"

    .line 1491
    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "content"

    .line 1492
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "codingType"

    const-string v6, "utf-8"

    .line 1493
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "code"

    .line 1495
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msg"

    const-string v6, "\u64cd\u4f5c\u6210\u529f"

    .line 1496
    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1498
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1501
    :goto_1
    invoke-virtual {p1, v4, v5, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 1504
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    .line 1505
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public jsmethod_readByLengthSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 8

    const-string v0, "\u627e\u4e0d\u5230\u6b64\u6587\u4ef6"

    const-string v1, "path"

    .line 2370
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "substring"

    .line 2374
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    const-string v4, "start"

    .line 2376
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "length"

    .line 2377
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2378
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move v4, v2

    :cond_1
    move p1, v3

    .line 2383
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2385
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v3, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 2387
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v5

    if-gtz p1, :cond_3

    move p1, v5

    :cond_3
    add-int v6, p1, v4

    if-le v6, v5, :cond_4

    .line 2393
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v1, "\u8d85\u51fa\u6587\u4ef6\u5927\u5c0f"

    invoke-virtual {p0, v3, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 2396
    :cond_4
    new-array v5, p1, [C

    .line 2397
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2398
    invoke-virtual {v6, v5, v4, p1}, Ljava/io/BufferedReader;->read([CII)I

    .line 2400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2401
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2402
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "status"

    const/4 v5, 0x1

    .line 2405
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "content"

    .line 2406
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "codingType"

    const-string v4, "utf-8"

    .line 2407
    invoke-virtual {v1, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "code"

    .line 2409
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "msg"

    const-string v2, "\u64cd\u4f5c\u6210\u529f"

    .line 2410
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2412
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2415
    :goto_1
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 2418
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 2419
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v3, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_readDir(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 8

    const-string v0, "msg"

    const-string v1, "status"

    const-string v2, "path"

    .line 448
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 450
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "data"

    if-eqz v6, :cond_0

    .line 453
    :try_start_1
    invoke-direct {p0, v5}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->showDir(Ljava/io/File;)Lorg/json/JSONArray;

    move-result-object v2

    .line 454
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 456
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 458
    :cond_0
    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->isAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 460
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 461
    invoke-direct {p0, v2, v5}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->showAssetDir(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 462
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 464
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void

    .line 467
    :cond_1
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string v5, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 469
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v5, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 472
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 474
    :try_start_2
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 476
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 478
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public jsmethod_readDirSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 7

    const-string v0, "\u64cd\u4f5c\u5931\u8d25"

    const-string v1, "path"

    .line 2018
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    .line 2020
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2021
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    .line 2023
    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->showDir(Ljava/io/File;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2024
    new-instance v2, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v6, v5, v4, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createCommonRet(ZILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object v2

    .line 2026
    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->isAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2028
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 2029
    invoke-direct {p0, p1, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->showAssetDir(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 2030
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v6, v5, v4, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createCommonRet(ZILjava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2036
    :cond_1
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 2034
    :catch_0
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_readDown(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 14

    const-string v0, "fd"

    .line 779
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "length"

    .line 780
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "utf-8"

    const-string v1, "codingType"

    .line 781
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 782
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object v11, v1

    .line 786
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "\u5df2\u8bfb\u5230\u6587\u4ef6\u672b\u5c3e"

    const/4 v3, 0x1

    const-string v4, "msg"

    const/4 v5, 0x0

    const-string v7, "status"

    if-eqz v0, :cond_4

    .line 787
    :try_start_1
    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fd:Ljava/lang/String;

    .line 788
    invoke-virtual {p0, v8}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 790
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string v1, "\u53e5\u67c4\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 791
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto/16 :goto_1

    :cond_1
    if-nez v6, :cond_2

    .line 794
    iget v9, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    const/4 v10, 0x0

    const/4 v13, 0x1

    move-object v7, p0

    move-object v12, p1

    invoke-direct/range {v7 .. v13}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsText(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    goto/16 :goto_1

    .line 796
    :cond_2
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->textSize:I

    if-lt v0, v2, :cond_3

    .line 797
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->textSize:I

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    .line 798
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 799
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    .line 803
    :cond_3
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, v8

    move-object v7, v11

    move-object v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsText(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    goto :goto_1

    :cond_4
    if-nez v6, :cond_5

    .line 808
    iget v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v5, v11

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsText(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    goto :goto_1

    .line 810
    :cond_5
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    iget v8, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->textSize:I

    if-lt v0, v8, :cond_6

    .line 811
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->textSize:I

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    .line 812
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 813
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 814
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    .line 817
    :cond_6
    iget v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    const/4 v7, 0x1

    move-object v1, p0

    move v4, v6

    move-object v5, v11

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsText(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 821
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public jsmethod_readDownSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 14

    const-string v0, "fd"

    .line 2198
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "length"

    .line 2199
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "utf-8"

    const-string v1, "codingType"

    .line 2200
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2201
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object v11, v1

    :goto_0
    const/4 v0, -0x1

    .line 2205
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "\u5df2\u8bfb\u5230\u6587\u4ef6\u53e5\u9996 "

    if-eqz v1, :cond_4

    .line 2206
    :try_start_1
    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fd:Ljava/lang/String;

    .line 2207
    invoke-virtual {p0, v8}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2208
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v1, "\u53e5\u67c4\u4e0d\u80fd\u4e3a\u7a7a "

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_1
    if-nez v6, :cond_2

    .line 2211
    iget v9, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    const/4 v10, 0x0

    const/4 v13, 0x1

    move-object v7, p0

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsTextFixed(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    goto :goto_1

    .line 2213
    :cond_2
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->textSize:I

    if-lt v1, v2, :cond_3

    .line 2214
    iget p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->textSize:I

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    .line 2215
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v0, v3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 2217
    :cond_3
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, v8

    move-object v7, v11

    move-object v8, p1

    invoke-virtual/range {v3 .. v9}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsTextFixed(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    goto :goto_1

    :cond_4
    if-nez v6, :cond_5

    .line 2222
    iget v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v5, v11

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsTextFixed(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    goto :goto_1

    .line 2224
    :cond_5
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->textSize:I

    if-lt v1, v4, :cond_6

    .line 2225
    iget p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->textSize:I

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    .line 2226
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v0, v3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 2228
    :cond_6
    iget v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    const/4 v7, 0x1

    move-object v1, p0

    move v4, v6

    move-object v5, v11

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsTextFixed(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2232
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2234
    :goto_1
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v1, "\u64cd\u4f5c\u5931\u8d25"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_readSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 11

    const-string v0, "utf-8"

    :try_start_0
    const-string v1, "fd"

    .line 2113
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "offset"

    .line 2114
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "length"

    .line 2115
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "codingType"

    .line 2116
    invoke-virtual {p1, v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2118
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v2

    .line 2122
    :goto_0
    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFileLength(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fileLen:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    const/4 v2, -0x1

    if-gtz v0, :cond_1

    .line 2124
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "\u6587\u4ef6\u4e3a\u7a7a"

    invoke-virtual {p0, v2, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_1
    if-gtz v1, :cond_2

    long-to-int v0, v7

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-gez v4, :cond_3

    .line 2132
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "offset \u4e0d\u80fd\u5c0f\u4e8e\u96f6"

    invoke-virtual {p0, v2, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_3
    add-int v0, v4, v5

    int-to-long v0, v0

    .line 2135
    iget-wide v7, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fileLen:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_4

    .line 2136
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "\u8d85\u8fc7\u6587\u4ef6\u5927\u5c0f "

    invoke-virtual {p0, v2, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_4
    const/4 v8, 0x1

    move-object v2, p0

    move-object v7, p1

    .line 2139
    invoke-virtual/range {v2 .. v8}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsTextFixed(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2141
    :catch_0
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const/4 v0, 0x5

    const-string v1, "\u64cd\u4f5c\u5931\u8d25"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_readUp(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 14

    const-string v0, "fd"

    .line 729
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "length"

    .line 730
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "utf-8"

    const-string v1, "codingType"

    .line 731
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object v11, v1

    .line 736
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "\u5df2\u8bfb\u5230\u6587\u4ef6\u53e5\u9996"

    const/4 v3, 0x1

    const-string v4, "msg"

    const-string v5, "status"

    const/4 v7, 0x0

    if-eqz v0, :cond_4

    .line 737
    :try_start_1
    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fd:Ljava/lang/String;

    .line 738
    invoke-virtual {p0, v8}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 740
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    const-string v1, "\u53e5\u67c4\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 741
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto/16 :goto_1

    :cond_1
    if-nez v6, :cond_2

    .line 744
    iget v9, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v7, p0

    move-object v12, p1

    invoke-direct/range {v7 .. v13}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsText(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    goto/16 :goto_1

    .line 746
    :cond_2
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    sub-int/2addr v0, v6

    if-gtz v0, :cond_3

    .line 747
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    if-gtz v2, :cond_3

    .line 748
    iput v7, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    .line 749
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 750
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    :cond_3
    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, v8

    move v5, v0

    move-object v7, v11

    move-object v8, p1

    .line 754
    invoke-direct/range {v3 .. v9}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsText(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    goto :goto_1

    :cond_4
    if-nez v6, :cond_5

    .line 759
    iget v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, v11

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsText(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    goto :goto_1

    .line 761
    :cond_5
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    sub-int/2addr v0, v6

    if-gtz v0, :cond_6

    .line 762
    iget v6, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    if-gtz v6, :cond_6

    .line 763
    iput v7, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    .line 764
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 765
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    .line 769
    :cond_6
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    const/4 v7, 0x0

    move-object v1, p0

    move v3, v0

    move-object v5, v11

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsText(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 773
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public jsmethod_readUpSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 14

    const-string v0, "fd"

    .line 2151
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "length"

    .line 2152
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "utf-8"

    const-string v1, "codingType"

    .line 2153
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2154
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object v11, v1

    :goto_0
    const/4 v0, -0x1

    .line 2158
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "\u5df2\u8bfb\u5230\u6587\u4ef6\u53e5\u9996 "

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 2159
    :try_start_1
    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fd:Ljava/lang/String;

    .line 2160
    invoke-virtual {p0, v8}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2161
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v1, "\u53e5\u67c4\u4e0d\u80fd\u4e3a\u7a7a "

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_1
    if-nez v6, :cond_2

    .line 2164
    iget v9, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v7, p0

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsTextFixed(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    goto :goto_1

    .line 2166
    :cond_2
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    sub-int v5, v1, v6

    if-gtz v5, :cond_3

    .line 2167
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    if-gtz v1, :cond_3

    .line 2168
    iput v4, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    .line 2169
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v0, v3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_3
    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, v8

    move-object v7, v11

    move-object v8, p1

    .line 2171
    invoke-virtual/range {v3 .. v9}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsTextFixed(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    goto :goto_1

    :cond_4
    if-nez v6, :cond_5

    .line 2176
    iget v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, v11

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsTextFixed(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    goto :goto_1

    .line 2178
    :cond_5
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    sub-int v5, v1, v6

    if-gtz v5, :cond_6

    .line 2179
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    if-gtz v1, :cond_6

    .line 2180
    iput v4, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    .line 2181
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v0, v3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 2183
    :cond_6
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    const/4 v7, 0x0

    move-object v1, p0

    move v3, v5

    move-object v5, v11

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readAsTextFixed(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2187
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2189
    :goto_1
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v1, "\u64cd\u4f5c\u5931\u8d25"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_remove(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 8

    const-string v0, "file://"

    const-string v1, "path"

    .line 174
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "msg"

    const/4 v4, 0x0

    const-string v5, "status"

    if-eqz v2, :cond_0

    .line 176
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 177
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 179
    :try_start_0
    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v7, "\u8def\u5f84\u4e0d\u80fd\u4e3a\u7a7a"

    .line 180
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    invoke-virtual {p1, v2, v6, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 184
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 v2, 0x1

    .line 188
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, ""

    .line 189
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v0, "/"

    .line 191
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 195
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, v6, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->remove(Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 198
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 199
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    :try_start_2
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 205
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 207
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public jsmethod_removeSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 3

    const-string v0, "path"

    .line 1883
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1884
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u627e\u4e0d\u5230\u6b64\u6587\u4ef6"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1885
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v2, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 1887
    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1888
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1889
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1890
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->remove_1(Ljava/io/File;)V

    .line 1891
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createSuccessRet()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 1893
    :cond_1
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v2, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_rename(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 8

    const-string v0, "msg"

    const-string v1, "status"

    const-string v2, "oldPath"

    .line 345
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "newPath"

    .line 346
    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 355
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 357
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 359
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 363
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 364
    invoke-virtual {p1, v2, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void

    .line 367
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 368
    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 369
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "\u91cd\u547d\u540d\u5931\u8d25"

    .line 370
    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    invoke-virtual {p1, v2, v3, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    .line 375
    :cond_1
    invoke-direct {p0, v2, v3, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->renameTo(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    move-result v2

    const-string v3, "xDebug"

    .line 376
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "success: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 378
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v2, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 381
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    :try_start_1
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 385
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 387
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public jsmethod_renameSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 3

    const-string v0, "oldPath"

    .line 1994
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "newPath"

    .line 1995
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1997
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1998
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1999
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2002
    invoke-direct {p0, v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->moveTo(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    goto :goto_0

    .line 2004
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->renameTo(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    .line 2006
    :goto_0
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createSuccessRet()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2008
    :catch_0
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const/4 v0, 0x5

    const-string v1, "\u64cd\u4f5c\u5931\u8d25"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_rmdir(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 7

    const-string v0, "path"

    .line 1609
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1611
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "\u627e\u4e0d\u5230\u6b64\u6587\u4ef6"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 1612
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    return-void

    .line 1616
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v6, "\u5220\u9664\u76ee\u5f55\u6210\u529f"

    if-eqz v5, :cond_1

    .line 1618
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->recursiveDelete(Ljava/io/File;)V

    .line 1619
    invoke-virtual {p0, p1, v3, v4, v6}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    return-void

    .line 1622
    :cond_1
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1623
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1626
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1627
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->recursiveDelete(Ljava/io/File;)V

    .line 1628
    invoke-virtual {p0, p1, v3, v4, v6}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    goto :goto_0

    .line 1631
    :cond_2
    invoke-virtual {p0, p1, v4, v3, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public jsmethod_rmdirSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 4

    const-string v0, "path"

    .line 1834
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1835
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u627e\u4e0d\u5230\u6b64\u6587\u4ef6"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1836
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v2, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 1839
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1840
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1841
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->recursiveDelete(Ljava/io/File;)V

    .line 1842
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createSuccessRet()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 1844
    :cond_1
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1845
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1849
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->recursiveDelete(Ljava/io/File;)V

    .line 1850
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createSuccessRet()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 1852
    :cond_2
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v2, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_write(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 14
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    const-string v0, "fd"

    .line 665
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    .line 666
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 667
    iget-wide v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fileLen:J

    const-string v3, "offset"

    invoke-virtual {p1, v3, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "utf-8"

    const-string v2, "codingType"

    .line 668
    invoke-virtual {p1, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    const/4 v1, 0x0

    const-string v2, "overwrite"

    .line 672
    invoke-virtual {p1, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 674
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 675
    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->iomap:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "\u6ca1\u6709\u6253\u5f00\u6587\u4ef6\u6216\u6587\u4ef6\u6253\u5f00\u65b9\u5f0f\u4e0d\u5bf9"

    const-string v10, "msg"

    const-string v11, "status"

    const/4 v12, 0x1

    if-nez v8, :cond_1

    .line 677
    :try_start_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 678
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v0, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 679
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v12}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    .line 682
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v13, 0x2

    if-eq v8, v13, :cond_2

    const/4 v13, 0x3

    if-eq v8, v13, :cond_2

    .line 687
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 688
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {v0, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 689
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v12}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    :cond_2
    if-eqz v2, :cond_3

    .line 693
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-direct {p0, v2, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->remove(Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 695
    invoke-direct {p0, p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createFile(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Z)V

    move-object v2, p0

    .line 696
    invoke-virtual/range {v2 .. v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->write(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, p0

    .line 698
    invoke-virtual/range {v2 .. v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->write(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 699
    :goto_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 700
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v12}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 702
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public jsmethod_writeByLength(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 10

    const-string v0, "path"

    .line 1511
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    .line 1512
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1516
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1518
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    const-string v0, "place"

    .line 1521
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    const-string v5, "start"

    .line 1523
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1524
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    const-string v6, "strategy"

    .line 1526
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1527
    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v3

    move v5, v4

    .line 1533
    :goto_1
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFileContent(Ljava/io/File;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    .line 1538
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1539
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    if-eq v0, v3, :cond_7

    if-eqz v0, :cond_5

    if-lez v0, :cond_8

    add-int v3, v5, v0

    .line 1555
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lt v3, v8, :cond_4

    .line 1556
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v5

    sub-int/2addr v0, v7

    :cond_4
    add-int/2addr v0, v5

    const-string v3, ""

    .line 1558
    invoke-virtual {v6, v5, v0, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    invoke-virtual {v6, v5, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1545
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v5, :cond_6

    .line 1546
    invoke-virtual {v6, v5, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1549
    :cond_6
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1542
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v1, v5, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 1564
    :cond_8
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 1565
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    const-string v0, "\u64cd\u4f5c\u6210\u529f"

    .line 1566
    invoke-virtual {p0, p1, v7, v4, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1570
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v4, v7, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 1568
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v4, v7, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public jsmethod_writeByLengthSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 7

    const-string v0, "path"

    .line 2426
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    .line 2427
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2431
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2432
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2433
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    const-string v0, "place"

    .line 2436
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const-string v4, "start"

    .line 2438
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2439
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    :cond_1
    const-string v4, "strategy"

    .line 2441
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2442
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v0

    .line 2446
    :goto_0
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->getFileContent(Ljava/io/File;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2451
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2452
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    if-eq p1, v0, :cond_5

    if-eqz p1, :cond_3

    if-lez p1, :cond_6

    .line 2469
    invoke-virtual {v2, v1, v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    goto :goto_1

    .line 2459
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-le p1, v3, :cond_4

    .line 2460
    invoke-virtual {v4, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2461
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 2463
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2464
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 2456
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v2, v1, v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 2473
    :cond_6
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 2474
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 2475
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createSuccessRet()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2479
    new-instance v1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object v1

    :catch_1
    move-exception p1

    .line 2477
    new-instance v1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public jsmethod_writeSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 11

    const-string v0, "fd"

    .line 2244
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    .line 2245
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "offset"

    .line 2246
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "utf-8"

    const-string v3, "codingType"

    .line 2247
    invoke-virtual {p1, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2248
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    const/4 v2, 0x0

    const-string v3, "overwrite"

    .line 2251
    invoke-virtual {p1, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v8, -0x1

    .line 2253
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2254
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->iomap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "\u6ca1\u6709\u6253\u5f00\u6587\u4ef6\u6216\u6587\u4ef6\u6253\u5f00\u65b9\u5f0f\u4e0d\u5bf9 "

    if-nez v5, :cond_1

    .line 2256
    :try_start_1
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v8, v9}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 2258
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v10, 0x2

    if-eq v5, v10, :cond_2

    const/4 v10, 0x3

    if-eq v5, v10, :cond_2

    .line 2263
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v8, v9}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_2
    if-eqz v3, :cond_3

    .line 2266
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2267
    invoke-direct {p0, v3, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->remove(Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 2268
    invoke-direct {p0, p1, v0, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createFile(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Z)V

    int-to-long v0, v1

    move-object v2, p0

    move-object v3, v4

    move-wide v4, v0

    .line 2269
    invoke-virtual/range {v2 .. v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->write(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    int-to-long v0, v1

    move-object v2, p0

    move-object v3, v4

    move-wide v4, v0

    .line 2271
    invoke-virtual/range {v2 .. v7}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->write(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 2273
    :goto_1
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createSuccessRet()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2275
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2277
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "\u64cd\u4f5c\u5931\u8d25"

    invoke-virtual {p0, v8, v0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public moveDirectory(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 269
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 273
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 275
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 280
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    .line 281
    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, p2, v1

    .line 282
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 284
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 285
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->moveDirectory(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    return p1

    :cond_5
    :goto_2
    return v1
.end method

.method public moveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 248
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 255
    :cond_1
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public readAsTextFixed(Ljava/lang/String;IILjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 913
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 914
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->iomap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string v1, "\u6587\u4ef6\u6253\u5f00\u5931\u8d25"

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 916
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v2, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 919
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    .line 924
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p0, v2, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createErrorRet(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 927
    :cond_1
    new-array v0, p3, [B

    const-string v1, "android_asset"

    .line 928
    invoke-virtual {p5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x2f

    .line 929
    invoke-virtual {p5, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v3

    .line 930
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 931
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->context()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 932
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 933
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 934
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->context()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p5, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v4, p5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p5

    .line 935
    invoke-direct {p0, p5, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    :cond_2
    move-object p5, v1

    .line 939
    :cond_3
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p5, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    new-instance p5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    if-nez p3, :cond_4

    .line 943
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    if-ltz v4, :cond_8

    .line 944
    invoke-virtual {p5, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_4
    if-lez p2, :cond_5

    int-to-long v4, p2

    goto :goto_1

    :cond_5
    const-wide/16 v4, 0x0

    .line 947
    :goto_1
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    if-ltz p2, :cond_6

    move v4, p3

    goto :goto_2

    .line 948
    :cond_6
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    if-ltz v4, :cond_7

    goto :goto_2

    :cond_7
    move v4, v2

    :goto_2
    invoke-virtual {v1, v0, v2, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    .line 949
    invoke-virtual {p5, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 951
    :cond_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 952
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p5

    .line 953
    array-length v0, p5

    .line 954
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p5, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 955
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->fd:Ljava/lang/String;

    if-nez p3, :cond_9

    .line 957
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    .line 958
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->textSize:I

    goto :goto_3

    :cond_9
    if-eqz p6, :cond_a

    add-int/2addr p2, p3

    .line 961
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    goto :goto_3

    .line 963
    :cond_a
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->readoffset:I

    .line 966
    :goto_3
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string p2, ""

    invoke-virtual {p0, v3, v2, p2, v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->createRetWithData(ZILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public recursiveDelete(Ljava/io/File;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1661
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1662
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1663
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1665
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1666
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1668
    :cond_1
    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->recursiveDelete(Ljava/io/File;)V

    .line 1669
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1673
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 1675
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :goto_2
    return-void
.end method

.method public remove_1(Ljava/io/File;)V
    .locals 3

    .line 1150
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1151
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    .line 1155
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 1156
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 1157
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1158
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->remove_1(Ljava/io/File;)V

    goto :goto_1

    .line 1160
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1163
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_3
    return-void
.end method

.method public substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 588
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, ""

    if-nez p2, :cond_1

    return-object v0

    .line 594
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return-object v0

    .line 598
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1051
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 1054
    :cond_0
    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    return-object v1

    .line 1057
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 1058
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 1061
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public write(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    invoke-virtual {p5, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p4

    .line 829
    new-instance p5, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {p5, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-virtual {p5, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 834
    invoke-virtual {p5, p4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 836
    invoke-virtual {p5}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method
