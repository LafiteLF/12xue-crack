.class public Lcom/uzmap/pkg/uzapp/UZApplication;
.super Landroid/app/Application;


# instance fields
.field private a:Lcom/uzmap/pkg/uzcore/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/d;->a(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzapp/UZApplication;->a:Lcom/uzmap/pkg/uzcore/d;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/deepe/c/i/r;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzapp/UZApplication;->a:Lcom/uzmap/pkg/uzcore/d;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d;->c(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzapp/UZApplication;->a:Lcom/uzmap/pkg/uzcore/d;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzapp/UZApplication;->a:Lcom/uzmap/pkg/uzcore/d;

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/d;->b(Landroid/content/Context;)V

    return-void
.end method
