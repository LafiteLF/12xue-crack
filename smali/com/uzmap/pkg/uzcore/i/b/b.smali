.class public Lcom/uzmap/pkg/uzcore/i/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/i/b/b$a;,
        Lcom/uzmap/pkg/uzcore/i/b/b$b;,
        Lcom/uzmap/pkg/uzcore/i/b/b$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Landroid/app/AlertDialog;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/uzmap/pkg/uzcore/i/b/b$c;

.field private h:Lcom/uzmap/pkg/uzcore/i/b/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/i/b/b;->d()V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/i/b/b;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->d:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static final a(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/b/b;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/uzmap/pkg/uzcore/i/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/uzmap/pkg/uzcore/i/b/b$1;

    invoke-direct {p2, p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/b$1;-><init>(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/i/b/b;->a(Lcom/uzmap/pkg/uzcore/i/b/b$c;)V

    new-instance p0, Lcom/uzmap/pkg/uzcore/i/b/b$2;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/b$2;-><init>(Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/i/b/b;->a(Lcom/uzmap/pkg/uzcore/i/b/b$a;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/i/b/b;->a()V

    return-void
.end method

.method public static final a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewDatabase;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewDatabase;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/i/b/b;)Lcom/uzmap/pkg/uzcore/i/b/b$c;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->g:Lcom/uzmap/pkg/uzcore/i/b/b$c;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/uzmap/pkg/uzcore/i/b/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/uzmap/pkg/uzcore/i/b/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 5

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/b/b$b;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/uzmap/pkg/uzcore/i/b/b$b;-><init>(Lcom/uzmap/pkg/uzcore/i/b/b;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/i/b/b$b;->a(Lcom/uzmap/pkg/uzcore/i/b/b$b;)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->e:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/i/b/b$b;->b(Lcom/uzmap/pkg/uzcore/i/b/b$b;)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/uzmap/pkg/uzcore/i/b/b$3;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzcore/i/b/b$3;-><init>(Lcom/uzmap/pkg/uzcore/i/b/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/deepe/b;->ai:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->b:Ljava/lang/String;

    const-string v3, "%s1\u201c%s2\u201d"

    const-string v4, "%s1"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->c:Ljava/lang/String;

    const-string v4, "%s2"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/deepe/b;->ai:Ljava/lang/String;

    new-instance v2, Lcom/uzmap/pkg/uzcore/i/b/b$4;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzcore/i/b/b$4;-><init>(Lcom/uzmap/pkg/uzcore/i/b/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/deepe/b;->f:Ljava/lang/String;

    new-instance v2, Lcom/uzmap/pkg/uzcore/i/b/b$5;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzcore/i/b/b$5;-><init>(Lcom/uzmap/pkg/uzcore/i/b/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/uzmap/pkg/uzcore/i/b/b$6;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzcore/i/b/b$6;-><init>(Lcom/uzmap/pkg/uzcore/i/b/b;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method static synthetic e(Lcom/uzmap/pkg/uzcore/i/b/b;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/i/b/b;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/uzmap/pkg/uzcore/i/b/b;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/i/b/b;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/uzmap/pkg/uzcore/i/b/b;)Lcom/uzmap/pkg/uzcore/i/b/b$a;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->h:Lcom/uzmap/pkg/uzcore/i/b/b$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/i/b/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->h:Lcom/uzmap/pkg/uzcore/i/b/b$a;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/i/b/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b;->g:Lcom/uzmap/pkg/uzcore/i/b/b$c;

    return-void
.end method
