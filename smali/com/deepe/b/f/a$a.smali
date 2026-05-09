.class Lcom/deepe/b/f/a$a;
.super Lcom/deepe/b/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/b/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Lcom/deepe/b/f/c;


# direct methods
.method constructor <init>(Lcom/deepe/b/f/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/b/f/c;-><init>()V

    iput-object p1, p0, Lcom/deepe/b/f/a$a;->a:Lcom/deepe/b/f/c;

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/f/a$a;->a:Lcom/deepe/b/f/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/deepe/b/f/c;->a(D)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/f/a$a;->a:Lcom/deepe/b/f/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/deepe/b/f/c;->a(J)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/deepe/b/f/a;->g()V

    :cond_0
    iget-object v0, p0, Lcom/deepe/b/f/a$a;->a:Lcom/deepe/b/f/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/deepe/b/f/c;->a(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method
