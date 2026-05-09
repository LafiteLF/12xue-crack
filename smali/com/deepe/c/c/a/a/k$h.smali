.class Lcom/deepe/c/c/a/a/k$h;
.super Lcom/deepe/c/c/a/a/k$m;

# interfaces
.implements Lcom/deepe/c/c/a/a/k$t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/k$m;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    const-string v0, "defs"

    return-object v0
.end method
