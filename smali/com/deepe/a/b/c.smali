.class public Lcom/deepe/a/b/c;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/deepe/a/b/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/ClipboardManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/a/b/c;->a:Landroid/content/Context;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/deepe/a/b/c;
    .locals 1

    sget-object v0, Lcom/deepe/a/b/c;->c:Lcom/deepe/a/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/a/b/c;

    invoke-direct {v0, p0}, Lcom/deepe/a/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/deepe/a/b/c;->c:Lcom/deepe/a/b/c;

    :cond_0
    sget-object p0, Lcom/deepe/a/b/c;->c:Lcom/deepe/a/b/c;

    return-object p0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/b/c;->b:Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/deepe/a/b/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/a/j;->d(Landroid/content/Context;)Landroid/content/ClipboardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/a/b/c;->b:Landroid/content/ClipboardManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/deepe/a/b/c;->b()V

    iget-object v0, p0, Lcom/deepe/a/b/c;->b:Landroid/content/ClipboardManager;

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/deepe/a/b/c;->b()V

    iget-object v0, p0, Lcom/deepe/a/b/c;->b:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return p1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
