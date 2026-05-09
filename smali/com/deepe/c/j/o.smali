.class public Lcom/deepe/c/j/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/j/o$a;,
        Lcom/deepe/c/j/o$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/deepe/c/j/a$a;

.field public final c:Lcom/deepe/c/j/r;

.field public d:Z


# direct methods
.method private constructor <init>(Lcom/deepe/c/j/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/j/o;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/j/o;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/deepe/c/j/o;->b:Lcom/deepe/c/j/a$a;

    iput-object p1, p0, Lcom/deepe/c/j/o;->c:Lcom/deepe/c/j/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/deepe/c/j/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/deepe/c/j/a$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/j/o;->d:Z

    iput-object p1, p0, Lcom/deepe/c/j/o;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepe/c/j/o;->b:Lcom/deepe/c/j/a$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepe/c/j/o;->c:Lcom/deepe/c/j/r;

    return-void
.end method

.method public static a(Lcom/deepe/c/j/r;)Lcom/deepe/c/j/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/deepe/c/j/r;",
            ")",
            "Lcom/deepe/c/j/o<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/j/o;

    invoke-direct {v0, p0}, Lcom/deepe/c/j/o;-><init>(Lcom/deepe/c/j/r;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcom/deepe/c/j/a$a;)Lcom/deepe/c/j/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/deepe/c/j/a$a;",
            ")",
            "Lcom/deepe/c/j/o<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/j/o;

    invoke-direct {v0, p0, p1}, Lcom/deepe/c/j/o;-><init>(Ljava/lang/Object;Lcom/deepe/c/j/a$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/o;->c:Lcom/deepe/c/j/r;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
