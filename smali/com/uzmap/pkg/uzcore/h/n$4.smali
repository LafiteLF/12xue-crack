.class Lcom/uzmap/pkg/uzcore/h/n$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/h/n;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/h/n;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/h/n;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n$4;->a:Lcom/uzmap/pkg/uzcore/h/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n$4;->a:Lcom/uzmap/pkg/uzcore/h/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/h/n;->b(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n$4;->a:Lcom/uzmap/pkg/uzcore/h/n;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/n;->d(Lcom/uzmap/pkg/uzcore/h/n;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n$4;->a:Lcom/uzmap/pkg/uzcore/h/n;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/n;->e(Lcom/uzmap/pkg/uzcore/h/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff01\n\u8bf7\u68c0\u67e5ip\u548cport\uff0c\u786e\u4fdd\u624b\u673a\u548cIDE\u5728\u540c\u4e00\u4e2aWiFi\u4e0b"

    goto :goto_0

    :cond_0
    const-string v0, "WiFi\u8c03\u8bd5\u672a\u8fde\u63a5"

    :goto_0
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V

    return-void
.end method
