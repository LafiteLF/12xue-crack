.class Lcom/apicloud/a/i/a/i/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field final b:Lcom/apicloud/a/i/a/i/e;

.field final c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/apicloud/a/i/a/i/a;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/i/a;Landroid/view/View;Landroid/view/ViewGroup;Lcom/apicloud/a/i/a/i/e;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/i/a$a;->d:Lcom/apicloud/a/i/a/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/apicloud/a/i/a/i/a$a;->a:Landroid/view/View;

    iput-object p4, p0, Lcom/apicloud/a/i/a/i/a$a;->b:Lcom/apicloud/a/i/a/i/e;

    iput-object p3, p0, Lcom/apicloud/a/i/a/i/a$a;->c:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/i/a$a;->b:Lcom/apicloud/a/i/a/i/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/i/e;->a(Z)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/i/a$a;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/apicloud/a/i/a/i/a$a;->b:Lcom/apicloud/a/i/a/i/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method final a(Landroid/graphics/Rect;I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/i/a$a;->b:Lcom/apicloud/a/i/a/i/e;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/i/e;->a(Landroid/graphics/Rect;I)V

    return-void
.end method
