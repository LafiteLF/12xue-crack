.class Lcom/deepe/c/c/a/a/k$au;
.super Lcom/deepe/c/c/a/a/k$az;

# interfaces
.implements Lcom/deepe/c/c/a/a/k$aw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "au"
.end annotation


# instance fields
.field private a:Lcom/deepe/c/c/a/a/k$ba;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$az;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "tspan"

    return-object v0
.end method

.method public a(Lcom/deepe/c/c/a/a/k$ba;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k$au;->a:Lcom/deepe/c/c/a/a/k$ba;

    return-void
.end method

.method public h()Lcom/deepe/c/c/a/a/k$ba;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/k$au;->a:Lcom/deepe/c/c/a/a/k$ba;

    return-object v0
.end method
