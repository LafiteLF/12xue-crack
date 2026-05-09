.class public Lcom/deepe/c/j/a/d;
.super Lcom/deepe/c/j/a/c;


# static fields
.field private static final serialVersionUID:J = 0x61f14f556a798ef7L


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/j/a/c;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/deepe/c/j/a/d;->a(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/j/a/c;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/a/d;->a(I)V

    return-void
.end method
