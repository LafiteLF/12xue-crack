.class Lcom/deepe/c/c/a/a/d$j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/a/a/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/a/a/d$j;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/k$ak;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$j;->a:Ljava/lang/String;

    return-object v0
.end method
