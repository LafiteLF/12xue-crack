.class public Lcom/deepe/c/j/e/k;
.super Ljava/lang/Object;


# static fields
.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;


# instance fields
.field public final a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    const-string v1, "\u7f51\u7edc\u9519\u8bef"

    const-string v2, "\u8fde\u63a5\u9519\u8bef"

    const-string v3, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    const-string v4, "\u670d\u52a1\u7aef\u9519\u8bef"

    const-string v5, "\u8bf7\u6c42\u8d85\u65f6"

    const-string v6, "\u9a8c\u8bc1\u5931\u8d25"

    const-string v7, "\u8bf7\u6c42\u5df2\u53d6\u6d88"

    const-string v8, "\u4e0d\u5b89\u5168\u7684\u6570\u636e"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/j/e/k;->g:[Ljava/lang/String;

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

    sput-object v0, Lcom/deepe/c/j/e/k;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/deepe/c/j/e/k;->i:I

    iput p1, p0, Lcom/deepe/c/j/e/k;->a:I

    return-void
.end method

.method private final e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/deepe/b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepe/c/j/e/k;->g:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepe/c/j/e/k;->h:[Ljava/lang/String;

    :goto_0
    iget v1, p0, Lcom/deepe/c/j/e/k;->i:I

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


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/j/e/k;->i:I

    return v0
.end method

.method public a(I)Lcom/deepe/c/j/e/k;
    .locals 0

    iput p1, p0, Lcom/deepe/c/j/e/k;->i:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/deepe/c/j/e/k;
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/e/k;->j:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/e/k;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/j/e/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "success"

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/j/e/k;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lcom/deepe/c/j/e/k;->i:I

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

    invoke-virtual {p0}, Lcom/deepe/c/j/e/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/j/e/k;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepe/c/j/e/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepe/c/j/e/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
