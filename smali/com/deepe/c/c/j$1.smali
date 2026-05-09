.class Lcom/deepe/c/c/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/j/o$b;


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
        "Lcom/deepe/c/j/o$b<",
        "Lcom/deepe/c/c/l$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/j;

.field private final synthetic b:Lcom/deepe/c/c/k;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/deepe/c/c/j;Lcom/deepe/c/c/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/j$1;->a:Lcom/deepe/c/c/j;

    iput-object p2, p0, Lcom/deepe/c/c/j$1;->b:Lcom/deepe/c/c/k;

    iput-object p3, p0, Lcom/deepe/c/c/j$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/c/l$a;)V
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/c/j$1;->a:Lcom/deepe/c/c/j;

    iget-object v1, p0, Lcom/deepe/c/c/j$1;->b:Lcom/deepe/c/c/k;

    iget-object v1, v1, Lcom/deepe/c/c/k;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/deepe/c/c/j$1;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepe/c/c/l$a;->b:Ljava/io/File;

    iget-object p1, p1, Lcom/deepe/c/c/l$a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/deepe/c/c/j;->a(Lcom/deepe/c/c/j;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/deepe/c/c/l$a;

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/j$1;->a(Lcom/deepe/c/c/l$a;)V

    return-void
.end method
