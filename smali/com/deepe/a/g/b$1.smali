.class Lcom/deepe/a/g/b$1;
.super Lcom/deepe/a/g/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/a/g/b;->a(Landroid/content/Context;Lcom/deepe/a/g/b$b;)Lcom/deepe/a/g/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/deepe/a/g/b$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/deepe/a/g/b$b;)V
    .locals 0

    iput-object p2, p0, Lcom/deepe/a/g/b$1;->a:Lcom/deepe/a/g/b$b;

    invoke-direct {p0, p1}, Lcom/deepe/a/g/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/g/b$1;->a:Lcom/deepe/a/g/b$b;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/a/g/b$b;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
