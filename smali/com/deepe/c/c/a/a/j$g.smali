.class public Lcom/deepe/c/c/a/a/j$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field a:Lcom/deepe/c/c/a/a/o;

.field b:Z

.field c:Z

.field d:Lcom/deepe/c/c/a/a/k$b;

.field e:Lcom/deepe/c/c/a/a/k$b;

.field f:Z

.field final g:Landroid/graphics/Paint;

.field final h:Landroid/graphics/Paint;

.field final i:Lcom/deepe/c/c/a/a/a;

.field final j:Lcom/deepe/c/c/a/a/b;


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    const/16 v1, 0xc1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-static {}, Lcom/deepe/c/c/a/a/j;->e()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setHinting(I)V

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-static {}, Lcom/deepe/c/c/a/a/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setHinting(I)V

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->i:Lcom/deepe/c/c/a/a/a;

    new-instance v0, Lcom/deepe/c/c/a/a/b;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->j:Lcom/deepe/c/c/a/a/b;

    invoke-static {}, Lcom/deepe/c/c/a/a/o;->a()Lcom/deepe/c/c/a/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    return-void
.end method

.method constructor <init>(Lcom/deepe/c/c/a/a/j$g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/deepe/c/c/a/a/j$g;->b:Z

    iput-boolean v0, p0, Lcom/deepe/c/c/a/a/j$g;->b:Z

    iget-boolean v0, p1, Lcom/deepe/c/c/a/a/j$g;->c:Z

    iput-boolean v0, p0, Lcom/deepe/c/c/a/a/j$g;->c:Z

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/a/a/k$b;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/k$b;-><init>(Lcom/deepe/c/c/a/a/k$b;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->d:Lcom/deepe/c/c/a/a/k$b;

    :cond_0
    iget-object v0, p1, Lcom/deepe/c/c/a/a/j$g;->e:Lcom/deepe/c/c/a/a/k$b;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/deepe/c/c/a/a/k$b;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/j$g;->e:Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/k$b;-><init>(Lcom/deepe/c/c/a/a/k$b;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->e:Lcom/deepe/c/c/a/a/k$b;

    :cond_1
    iget-boolean v0, p1, Lcom/deepe/c/c/a/a/j$g;->f:Z

    iput-boolean v0, p0, Lcom/deepe/c/c/a/a/j$g;->f:Z

    new-instance v0, Lcom/deepe/c/c/a/a/a;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/j$g;->i:Lcom/deepe/c/c/a/a/a;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/a;-><init>(Lcom/deepe/c/c/a/a/a;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->i:Lcom/deepe/c/c/a/a/a;

    new-instance v0, Lcom/deepe/c/c/a/a/b;

    iget-object v1, p1, Lcom/deepe/c/c/a/a/j$g;->j:Lcom/deepe/c/c/a/a/b;

    invoke-direct {v0, v1}, Lcom/deepe/c/c/a/a/b;-><init>(Lcom/deepe/c/c/a/a/b;)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/j$g;->j:Lcom/deepe/c/c/a/a/b;

    :try_start_0
    iget-object p1, p1, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/o;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/a/a/o;

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Unexpected clone error"

    invoke-static {v0, p1}, Lcom/deepe/c/c/a/a/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/deepe/c/c/a/a/o;->a()Lcom/deepe/c/c/a/a/o;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    :goto_0
    return-void
.end method
