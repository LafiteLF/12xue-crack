.class public Lcom/uzmap/pkg/uzkit/request/HttpResult;
.super Ljava/lang/Object;


# static fields
.field public static DefaultError:Lcom/uzmap/pkg/uzkit/request/HttpResult; = null

.field public static final ERROR_AUTH_FAIL:I = 0x6

.field public static final ERROR_CANCELED:I = 0x7

.field public static final ERROR_DES:[Ljava/lang/String;

.field public static final ERROR_DES_EN:[Ljava/lang/String;

.field public static final ERROR_NETWORK:I = 0x1

.field public static final ERROR_NONE:I = -0x1

.field public static final ERROR_NO_CONNECTION:I = 0x2

.field public static final ERROR_PARSE:I = 0x3

.field public static final ERROR_SERVER:I = 0x4

.field public static final ERROR_TIME_OUT:I = 0x5

.field public static final ERROR_UNKOWN:I = 0x0

.field public static final ERROR_UNSAFE:I = 0x8


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public fileSize:J

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public savePath:Ljava/lang/String;

.field public final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/uzmap/pkg/uzkit/request/HttpResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->setErrorType(I)Lcom/uzmap/pkg/uzkit/request/HttpResult;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->DefaultError:Lcom/uzmap/pkg/uzkit/request/HttpResult;

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    const-string v2, "\u7f51\u7edc\u9519\u8bef"

    const-string v3, "\u8fde\u63a5\u9519\u8bef"

    const-string v4, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    const-string v5, "\u670d\u52a1\u7aef\u9519\u8bef"

    const-string v6, "\u8bf7\u6c42\u8d85\u65f6"

    const-string v7, "\u9a8c\u8bc1\u5931\u8d25"

    const-string v8, "\u8bf7\u6c42\u5df2\u53d6\u6d88"

    const-string v9, "\u4e0d\u5b89\u5168\u7684\u6570\u636e"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->ERROR_DES:[Ljava/lang/String;

    const-string v1, "unknown error"

    const-string v2, "network error"

    const-string v3, "connection error"

    const-string v4, "data parse error"

    const-string v5, "server error"

    const-string v6, "timeout error"

    const-string v7, "auth fail"

    const-string v8, "request canceled"

    const-string v9, "data unsafe"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->ERROR_DES_EN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->a:I

    iput p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->statusCode:I

    return-void
.end method

.method private final errorDes()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/deepe/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->ERROR_DES:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->ERROR_DES_EN:[Ljava/lang/String;

    :goto_0
    iget v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->a:I

    if-ltz v1, :cond_1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static obtain(Lcom/deepe/c/j/e/k;)Lcom/uzmap/pkg/uzkit/request/HttpResult;
    .locals 3

    new-instance v0, Lcom/uzmap/pkg/uzkit/request/HttpResult;

    iget v1, p0, Lcom/deepe/c/j/e/k;->a:I

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;-><init>(I)V

    iget-object v1, p0, Lcom/deepe/c/j/e/k;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;

    iget-object v1, p0, Lcom/deepe/c/j/e/k;->c:Ljava/util/Map;

    iput-object v1, v0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->headers:Ljava/util/Map;

    iget-object v1, p0, Lcom/deepe/c/j/e/k;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->contentType:Ljava/lang/String;

    iget-object v1, p0, Lcom/deepe/c/j/e/k;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->savePath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/deepe/c/j/e/k;->d:J

    iput-wide v1, v0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->fileSize:J

    invoke-virtual {p0}, Lcom/deepe/c/j/e/k;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->setErrorType(I)Lcom/uzmap/pkg/uzkit/request/HttpResult;

    invoke-virtual {p0}, Lcom/deepe/c/j/e/k;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->setErrorDes(Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/request/HttpResult;

    return-object v0
.end method


# virtual methods
.method public getDes()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "success"

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->errorDes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorDes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()I
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->a:I

    return v0
.end method

.method public setErrorDes(Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/request/HttpResult;
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setErrorType(I)Lcom/uzmap/pkg/uzkit/request/HttpResult;
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->a:I

    return-object p0
.end method

.method public success()Z
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->getDes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
