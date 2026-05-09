.class Lcom/apicloud/a/i/a/f/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/f/b;


# direct methods
.method private constructor <init>(Lcom/apicloud/a/i/a/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/f/b$a;->a:Lcom/apicloud/a/i/a/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/a/i/a/f/b;Lcom/apicloud/a/i/a/f/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/f/b$a;-><init>(Lcom/apicloud/a/i/a/f/b;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p2, p0, Lcom/apicloud/a/i/a/f/b$a;->a:Lcom/apicloud/a/i/a/f/b;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    invoke-static {p2, v0}, Lcom/apicloud/a/i/a/f/b;->a(Lcom/apicloud/a/i/a/f/b;I)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/f/b$a;->a:Lcom/apicloud/a/i/a/f/b;

    invoke-static {p2}, Lcom/apicloud/a/i/a/f/b;->a(Lcom/apicloud/a/i/a/f/b;)Lcom/apicloud/a/i/a/f/b$b;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/apicloud/a/i/a/f/b$a;->a:Lcom/apicloud/a/i/a/f/b;

    invoke-static {p2}, Lcom/apicloud/a/i/a/f/b;->a(Lcom/apicloud/a/i/a/f/b;)Lcom/apicloud/a/i/a/f/b$b;

    move-result-object p2

    iget-object v0, p0, Lcom/apicloud/a/i/a/f/b$a;->a:Lcom/apicloud/a/i/a/f/b;

    invoke-interface {p2, v0, p1}, Lcom/apicloud/a/i/a/f/b$b;->a(Lcom/apicloud/a/i/a/f/b;Landroid/widget/CompoundButton;)V

    :cond_0
    return-void
.end method
