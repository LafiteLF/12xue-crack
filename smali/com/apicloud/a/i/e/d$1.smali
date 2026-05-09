.class Lcom/apicloud/a/i/e/d$1;
.super Lcom/apicloud/a/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/b/e$a<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/e/d;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/e/d;Ljava/lang/Class;Z)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/e/d$1;->a:Lcom/apicloud/a/i/e/d;

    iput-boolean p3, p0, Lcom/apicloud/a/i/e/d$1;->b:Z

    invoke-direct {p0, p2}, Lcom/apicloud/a/b/e$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/e/d$1;->b:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
