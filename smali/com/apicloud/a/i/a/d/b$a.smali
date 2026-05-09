.class Lcom/apicloud/a/i/a/d/b$a;
.super Lcom/apicloud/a/i/a/d/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/d/b;

.field private b:Lcom/apicloud/a/c/f;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/b$a;->a:Lcom/apicloud/a/i/a/d/b;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/e$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/d/b$a;)Lcom/apicloud/a/c/f;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/d/b$a;->b:Lcom/apicloud/a/c/f;

    return-object p0
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/d/b$a;Lcom/apicloud/a/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/b$a;->b:Lcom/apicloud/a/c/f;

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/d/b$a;)Lcom/apicloud/a/i/a/d/b;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/d/b$a;->a:Lcom/apicloud/a/i/a/d/b;

    return-object p0
.end method


# virtual methods
.method a(Lcom/apicloud/a/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/b$a;->b:Lcom/apicloud/a/c/f;

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/d/a/e;)V
    .locals 0

    const-string p1, "onCameraOpened"

    invoke-static {p1}, Lcom/deepe/d/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/b$a;->a:Lcom/apicloud/a/i/a/d/b;

    invoke-static {p1}, Lcom/apicloud/a/i/a/d/b;->a(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/b$a;->a:Lcom/apicloud/a/i/a/d/b;

    invoke-static {p1}, Lcom/apicloud/a/i/a/d/b;->a(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/d;->b()V

    :cond_0
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/d/a/e;Lcom/apicloud/a/i/a/d/f;)V
    .locals 0

    const-string p1, "onCameraError"

    invoke-static {p1}, Lcom/deepe/d/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/b$a;->a:Lcom/apicloud/a/i/a/d/b;

    invoke-static {p1}, Lcom/apicloud/a/i/a/d/b;->a(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/b$a;->a:Lcom/apicloud/a/i/a/d/b;

    invoke-static {p1}, Lcom/apicloud/a/i/a/d/b;->a(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/d/d;->a(Lcom/apicloud/a/i/a/d/f;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/d/a/e;Ljava/io/File;)V
    .locals 0

    new-instance p1, Lcom/apicloud/a/i/a/d/b$a$2;

    invoke-direct {p1, p0, p2}, Lcom/apicloud/a/i/a/d/b$a$2;-><init>(Lcom/apicloud/a/i/a/d/b$a;Ljava/io/File;)V

    invoke-static {p1}, Lcom/apicloud/a/i/a/d/a/h;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/d/a/e;[B)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPictureTaken "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/d/a;->c(Ljava/lang/String;)V

    new-instance p1, Lcom/apicloud/a/i/a/d/b$a$1;

    invoke-direct {p1, p0, p2}, Lcom/apicloud/a/i/a/d/b$a$1;-><init>(Lcom/apicloud/a/i/a/d/b$a;[B)V

    invoke-static {p1}, Lcom/apicloud/a/i/a/d/a/h;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lcom/apicloud/a/i/a/d/a/e;)V
    .locals 0

    const-string p1, "onCameraClosed"

    invoke-static {p1}, Lcom/deepe/d/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/b$a;->a:Lcom/apicloud/a/i/a/d/b;

    invoke-static {p1}, Lcom/apicloud/a/i/a/d/b;->a(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/b$a;->a:Lcom/apicloud/a/i/a/d/b;

    invoke-static {p1}, Lcom/apicloud/a/i/a/d/b;->a(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/d;->a()V

    :cond_0
    return-void
.end method
