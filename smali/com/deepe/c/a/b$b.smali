.class Lcom/deepe/c/a/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/a/b;


# direct methods
.method private constructor <init>(Lcom/deepe/c/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/a/b$b;->a:Lcom/deepe/c/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/deepe/c/a/b;Lcom/deepe/c/a/b$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/a/b$b;-><init>(Lcom/deepe/c/a/b;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "System trim memory for level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/deepe/d/a;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/deepe/c/a/b$b;->a:Lcom/deepe/c/a/b;

    invoke-static {v0}, Lcom/deepe/c/a/b;->a(Lcom/deepe/c/a/b;)Lcom/deepe/c/i/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/a/b$c;

    invoke-interface {v1, p1}, Lcom/deepe/c/a/b$c;->a(I)V

    goto :goto_0
.end method
