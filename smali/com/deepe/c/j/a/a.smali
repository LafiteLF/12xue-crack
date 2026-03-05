.class public Lcom/deepe/c/j/a/a;
.super Lcom/deepe/c/j/r;


# static fields
.field private static final serialVersionUID:J = 0x2c8975f28d197a57L


# instance fields
.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/j/r;-><init>()V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/deepe/c/j/a/a;->a(I)V

    return-void
.end method

.method public constructor <init>(Lcom/deepe/c/j/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/j/r;-><init>(Lcom/deepe/c/j/k;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/a/a;->a(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/j/r;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/a/a;->a(I)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/a/a;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "User needs to (re)enter credentials."

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/deepe/c/j/r;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
