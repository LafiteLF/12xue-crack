.class Lcom/deepe/c/c/a/a/k$d;
.super Lcom/deepe/c/c/a/a/k$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Lcom/deepe/c/c/a/a/k$p;

.field b:Lcom/deepe/c/c/a/a/k$p;

.field c:Lcom/deepe/c/c/a/a/k$p;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$l;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "circle"

    return-object v0
.end method
