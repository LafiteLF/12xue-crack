.class Lcom/deepe/a/b/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/a/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/a/b/e;

.field private b:Lcom/deepe/a/b/f;


# direct methods
.method private constructor <init>(Lcom/deepe/a/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/b/e$a;->a:Lcom/deepe/a/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/deepe/a/b/f;

    invoke-direct {p1}, Lcom/deepe/a/b/f;-><init>()V

    iput-object p1, p0, Lcom/deepe/a/b/e$a;->b:Lcom/deepe/a/b/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/deepe/a/b/e;Lcom/deepe/a/b/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/a/b/e$a;-><init>(Lcom/deepe/a/b/e;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    const/4 p1, 0x1

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/deepe/a/b/e$a;->b:Lcom/deepe/a/b/f;

    iput p2, v0, Lcom/deepe/a/b/f;->a:I

    iget-object p2, p0, Lcom/deepe/a/b/e$a;->b:Lcom/deepe/a/b/f;

    iput-boolean p1, p2, Lcom/deepe/a/b/f;->b:Z

    iget-object p1, p0, Lcom/deepe/a/b/e$a;->a:Lcom/deepe/a/b/e;

    iget-object p2, p0, Lcom/deepe/a/b/e$a;->b:Lcom/deepe/a/b/f;

    invoke-static {p1, p2}, Lcom/deepe/a/b/e;->a(Lcom/deepe/a/b/e;Lcom/deepe/a/b/f;)V

    return-void
.end method
