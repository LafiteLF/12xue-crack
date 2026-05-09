.class Lcom/deepe/a/g/a$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/a/g/a$a;->a()Lcom/deepe/a/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/a/g/a$a;

.field private final synthetic b:Lcom/deepe/a/g/a;


# direct methods
.method constructor <init>(Lcom/deepe/a/g/a$a;Lcom/deepe/a/g/a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/g/a$a$2;->a:Lcom/deepe/a/g/a$a;

    iput-object p2, p0, Lcom/deepe/a/g/a$a$2;->b:Lcom/deepe/a/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/deepe/a/g/a$a$2;->b:Lcom/deepe/a/g/a;

    invoke-virtual {p1}, Lcom/deepe/a/g/a;->dismiss()V

    iget-object p1, p0, Lcom/deepe/a/g/a$a$2;->a:Lcom/deepe/a/g/a$a;

    invoke-static {p1}, Lcom/deepe/a/g/a$a;->b(Lcom/deepe/a/g/a$a;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/deepe/a/g/a$a$2;->a:Lcom/deepe/a/g/a$a;

    invoke-static {p1}, Lcom/deepe/a/g/a$a;->b(Lcom/deepe/a/g/a$a;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/a/g/a$a$2;->b:Lcom/deepe/a/g/a;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
