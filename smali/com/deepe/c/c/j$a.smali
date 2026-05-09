.class Lcom/deepe/c/c/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/j;

.field private final b:Lcom/deepe/c/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/j/l<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Lcom/deepe/c/c/g;

.field private d:Lcom/deepe/c/j/r;

.field private final e:Lcom/deepe/c/i/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/v<",
            "Lcom/deepe/c/c/j$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/deepe/c/c/j;Lcom/deepe/c/j/l;Lcom/deepe/c/c/j$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/l<",
            "*>;",
            "Lcom/deepe/c/c/j$b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepe/c/c/j$a;->a:Lcom/deepe/c/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/deepe/c/i/v;

    invoke-direct {p1}, Lcom/deepe/c/i/v;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/j$a;->e:Lcom/deepe/c/i/v;

    iput-object p2, p0, Lcom/deepe/c/c/j$a;->b:Lcom/deepe/c/j/l;

    invoke-virtual {p1, p3}, Lcom/deepe/c/i/v;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/j$a;)Lcom/deepe/c/i/v;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/j$a;->e:Lcom/deepe/c/i/v;

    return-object p0
.end method

.method static synthetic a(Lcom/deepe/c/c/j$a;Lcom/deepe/c/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/j$a;->c:Lcom/deepe/c/c/g;

    return-void
.end method

.method static synthetic b(Lcom/deepe/c/c/j$a;)Lcom/deepe/c/c/g;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/j$a;->c:Lcom/deepe/c/c/g;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/deepe/c/j/r;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/j$a;->d:Lcom/deepe/c/j/r;

    return-object v0
.end method

.method public a(Lcom/deepe/c/c/j$b;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/j$a;->e:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/deepe/c/j/r;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/j$a;->d:Lcom/deepe/c/j/r;

    return-void
.end method
