.class public Lcom/deepe/c/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/r$c;


# static fields
.field static a:Lcom/deepe/c/c/n;


# instance fields
.field private b:Lcom/deepe/c/i/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/l<",
            "Ljava/lang/String;",
            "Lcom/deepe/c/c/m;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/deepe/c/j/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/deepe/c/c/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/n;->a(Landroid/content/Context;Lcom/deepe/c/c/o;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/deepe/c/c/o$a;

    invoke-direct {v0, p1, p2}, Lcom/deepe/c/c/o$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/c/n;-><init>(Landroid/content/Context;Lcom/deepe/c/c/o;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/m;)I
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/c/n;->b(Lcom/deepe/c/c/m;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;)Lcom/deepe/c/c/n;
    .locals 1

    sget-object v0, Lcom/deepe/c/c/n;->a:Lcom/deepe/c/c/n;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/deepe/c/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/deepe/c/c/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/deepe/c/c/n;

    move-result-object p0

    sput-object p0, Lcom/deepe/c/c/n;->a:Lcom/deepe/c/c/n;

    :cond_0
    sget-object p0, Lcom/deepe/c/c/n;->a:Lcom/deepe/c/c/n;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/deepe/c/c/n;
    .locals 1

    new-instance v0, Lcom/deepe/c/c/n;

    invoke-direct {v0, p0, p1}, Lcom/deepe/c/c/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/deepe/c/c/o;)V
    .locals 0

    iget-boolean p1, p2, Lcom/deepe/c/c/o;->c:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/deepe/c/c/n$1;

    iget p2, p2, Lcom/deepe/c/c/o;->b:I

    invoke-direct {p1, p0, p2}, Lcom/deepe/c/c/n$1;-><init>(Lcom/deepe/c/c/n;I)V

    iput-object p1, p0, Lcom/deepe/c/c/n;->b:Lcom/deepe/c/i/l;

    :cond_0
    return-void
.end method

.method private static b(Lcom/deepe/c/c/m;)I
    .locals 0

    invoke-virtual {p0}, Lcom/deepe/c/c/m;->g()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/deepe/c/c/m;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/n;->b:Lcom/deepe/c/i/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/m;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/n;->a(Ljava/lang/String;)Lcom/deepe/c/c/m;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Lcom/deepe/c/j/a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/n;->c:Lcom/deepe/c/j/a;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/deepe/c/c/m;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/n;->b:Lcom/deepe/c/i/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/n;->b:Lcom/deepe/c/i/l;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/i/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
