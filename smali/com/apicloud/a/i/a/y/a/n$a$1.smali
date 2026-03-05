.class Lcom/apicloud/a/i/a/y/a/n$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/d/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/y/a/n$a;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/y/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/y/a/n$a;

.field private final synthetic b:Lcom/apicloud/a/i/a/y/a/c$a;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/y/a/n$a;Lcom/apicloud/a/i/a/y/a/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/n$a$1;->a:Lcom/apicloud/a/i/a/y/a/n$a;

    iput-object p2, p0, Lcom/apicloud/a/i/a/y/a/n$a$1;->b:Lcom/apicloud/a/i/a/y/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/n$a$1;->b:Lcom/apicloud/a/i/a/y/a/c$a;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/y/a/c$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/y/a/n$a$1;->b:Lcom/apicloud/a/i/a/y/a/c$a;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/y/a/c$a;->a()V

    return-void
.end method
