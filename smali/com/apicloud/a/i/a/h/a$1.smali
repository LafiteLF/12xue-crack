.class Lcom/apicloud/a/i/a/h/a$1;
.super Lcom/apicloud/a/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/h/a;->a(Landroid/widget/CompoundButton;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/h/a;

.field private final synthetic b:Landroid/widget/CompoundButton;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/h/a;Landroid/widget/CompoundButton;I)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/h/a$1;->a:Lcom/apicloud/a/i/a/h/a;

    iput-object p2, p0, Lcom/apicloud/a/i/a/h/a$1;->b:Landroid/widget/CompoundButton;

    iput p3, p0, Lcom/apicloud/a/i/a/h/a$1;->c:I

    invoke-direct {p0}, Lcom/apicloud/a/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/h/a$1;->a:Lcom/apicloud/a/i/a/h/a;

    iget-object v1, p0, Lcom/apicloud/a/i/a/h/a$1;->b:Landroid/widget/CompoundButton;

    iget v2, p0, Lcom/apicloud/a/i/a/h/a$1;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/apicloud/a/i/a/h/a;->a(Lcom/apicloud/a/i/a/h/a;Landroid/widget/CompoundButton;ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method
