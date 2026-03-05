.class Lcom/deepe/b/d/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/b/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d/b;

.field private final synthetic b:Lcom/deepe/b/b/c;


# direct methods
.method constructor <init>(Lcom/deepe/b/d/b;Lcom/deepe/b/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d/b$3;->a:Lcom/deepe/b/d/b;

    iput-object p2, p0, Lcom/deepe/b/d/b$3;->b:Lcom/deepe/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/deepe/b/d/b$3;->a:Lcom/deepe/b/d/b;

    iget-object v0, p0, Lcom/deepe/b/d/b$3;->b:Lcom/deepe/b/b/c;

    invoke-static {p1, v0}, Lcom/deepe/b/d/b;->a(Lcom/deepe/b/d/b;Lcom/deepe/b/b/c;)V

    :cond_0
    return-void
.end method
