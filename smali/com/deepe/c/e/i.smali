.class public Lcom/deepe/c/e/i;
.super Lcom/deepe/c/e/e;


# static fields
.field private static final serialVersionUID:J = 0x3cb0bea00cede011L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/e/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/deepe/c/e/f;

    invoke-direct {v0}, Lcom/deepe/c/e/f;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/deepe/c/e/i;->a(Lcom/deepe/c/e/f;Z)V

    invoke-virtual {v0}, Lcom/deepe/c/e/f;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/deepe/c/e/d; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
