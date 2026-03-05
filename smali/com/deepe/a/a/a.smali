.class public Lcom/deepe/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/deepe/a/a/a;


# instance fields
.field private final a:Lcom/deepe/c/k/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepe/a/a/a;

    invoke-direct {v0}, Lcom/deepe/a/a/a;-><init>()V

    sput-object v0, Lcom/deepe/a/a/a;->b:Lcom/deepe/a/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/deepe/c/k/i;

    invoke-direct {v0}, Lcom/deepe/c/k/i;-><init>()V

    iput-object v0, p0, Lcom/deepe/a/a/a;->a:Lcom/deepe/c/k/i;

    return-void
.end method

.method public static a()Lcom/deepe/a/a/a;
    .locals 1

    sget-object v0, Lcom/deepe/a/a/a;->b:Lcom/deepe/a/a/a;

    return-object v0
.end method

.method private a(D)Z
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/deepe/a/a/a;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/deepe/a/a/a;->a:Lcom/deepe/c/k/i;

    invoke-virtual {p2, p1}, Lcom/deepe/c/k/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    return-object p0

    :cond_0
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/deepe/a/a/a;->a(D)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/deepe/a/a/a;->a:Lcom/deepe/c/k/i;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/k/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/deepe/a/a/a;->a:Lcom/deepe/c/k/i;

    invoke-virtual {v1, p1}, Lcom/deepe/c/k/i;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)Lcom/deepe/a/a/a;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/deepe/a/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/deepe/a/a/a;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/a/a;->a:Lcom/deepe/c/k/i;

    invoke-virtual {v0}, Lcom/deepe/c/k/i;->b()V

    return-void
.end method
