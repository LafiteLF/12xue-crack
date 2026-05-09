.class Lcom/apicloud/a/i/a/l/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/l/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/l/a;->b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/l/a;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/l/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/l/a$1;->a:Lcom/apicloud/a/i/a/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
