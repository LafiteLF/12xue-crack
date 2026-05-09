.class public Lcom/apicloud/a/i/a/y/a/a/f;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/apicloud/a/i/a/y/a/m;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/a/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/a/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/y/a/a/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.browser.application_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "rich-text Actvity was not found for intent, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app3c"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/y/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/a/f;->b:Lcom/apicloud/a/i/a/y/a/m;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/a/f;->b:Lcom/apicloud/a/i/a/y/a/m;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/a/f;->a:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/y/a/m;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/y/a/a/f;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method
