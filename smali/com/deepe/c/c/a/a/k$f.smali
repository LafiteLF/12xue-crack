.class public Lcom/deepe/c/c/a/a/k$f;
.super Lcom/deepe/c/c/a/a/k$an;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field static final b:Lcom/deepe/c/c/a/a/k$f;

.field static final c:Lcom/deepe/c/c/a/a/k$f;


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepe/c/c/a/a/k$f;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/k$f;-><init>(I)V

    sput-object v0, Lcom/deepe/c/c/a/a/k$f;->b:Lcom/deepe/c/c/a/a/k$f;

    new-instance v0, Lcom/deepe/c/c/a/a/k$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/k$f;-><init>(I)V

    sput-object v0, Lcom/deepe/c/c/a/a/k$f;->c:Lcom/deepe/c/c/a/a/k$f;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$an;-><init>()V

    iput p1, p0, Lcom/deepe/c/c/a/a/k$f;->a:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/deepe/c/c/a/a/k$f;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "#%08x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
