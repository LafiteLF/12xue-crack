.class public Lcom/deepe/c/g/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "dzVmRHFNT1F3NlEwYW5OQ3dvN0Q="

    invoke-static {v0}, Lcom/deepe/c/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/g/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static final a([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/deepe/c/g/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/deepe/c/g/e;->a([B[B)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static a([B[B)[B
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/c/g/d;->a([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static final b([B)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/deepe/c/g/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/deepe/c/g/e;->a([B[B)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
