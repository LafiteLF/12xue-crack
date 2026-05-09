.class public Lcom/deepe/c/j/r;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = -0x751510d590510968L


# instance fields
.field public final a:Lcom/deepe/c/j/k;

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepe/c/j/r;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/j/r;->a:Lcom/deepe/c/j/k;

    return-void
.end method

.method public constructor <init>(Lcom/deepe/c/j/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepe/c/j/r;->c:I

    iput-object p1, p0, Lcom/deepe/c/j/r;->a:Lcom/deepe/c/j/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/deepe/c/j/r;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepe/c/j/r;->a:Lcom/deepe/c/j/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/deepe/c/j/r;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepe/c/j/r;->a:Lcom/deepe/c/j/k;

    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "\u672a\u77e5\u9519\u8bef"

    return-object p0

    :pswitch_0
    const-string p0, "CA\u8bc1\u4e66\u4e0d\u53d7\u4fe1\u4efb\u6216\u4e0d\u5b89\u5168\u7684\u6570\u636e"

    return-object p0

    :pswitch_1
    const-string p0, "\u5ba2\u6237\u7aef\u4e3b\u52a8\u53d6\u6d88"

    return-object p0

    :pswitch_2
    const-string p0, "\u6743\u9650\u9519\u8bef"

    return-object p0

    :pswitch_3
    const-string p0, "\u7f51\u7edc\u8bf7\u6c42\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    return-object p0

    :pswitch_4
    const-string p0, "\u670d\u52a1\u5668\u9519\u8bef"

    return-object p0

    :pswitch_5
    const-string p0, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u9519\u8bef"

    return-object p0

    :pswitch_6
    const-string p0, "\u8fde\u63a5\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u8bf7\u6c42\u914d\u7f6e\u662f\u5426\u6b63\u786e"

    return-object p0

    :pswitch_7
    const-string p0, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u914d\u7f6e"

    return-object p0

    :pswitch_8
    const-string p0, "\u672a\u6355\u83b7\u7684\u9519\u8bef"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/deepe/c/j/r;->b:J

    return-wide v0
.end method

.method protected final a(I)V
    .locals 0

    iput p1, p0, Lcom/deepe/c/j/r;->c:I

    return-void
.end method

.method a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/deepe/c/j/r;->b:J

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/j/r;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/j/r;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/deepe/c/j/r;->c:I

    invoke-static {v0}, Lcom/deepe/c/j/r;->b(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final d()Lcom/deepe/c/j/k;
    .locals 9

    iget-object v0, p0, Lcom/deepe/c/j/r;->a:Lcom/deepe/c/j/k;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/j/r;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Lcom/deepe/c/j/k;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/deepe/c/j/r;->b:J

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/deepe/c/j/k;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v8
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/deepe/c/j/r;->c:I

    invoke-static {v0}, Lcom/deepe/c/j/r;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
