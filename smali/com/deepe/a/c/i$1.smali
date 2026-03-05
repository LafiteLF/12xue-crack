.class Lcom/deepe/a/c/i$1;
.super Lcom/deepe/a/c/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/a/c/i;->a(JLjava/lang/String;Lcom/deepe/a/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/deepe/a/c/i;

.field private final synthetic d:J

.field private final synthetic e:Lcom/deepe/a/c/c;


# direct methods
.method constructor <init>(Lcom/deepe/a/c/i;Landroid/os/CancellationSignal;JJLcom/deepe/a/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/c/i$1;->b:Lcom/deepe/a/c/i;

    iput-wide p5, p0, Lcom/deepe/a/c/i$1;->d:J

    iput-object p7, p0, Lcom/deepe/a/c/i$1;->e:Lcom/deepe/a/c/c;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/deepe/a/c/i$a;-><init>(Lcom/deepe/a/c/i;Landroid/os/CancellationSignal;J)V

    return-void
.end method


# virtual methods
.method a(ZLandroid/location/Location;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/c/i$1;->b:Lcom/deepe/a/c/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepe/a/c/i;->a(Lcom/deepe/a/c/a;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/deepe/a/c/i$1;->b:Lcom/deepe/a/c/i;

    invoke-virtual {v0}, Lcom/deepe/a/c/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/deepe/a/c/i$1;->b:Lcom/deepe/a/c/i;

    iget-wide p2, p0, Lcom/deepe/a/c/i$1;->d:J

    iget-object v0, p0, Lcom/deepe/a/c/i$1;->e:Lcom/deepe/a/c/c;

    invoke-virtual {p1, p2, p3, v0}, Lcom/deepe/a/c/i;->a(JLcom/deepe/a/c/c;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepe/a/c/i$1;->e:Lcom/deepe/a/c/c;

    invoke-virtual {p1, p2}, Lcom/deepe/a/c/c;->a(Landroid/location/Location;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/deepe/a/c/i$1;->e:Lcom/deepe/a/c/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/deepe/a/c/c;->a(ZLandroid/location/Location;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
