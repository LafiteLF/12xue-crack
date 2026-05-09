.class public Lcom/deepe/f/a/e;
.super Ljava/lang/Object;


# static fields
.field private static a:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;II[IJLjava/lang/String;)I
    .locals 5

    new-instance v0, Lcom/deepe/f/a/b;

    invoke-direct {v0}, Lcom/deepe/f/a/b;-><init>()V

    sget v1, Lcom/deepe/f/a/e;->a:I

    iput v1, v0, Lcom/deepe/f/a/b;->b:I

    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iput-wide p4, v0, Lcom/deepe/f/a/b;->g:J

    invoke-static {v2}, Lcom/deepe/f/a/e;->a([I)Lcom/deepe/f/a/b$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    iput p1, v0, Lcom/deepe/f/a/b;->d:I

    iput p2, v0, Lcom/deepe/f/a/b;->e:I

    invoke-static {p3}, Lcom/deepe/f/a/e;->a([I)Lcom/deepe/f/a/b$a;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lcom/deepe/f/a/b;->f:Lcom/deepe/f/a/b$a;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/deepe/f/a/b;->h:Z

    iput-object p6, v0, Lcom/deepe/f/a/b;->i:Ljava/lang/String;

    iput-object v2, v0, Lcom/deepe/f/a/b;->j:Landroid/net/Uri;

    iput-boolean p1, v0, Lcom/deepe/f/a/b;->c:Z

    sget p1, Lcom/deepe/f/a/e;->a:I

    iget p2, v0, Lcom/deepe/f/a/b;->b:I

    sget p3, Lcom/deepe/f/a/e;->a:I

    if-ne p2, p3, :cond_1

    invoke-static {p0, v0}, Lcom/deepe/f/a/f;->a(Landroid/content/Context;Lcom/deepe/f/a/b;)J

    move-result-wide p0

    iget p2, v0, Lcom/deepe/f/a/b;->b:I

    goto :goto_1

    :cond_1
    invoke-static {p0, v0}, Lcom/deepe/f/a/f;->b(Landroid/content/Context;Lcom/deepe/f/a/b;)J

    move-result-wide p2

    move-wide v3, p2

    move p2, p1

    move-wide p0, v3

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "lastTime: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "alarm"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private static a([I)Lcom/deepe/f/a/b$a;
    .locals 5

    new-instance v0, Lcom/deepe/f/a/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepe/f/a/b$a;-><init>(I)V

    if-eqz p0, :cond_3

    array-length v2, p0

    if-eqz v2, :cond_3

    array-length v2, p0

    :goto_0
    if-lt v1, v2, :cond_0

    goto :goto_2

    :cond_0
    aget v3, p0, v1

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    const/4 v4, 0x6

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/deepe/f/a/b$a;->a(IZ)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/deepe/f/a/f;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/f/a/f;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/deepe/f/a/f;->a(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/f/a/f;->b(Landroid/content/Context;I)V

    return-void
.end method
