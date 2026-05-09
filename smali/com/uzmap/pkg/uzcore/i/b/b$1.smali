.class Lcom/uzmap/pkg/uzcore/i/b/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/i/b/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/i/b/b;->a(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/webkit/WebView;

.field private final synthetic b:Landroid/webkit/HttpAuthHandler;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$1;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b/b$1;->b:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/b$1;->a:Landroid/webkit/WebView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/uzmap/pkg/uzcore/i/b/b;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/b$1;->b:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {p1, p3, p4}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
