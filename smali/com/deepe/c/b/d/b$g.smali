.class Lcom/deepe/c/b/d/b$g;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/b/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/b/d/b;


# direct methods
.method constructor <init>(Lcom/deepe/c/b/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/b/d/b$g;->a:Lcom/deepe/c/b/d/b;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/b/d/b$g;->a:Lcom/deepe/c/b/d/b;

    invoke-virtual {v0}, Lcom/deepe/c/b/d/b;->m()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/b/d/b$g;->a:Lcom/deepe/c/b/d/b;

    invoke-virtual {v0}, Lcom/deepe/c/b/d/b;->m()V

    return-void
.end method
