.class Lcom/apicloud/a/i/a/w/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/w/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/w/c;


# direct methods
.method private constructor <init>(Lcom/apicloud/a/i/a/w/c;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/w/c$a;->a:Lcom/apicloud/a/i/a/w/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/a/i/a/w/c;Lcom/apicloud/a/i/a/w/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/w/c$a;-><init>(Lcom/apicloud/a/i/a/w/c;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p2, p0, Lcom/apicloud/a/i/a/w/c$a;->a:Lcom/apicloud/a/i/a/w/c;

    invoke-static {p2}, Lcom/apicloud/a/i/a/w/c;->a(Lcom/apicloud/a/i/a/w/c;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/apicloud/a/i/a/w/c$a;->a:Lcom/apicloud/a/i/a/w/c;

    invoke-static {p2}, Lcom/apicloud/a/i/a/w/c;->b(Lcom/apicloud/a/i/a/w/c;)V

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p2

    iget-object v0, p0, Lcom/apicloud/a/i/a/w/c$a;->a:Lcom/apicloud/a/i/a/w/c;

    invoke-static {v0, p2}, Lcom/apicloud/a/i/a/w/c;->a(Lcom/apicloud/a/i/a/w/c;I)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/w/c$a;->a:Lcom/apicloud/a/i/a/w/c;

    invoke-static {p2}, Lcom/apicloud/a/i/a/w/c;->c(Lcom/apicloud/a/i/a/w/c;)Lcom/apicloud/a/i/a/w/c$b;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/apicloud/a/i/a/w/c$a;->a:Lcom/apicloud/a/i/a/w/c;

    invoke-static {p2}, Lcom/apicloud/a/i/a/w/c;->c(Lcom/apicloud/a/i/a/w/c;)Lcom/apicloud/a/i/a/w/c$b;

    move-result-object p2

    iget-object v0, p0, Lcom/apicloud/a/i/a/w/c$a;->a:Lcom/apicloud/a/i/a/w/c;

    invoke-interface {p2, v0, p1}, Lcom/apicloud/a/i/a/w/c$b;->a(Lcom/apicloud/a/i/a/w/c;Landroid/widget/CompoundButton;)V

    :cond_1
    return-void
.end method
