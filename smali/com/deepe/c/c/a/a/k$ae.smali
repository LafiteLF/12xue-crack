.class public Lcom/deepe/c/c/a/a/k$ae;
.super Lcom/deepe/c/c/a/a/k$aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ae"
.end annotation


# instance fields
.field a:Lcom/deepe/c/c/a/a/k$p;

.field b:Lcom/deepe/c/c/a/a/k$p;

.field c:Lcom/deepe/c/c/a/a/k$p;

.field d:Lcom/deepe/c/c/a/a/k$p;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$aq;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "svg"

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/deepe/c/c/a/a/k$aq;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
