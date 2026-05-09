.class abstract Lcom/deepe/c/c/a/a/k$aj;
.super Lcom/deepe/c/c/a/a/k$ak;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "aj"
.end annotation


# instance fields
.field o:Lcom/deepe/c/c/a/a/k$b;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$ak;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k$aj;->o:Lcom/deepe/c/c/a/a/k$b;

    return-void
.end method
