.class Lcom/deepe/c/c/r$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/r;

.field private final b:Lcom/deepe/c/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/j/l<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Lcom/deepe/c/c/m;

.field private d:Lcom/deepe/c/j/r;

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/deepe/c/c/r$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/deepe/c/c/r;Lcom/deepe/c/j/l;Lcom/deepe/c/c/r$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/l<",
            "*>;",
            "Lcom/deepe/c/c/r$b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepe/c/c/r$a;->a:Lcom/deepe/c/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/r$a;->e:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/deepe/c/c/r$a;->b:Lcom/deepe/c/j/l;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/r$a;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/r$a;->e:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic a(Lcom/deepe/c/c/r$a;Lcom/deepe/c/c/m;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/r$a;->c:Lcom/deepe/c/c/m;

    return-void
.end method

.method static synthetic b(Lcom/deepe/c/c/r$a;)Lcom/deepe/c/c/m;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/r$a;->c:Lcom/deepe/c/c/m;

    return-object p0
.end method

.method static synthetic c(Lcom/deepe/c/c/r$a;)Lcom/deepe/c/j/l;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/r$a;->b:Lcom/deepe/c/j/l;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/deepe/c/j/r;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/r$a;->d:Lcom/deepe/c/j/r;

    return-object v0
.end method

.method public a(Lcom/deepe/c/c/r$b;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/r$a;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/deepe/c/j/r;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/r$a;->d:Lcom/deepe/c/j/r;

    return-void
.end method
