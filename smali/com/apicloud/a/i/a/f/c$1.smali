.class Lcom/apicloud/a/i/a/f/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/f/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/f/c;->a(Lcom/apicloud/a/i/a/f/b;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/f/c;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/f/c;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/f/c$1;->a:Lcom/apicloud/a/i/a/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/f/b;Landroid/widget/CompoundButton;)V
    .locals 5

    iget-object p2, p0, Lcom/apicloud/a/i/a/f/c$1;->a:Lcom/apicloud/a/i/a/f/c;

    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/a/f/c;->a(Landroid/view/View;)Lcom/apicloud/a/c/l;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/f/b;->d()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    new-instance v1, Lcom/apicloud/a/i/c/d;

    invoke-direct {v1}, Lcom/apicloud/a/i/c/d;-><init>()V

    const-string v2, "value"

    invoke-virtual {v1, v2, v0}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/apicloud/a/i/c;->d(Landroid/view/View;)Lcom/apicloud/a/h/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Lcom/apicloud/a/i/c/d;->a(Lcom/apicloud/a/h/b;)Ljava/lang/Object;

    :cond_0
    const-string p1, "change"

    invoke-virtual {p2, p1, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v2}, Lcom/apicloud/a/i/a/f/b;->a(I)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f040005

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, ""

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method
