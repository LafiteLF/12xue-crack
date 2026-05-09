.class public Lcom/deepe/c/c/k;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/c/k;->b:Z

    iput v0, p0, Lcom/deepe/c/c/k;->c:I

    iput-object p1, p0, Lcom/deepe/c/c/k;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/k;
    .locals 2

    new-instance v0, Lcom/deepe/c/c/k;

    iget-object v1, p0, Lcom/deepe/c/c/s;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/k;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/deepe/c/c/s;->g:Z

    iput-boolean v1, v0, Lcom/deepe/c/c/k;->b:Z

    iget p0, p0, Lcom/deepe/c/c/s;->h:I

    iput p0, v0, Lcom/deepe/c/c/k;->c:I

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/deepe/c/c/k;
    .locals 1

    new-instance v0, Lcom/deepe/c/c/k;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/k;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/deepe/c/c/k;->b:Z

    const/4 p0, 0x1

    iput p0, v0, Lcom/deepe/c/c/k;->c:I

    return-object v0
.end method

.method public static a(Ljava/lang/String;ZI)Lcom/deepe/c/c/k;
    .locals 1

    new-instance v0, Lcom/deepe/c/c/k;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/k;-><init>(Ljava/lang/String;)V

    iput-boolean p1, v0, Lcom/deepe/c/c/k;->b:Z

    iput p2, v0, Lcom/deepe/c/c/k;->c:I

    return-object v0
.end method
