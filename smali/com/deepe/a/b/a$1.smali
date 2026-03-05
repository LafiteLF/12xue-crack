.class Lcom/deepe/a/b/a$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/a/b/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/a/b/a;


# direct methods
.method constructor <init>(Lcom/deepe/a/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/b/a$1;->a:Lcom/deepe/a/b/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/b/a$1;->a:Lcom/deepe/a/b/a;

    invoke-static {v0, p1, p2}, Lcom/deepe/a/b/a;->a(Lcom/deepe/a/b/a;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
