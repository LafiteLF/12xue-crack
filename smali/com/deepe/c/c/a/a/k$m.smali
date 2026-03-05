.class Lcom/deepe/c/c/a/a/k$m;
.super Lcom/deepe/c/c/a/a/k$ag;

# interfaces
.implements Lcom/deepe/c/c/a/a/k$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# instance fields
.field b:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$ag;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "group"

    return-object v0
.end method

.method public a(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/k$m;->b:Landroid/graphics/Matrix;

    return-void
.end method
