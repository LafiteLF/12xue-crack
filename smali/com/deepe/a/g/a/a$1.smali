.class Lcom/deepe/a/g/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/a/g/a/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/a/g/a/a;


# direct methods
.method constructor <init>(Lcom/deepe/a/g/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/g/a/a$1;->a:Lcom/deepe/a/g/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/deepe/a/g/a/a$1;->a:Lcom/deepe/a/g/a/a;

    invoke-static {p1}, Lcom/deepe/a/g/a/a;->b(Lcom/deepe/a/g/a/a;)Lcom/deepe/a/g/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/a/g/a/d;->a()I

    move-result v0

    invoke-static {p1, v0}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/a;I)V

    return-void
.end method
