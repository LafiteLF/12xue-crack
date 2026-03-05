.class public Lcom/deepe/c/j/e/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/deepe/c/j/e/m;


# instance fields
.field private b:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/deepe/c/j/e/m;->b:Z

    return-void
.end method

.method public static a()Lcom/deepe/c/j/e/m;
    .locals 2

    sget-object v0, Lcom/deepe/c/j/e/m;->a:Lcom/deepe/c/j/e/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/j/e/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/deepe/c/j/e/m;-><init>(Z)V

    sput-object v0, Lcom/deepe/c/j/e/m;->a:Lcom/deepe/c/j/e/m;

    :cond_0
    sget-object v0, Lcom/deepe/c/j/e/m;->a:Lcom/deepe/c/j/e/m;

    return-object v0
.end method

.method public static final a(Z)V
    .locals 1

    sget-object v0, Lcom/deepe/c/j/e/m;->a:Lcom/deepe/c/j/e/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/j/e/m;

    invoke-direct {v0, p0}, Lcom/deepe/c/j/e/m;-><init>(Z)V

    sput-object v0, Lcom/deepe/c/j/e/m;->a:Lcom/deepe/c/j/e/m;

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/j/e/m;->b:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/j/e/m;->b:Z

    return v0
.end method
