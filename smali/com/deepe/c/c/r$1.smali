.class Lcom/deepe/c/c/r$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/j/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/c/r;->a(Lcom/deepe/c/c/s;Ljava/lang/String;)Lcom/deepe/c/j/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/deepe/c/j/o$b<",
        "Lcom/deepe/c/c/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/r;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/deepe/c/c/r;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/r$1;->a:Lcom/deepe/c/c/r;

    iput-object p2, p0, Lcom/deepe/c/c/r$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/c/m;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/r$1;->a:Lcom/deepe/c/c/r;

    iget-object v1, p0, Lcom/deepe/c/c/r$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/deepe/c/c/r;->a(Lcom/deepe/c/c/r;Ljava/lang/String;Lcom/deepe/c/c/m;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/deepe/c/c/m;

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/r$1;->a(Lcom/deepe/c/c/m;)V

    return-void
.end method
