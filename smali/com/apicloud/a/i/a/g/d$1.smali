.class Lcom/apicloud/a/i/a/g/d$1;
.super Lcom/apicloud/a/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/g/d;->a(I)V
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
.field final synthetic a:Lcom/apicloud/a/i/a/g/d;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/g/d;Ljava/lang/Class;I)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/g/d$1;->a:Lcom/apicloud/a/i/a/g/d;

    iput p3, p0, Lcom/apicloud/a/i/a/g/d$1;->b:I

    invoke-direct {p0, p2}, Lcom/apicloud/a/b/e$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/g/d$1;->b:I

    invoke-static {p1, v0}, Lcom/apicloud/a/i/c;->a(Landroid/view/View;I)V

    return-void
.end method
