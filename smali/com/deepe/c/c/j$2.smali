.class Lcom/deepe/c/c/j$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/j/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/c/j;->a(Lcom/deepe/c/c/k;Ljava/lang/String;)Lcom/deepe/c/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/deepe/c/j/o$a;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/j;

.field private final synthetic b:Lcom/deepe/c/c/k;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/deepe/c/c/j;Lcom/deepe/c/c/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/j$2;->a:Lcom/deepe/c/c/j;

    iput-object p2, p0, Lcom/deepe/c/c/j$2;->b:Lcom/deepe/c/c/k;

    iput-object p3, p0, Lcom/deepe/c/c/j$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/deepe/c/j/r;)V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/c/j$2;->a:Lcom/deepe/c/c/j;

    iget-object v1, p0, Lcom/deepe/c/c/j$2;->b:Lcom/deepe/c/c/k;

    iget-object v1, v1, Lcom/deepe/c/c/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/deepe/c/c/j$2;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/deepe/c/c/j;->a(Lcom/deepe/c/c/j;Ljava/lang/String;Ljava/lang/String;Lcom/deepe/c/j/r;)V

    return-void
.end method
