.class Lcom/deepe/c/c/a/a/k$o;
.super Lcom/deepe/c/c/a/a/k$ao;

# interfaces
.implements Lcom/deepe/c/c/a/a/k$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/deepe/c/c/a/a/k$p;

.field c:Lcom/deepe/c/c/a/a/k$p;

.field d:Lcom/deepe/c/c/a/a/k$p;

.field e:Lcom/deepe/c/c/a/a/k$p;

.field f:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$ao;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "image"

    return-object v0
.end method

.method public a(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k$o;->f:Landroid/graphics/Matrix;

    return-void
.end method
