.class public final enum Lcom/deepe/a/f/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/deepe/a/f/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/deepe/a/f/a;

.field public static final enum b:Lcom/deepe/a/f/a;

.field public static final enum c:Lcom/deepe/a/f/a;

.field public static final enum d:Lcom/deepe/a/f/a;

.field public static final enum e:Lcom/deepe/a/f/a;

.field private static h:Ljava/lang/String;

.field private static final synthetic i:[Lcom/deepe/a/f/a;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/deepe/a/f/a;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    const-string v3, "\u6b63\u5e38\u8bbf\u95ee"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/deepe/a/f/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/deepe/a/f/a;->a:Lcom/deepe/a/f/a;

    new-instance v0, Lcom/deepe/a/f/a;

    const/4 v2, 0x1

    const-string v3, "UNAVAILABLE"

    const/4 v4, -0x1

    const-string v5, "\u65e0\u6cd5\u8bbf\u95ee SD \u5361"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/deepe/a/f/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/deepe/a/f/a;->b:Lcom/deepe/a/f/a;

    new-instance v0, Lcom/deepe/a/f/a;

    const/4 v3, 0x2

    const-string v4, "PREPARING"

    const/4 v5, -0x2

    const-string v6, "\u6b63\u5728\u51c6\u5907 USB \u5b58\u50a8\u8bbe\u5907..."

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/deepe/a/f/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/deepe/a/f/a;->c:Lcom/deepe/a/f/a;

    new-instance v0, Lcom/deepe/a/f/a;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN_SIZE"

    const/4 v6, -0x3

    const-string v7, "\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/deepe/a/f/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/deepe/a/f/a;->d:Lcom/deepe/a/f/a;

    new-instance v0, Lcom/deepe/a/f/a;

    const/4 v5, 0x4

    const-string v6, "NO_PERMISSION"

    const/4 v7, -0x4

    const-string v8, "\u9700\u8981\u8bfb\u5199\u624b\u673a\u5b58\u50a8\u6743\u9650"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/deepe/a/f/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/deepe/a/f/a;->e:Lcom/deepe/a/f/a;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/deepe/a/f/a;

    sget-object v7, Lcom/deepe/a/f/a;->a:Lcom/deepe/a/f/a;

    aput-object v7, v6, v1

    sget-object v1, Lcom/deepe/a/f/a;->b:Lcom/deepe/a/f/a;

    aput-object v1, v6, v2

    sget-object v1, Lcom/deepe/a/f/a;->c:Lcom/deepe/a/f/a;

    aput-object v1, v6, v3

    sget-object v1, Lcom/deepe/a/f/a;->d:Lcom/deepe/a/f/a;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/deepe/a/f/a;->i:[Lcom/deepe/a/f/a;

    const/4 v0, 0x0

    sput-object v0, Lcom/deepe/a/f/a;->h:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/deepe/a/f/a;->f:Ljava/lang/String;

    iput p3, p0, Lcom/deepe/a/f/a;->g:I

    return-void
.end method

.method private static a(Landroid/os/StatFs;)J
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Lcom/deepe/a/f/a;->c()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Lcom/deepe/a/f/a;->c()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/deepe/c/i/x;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p0}, Lcom/deepe/c/i/x;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/deepe/a/f/a;->c()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "file://"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/deepe/a/f/a;->a(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/os/StatFs;)J
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method private static c(Landroid/os/StatFs;)J
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCount()I

    move-result p0

    int-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method public static c()Z
    .locals 2

    sget-object v0, Lcom/deepe/a/f/a;->a:Lcom/deepe/a/f/a;

    invoke-static {}, Lcom/deepe/a/f/a;->d()Lcom/deepe/a/f/a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static d()Lcom/deepe/a/f/a;
    .locals 2

    invoke-static {}, Lcom/deepe/c/a/k;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/deepe/a/f/a;->c:Lcom/deepe/a/f/a;

    return-object v0

    :cond_0
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/deepe/a/f/a;->b:Lcom/deepe/a/f/a;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/deepe/a/f/a;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/deepe/a/f/a;->b:Lcom/deepe/a/f/a;

    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/deepe/a/f/a;->e:Lcom/deepe/a/f/a;

    return-object v0

    :cond_3
    sget-object v0, Lcom/deepe/a/f/a;->a:Lcom/deepe/a/f/a;

    return-object v0
.end method

.method public static e()J
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/deepe/a/f/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {v0}, Lcom/deepe/a/f/a;->b(Landroid/os/StatFs;)J

    move-result-wide v1

    invoke-static {v0}, Lcom/deepe/a/f/a;->a(Landroid/os/StatFs;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v1, v3

    return-wide v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/deepe/a/f/a;->d:Lcom/deepe/a/f/a;

    invoke-virtual {v0}, Lcom/deepe/a/f/a;->b()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static f()J
    .locals 5

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Lcom/deepe/a/f/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-static {v0}, Lcom/deepe/a/f/a;->b(Landroid/os/StatFs;)J

    move-result-wide v1

    invoke-static {v0}, Lcom/deepe/a/f/a;->c(Landroid/os/StatFs;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long/2addr v1, v3

    return-wide v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/deepe/a/f/a;->d:Lcom/deepe/a/f/a;

    invoke-virtual {v0}, Lcom/deepe/a/f/a;->b()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/deepe/a/f/a;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/deepe/c/a/k;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/a/f/a;->h:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/deepe/a/f/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepe/a/f/a;
    .locals 1

    const-class v0, Lcom/deepe/a/f/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepe/a/f/a;

    return-object p0
.end method

.method public static values()[Lcom/deepe/a/f/a;
    .locals 4

    sget-object v0, Lcom/deepe/a/f/a;->i:[Lcom/deepe/a/f/a;

    array-length v1, v0

    new-array v2, v1, [Lcom/deepe/a/f/a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/f/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/deepe/a/f/a;->g:I

    return v0
.end method
