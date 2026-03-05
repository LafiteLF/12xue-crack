.class Lcom/deepe/c/l/b/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/l/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/l/b/b;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/deepe/c/l/b/b;II)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/l/b/b$a;->a:Lcom/deepe/c/l/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/deepe/c/l/b/b$a;->b:I

    iput p3, p0, Lcom/deepe/c/l/b/b$a;->c:I

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/l/b/b$a;->b:I

    return v0
.end method

.method static synthetic a(Lcom/deepe/c/l/b/b$a;)I
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/l/b/b$a;->a()I

    move-result p0

    return p0
.end method

.method private b()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/l/b/b$a;->c:I

    return v0
.end method

.method static synthetic b(Lcom/deepe/c/l/b/b$a;)I
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/l/b/b$a;->b()I

    move-result p0

    return p0
.end method
