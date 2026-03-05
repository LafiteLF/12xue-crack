.class Lcom/apicloud/a/i/c/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/apicloud/a/c/l;

.field private final c:Lcom/apicloud/a/h/b;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/apicloud/a/c/l;Lcom/apicloud/a/h/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/c/a$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/apicloud/a/i/c/a$a;->b:Lcom/apicloud/a/c/l;

    iput-object p3, p0, Lcom/apicloud/a/i/c/a$a;->c:Lcom/apicloud/a/h/b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/apicloud/a/c/l;Lcom/apicloud/a/h/b;Lcom/apicloud/a/i/c/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/c/a$a;-><init>(Ljava/lang/String;Lcom/apicloud/a/c/l;Lcom/apicloud/a/h/b;)V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcom/apicloud/a/i/c/a$a;->b:Lcom/apicloud/a/c/l;

    if-eqz p1, :cond_1

    new-instance p1, Lcom/apicloud/a/i/c/d;

    invoke-direct {p1}, Lcom/apicloud/a/i/c/d;-><init>()V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "value"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/apicloud/a/i/c/a$a;->c:Lcom/apicloud/a/h/b;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/c/d;->a(Lcom/apicloud/a/h/b;)Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, Lcom/apicloud/a/i/c/a$a;->b:Lcom/apicloud/a/c/l;

    iget-object v0, p0, Lcom/apicloud/a/i/c/a$a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
