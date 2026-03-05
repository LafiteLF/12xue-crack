.class Lcom/deepe/b/d$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d$8;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/deepe/b/d$8;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d$8$1;->a:Lcom/deepe/b/d$8;

    iput-object p2, p0, Lcom/deepe/b/d$8$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/deepe/b/d$8$1;->a:Lcom/deepe/b/d$8;

    invoke-static {p1}, Lcom/deepe/b/d$8;->a(Lcom/deepe/b/d$8;)Lcom/deepe/b/d;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;)Lcom/deepe/b/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepe/b/d$a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/b/d$8$1;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/deepe/c/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method
