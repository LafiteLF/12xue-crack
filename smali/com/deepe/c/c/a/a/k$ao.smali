.class abstract Lcom/deepe/c/c/a/a/k$ao;
.super Lcom/deepe/c/c/a/a/k$ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ao"
.end annotation


# instance fields
.field w:Lcom/deepe/c/c/a/a;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$ag;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/k$ao;->w:Lcom/deepe/c/c/a/a;

    return-void
.end method
