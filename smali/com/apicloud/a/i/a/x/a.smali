.class public Lcom/apicloud/a/i/a/x/a;
.super Lcom/apicloud/a/i/a/x/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/x/a$a;
    }
.end annotation


# instance fields
.field private d:Lcom/apicloud/a/i/a/x/a$a;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/x/d;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/x/a$a;

    invoke-interface {p1}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/apicloud/a/i/a/x/a$a;-><init>(Lcom/apicloud/a/i/a/x/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/x/a;->d:Lcom/apicloud/a/i/a/x/a$a;

    new-instance p1, Lcom/apicloud/a/i/a/q/a$a;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Lcom/apicloud/a/i/a/q/a$a;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/a/i/a/x/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/deepe/c/i/f;->b(J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/apicloud/a/i/a/x/d;->a()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/a;->d:Lcom/apicloud/a/i/a/x/a$a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/x/a$a;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/x/d;->a(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/a;->d:Lcom/apicloud/a/i/a/x/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/x/a$a;->a(I)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Lcom/apicloud/a/i/a/x/d;->b()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/a;->d:Lcom/apicloud/a/i/a/x/a$a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/x/a$a;->b()V

    return-void
.end method

.method public b(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/x/d;->b(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/a;->d:Lcom/apicloud/a/i/a/x/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/x/a$a;->b(I)V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Lcom/apicloud/a/i/a/x/d;->c()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/a;->d:Lcom/apicloud/a/i/a/x/a$a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/x/a$a;->c()V

    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/a;->d:Lcom/apicloud/a/i/a/x/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/x/a$a;->setBackgroundColor(I)V

    return-void
.end method
