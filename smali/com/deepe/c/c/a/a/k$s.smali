.class Lcom/deepe/c/c/a/a/k$s;
.super Lcom/deepe/c/c/a/a/k$ag;

# interfaces
.implements Lcom/deepe/c/c/a/a/k$t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "s"
.end annotation


# instance fields
.field a:Ljava/lang/Boolean;

.field b:Ljava/lang/Boolean;

.field c:Lcom/deepe/c/c/a/a/k$p;

.field d:Lcom/deepe/c/c/a/a/k$p;

.field e:Lcom/deepe/c/c/a/a/k$p;

.field f:Lcom/deepe/c/c/a/a/k$p;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$ag;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "mask"

    return-object v0
.end method
