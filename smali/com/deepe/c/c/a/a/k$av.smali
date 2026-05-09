.class Lcom/deepe/c/c/a/a/k$av;
.super Lcom/deepe/c/c/a/a/k$az;

# interfaces
.implements Lcom/deepe/c/c/a/a/k$ba;
.implements Lcom/deepe/c/c/a/a/k$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "av"
.end annotation


# instance fields
.field a:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$az;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "text"

    return-object v0
.end method

.method public a(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k$av;->a:Landroid/graphics/Matrix;

    return-void
.end method
