.class public Lcom/uzmap/pkg/b/a/h$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/security/KeyStore;

.field public final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/h$b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/uzmap/pkg/b/a/h$b;->a:Ljava/security/KeyStore;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Lcom/uzmap/pkg/b/a/h$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/b/a/h$b;-><init>(Ljava/lang/String;Ljava/security/KeyStore;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/a/h$b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/a/h$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/deepe/c/j/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/b/a/h$b;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/b/a/h$b;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/a/h$b;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/a/h$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
