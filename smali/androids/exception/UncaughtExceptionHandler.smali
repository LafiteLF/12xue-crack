.class public Landroids/exception/UncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroids/exception/UncaughtExceptionHandler$HandlerListener;
    }
.end annotation


# instance fields
.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mHandlerListener:Landroids/exception/UncaughtExceptionHandler$HandlerListener;

.field private mLogDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Landroids/exception/UncaughtExceptionHandler;-><init>(Landroids/exception/UncaughtExceptionHandler$HandlerListener;)V

    return-void
.end method

.method public constructor <init>(Landroids/exception/UncaughtExceptionHandler$HandlerListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Landroids/exception/UncaughtExceptionHandler;-><init>(Landroids/exception/UncaughtExceptionHandler$HandlerListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroids/exception/UncaughtExceptionHandler$HandlerListener;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroids/exception/UncaughtExceptionHandler;->mHandlerListener:Landroids/exception/UncaughtExceptionHandler$HandlerListener;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    sget-object p2, Landroids/utils/LogUtil;->LOG_DIR:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, Landroids/exception/UncaughtExceptionHandler;->mLogDir:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Landroids/exception/UncaughtExceptionHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private saveLogs(Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x0

    .line 34
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 36
    :try_start_2
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 37
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 38
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iget-object p1, p0, Landroids/exception/UncaughtExceptionHandler;->mLogDir:Ljava/lang/String;

    invoke-static {v0, p1}, Landroids/utils/LogUtil;->writeLog(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    .line 47
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v0

    :goto_0
    :try_start_4
    const-string v2, "UncaughtExceptionHandler"

    .line 40
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroids/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_0

    .line 44
    :try_start_5
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 50
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_3
    return-void

    :catchall_2
    move-exception p1

    :goto_4
    if-eqz v0, :cond_2

    .line 44
    :try_start_6
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    :cond_2
    :goto_5
    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    .line 50
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    :cond_3
    :goto_7
    throw p1
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "uncaughtException"

    .line 57
    invoke-static {p1}, Landroids/utils/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    invoke-direct {p0, p2}, Landroids/exception/UncaughtExceptionHandler;->saveLogs(Ljava/lang/Throwable;)V

    .line 62
    :cond_0
    iget-object p1, p0, Landroids/exception/UncaughtExceptionHandler;->mHandlerListener:Landroids/exception/UncaughtExceptionHandler$HandlerListener;

    if-eqz p1, :cond_1

    .line 63
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 64
    iget-object p1, p0, Landroids/exception/UncaughtExceptionHandler;->mHandlerListener:Landroids/exception/UncaughtExceptionHandler$HandlerListener;

    invoke-interface {p1, p2}, Landroids/exception/UncaughtExceptionHandler$HandlerListener;->onHandleException(Ljava/lang/Throwable;)V

    .line 65
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_1
    return-void
.end method
