.class Lcom/deepe/c/c/a/a/k$r;
.super Lcom/deepe/c/c/a/a/k$aq;

# interfaces
.implements Lcom/deepe/c/c/a/a/k$t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "r"
.end annotation


# instance fields
.field a:Z

.field b:Lcom/deepe/c/c/a/a/k$p;

.field c:Lcom/deepe/c/c/a/a/k$p;

.field d:Lcom/deepe/c/c/a/a/k$p;

.field e:Lcom/deepe/c/c/a/a/k$p;

.field f:Ljava/lang/Float;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$aq;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "marker"

    return-object v0
.end method
