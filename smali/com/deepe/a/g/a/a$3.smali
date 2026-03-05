.class Lcom/deepe/a/g/a/a$3;
.super Lcom/deepe/a/g/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/a/g/a/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/a/g/a/a;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/deepe/a/g/a/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/g/a/a$3;->a:Lcom/deepe/a/g/a/a;

    iput p2, p0, Lcom/deepe/a/g/a/a$3;->b:I

    invoke-direct {p0}, Lcom/deepe/a/g/a/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/g/a/a$3;)Lcom/deepe/a/g/a/a;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a/a$3;->a:Lcom/deepe/a/g/a/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/deepe/a/g/a/a$3;->a:Lcom/deepe/a/g/a/a;

    invoke-static {v0}, Lcom/deepe/a/g/a/a;->d(Lcom/deepe/a/g/a/a;)V

    iget-object v0, p0, Lcom/deepe/a/g/a/a$3;->a:Lcom/deepe/a/g/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/a;Z)V

    iget-object v0, p0, Lcom/deepe/a/g/a/a$3;->a:Lcom/deepe/a/g/a/a;

    invoke-static {v0}, Lcom/deepe/a/g/a/a;->e(Lcom/deepe/a/g/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/deepe/a/g/a/a$3$1;

    iget v2, p0, Lcom/deepe/a/g/a/a$3;->b:I

    invoke-direct {v1, p0, v2}, Lcom/deepe/a/g/a/a$3$1;-><init>(Lcom/deepe/a/g/a/a$3;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
