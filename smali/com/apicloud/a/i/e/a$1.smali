.class Lcom/apicloud/a/i/e/a$1;
.super Lcom/apicloud/a/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/e/a;->d(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/e/a;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/e/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/e/a$1;->a:Lcom/apicloud/a/i/e/a;

    iput-object p2, p0, Lcom/apicloud/a/i/e/a$1;->b:Landroid/view/View;

    invoke-direct {p0}, Lcom/apicloud/a/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/e/a$1;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/apicloud/a/i/e/a;->a(Landroid/view/View;)Lcom/apicloud/a/i/d/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/d/b/a;->a(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/a/i/d/b/a;

    return-void
.end method
