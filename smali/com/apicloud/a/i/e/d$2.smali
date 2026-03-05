.class Lcom/apicloud/a/i/e/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/g/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Lcom/apicloud/a/g/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/e/d;

.field private final synthetic b:Lcom/apicloud/a/g/g;

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/e/d;Lcom/apicloud/a/g/g;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/e/d$2;->a:Lcom/apicloud/a/i/e/d;

    iput-object p2, p0, Lcom/apicloud/a/i/e/d$2;->b:Lcom/apicloud/a/g/g;

    iput-object p3, p0, Lcom/apicloud/a/i/e/d$2;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/e/d$2;->b:Lcom/apicloud/a/g/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/g;->a(I)Lcom/apicloud/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/e/d$2;->a:Lcom/apicloud/a/i/e/d;

    iget-object v2, p0, Lcom/apicloud/a/i/e/d$2;->c:Landroid/view/View;

    invoke-static {v1, v2, p1, v0}, Lcom/apicloud/a/i/e/d;->a(Lcom/apicloud/a/i/e/d;Landroid/view/View;ILcom/apicloud/a/c;)V

    return-void
.end method
