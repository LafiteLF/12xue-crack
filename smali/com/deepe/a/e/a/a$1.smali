.class Lcom/deepe/a/e/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/a/e/a/a;->a(Landroid/app/Activity;Landroid/view/View;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/e/a/a$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/deepe/a/e/a/a$1;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
