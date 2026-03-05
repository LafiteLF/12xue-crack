.class Lcom/deepe/c/c/a/a/k$g;
.super Lcom/deepe/c/c/a/a/k$an;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# static fields
.field private static final a:Lcom/deepe/c/c/a/a/k$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepe/c/c/a/a/k$g;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/k$g;-><init>()V

    sput-object v0, Lcom/deepe/c/c/a/a/k$g;->a:Lcom/deepe/c/c/a/a/k$g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$an;-><init>()V

    return-void
.end method

.method static a()Lcom/deepe/c/c/a/a/k$g;
    .locals 1

    sget-object v0, Lcom/deepe/c/c/a/a/k$g;->a:Lcom/deepe/c/c/a/a/k$g;

    return-object v0
.end method
