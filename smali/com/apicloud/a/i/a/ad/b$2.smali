.class Lcom/apicloud/a/i/a/ad/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/ad/b;->a(Lcom/apicloud/a/i/a/ad/f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/ad/b;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/ad/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/b$2;->a:Lcom/apicloud/a/i/a/ad/b;

    iput p2, p0, Lcom/apicloud/a/i/a/ad/b$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b$2;->a:Lcom/apicloud/a/i/a/ad/b;

    iget v1, p0, Lcom/apicloud/a/i/a/ad/b$2;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/apicloud/a/i/a/ad/b;->a(Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method
