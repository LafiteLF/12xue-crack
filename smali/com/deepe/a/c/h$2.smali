.class Lcom/deepe/a/c/h$2;
.super Lcom/deepe/a/c/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/a/c/h;->a(JLjava/lang/String;Lcom/deepe/a/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/deepe/a/c/h;

.field private final synthetic d:J

.field private final synthetic e:Lcom/deepe/a/c/c;


# direct methods
.method constructor <init>(Lcom/deepe/a/c/h;JJLcom/deepe/a/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/c/h$2;->b:Lcom/deepe/a/c/h;

    iput-wide p4, p0, Lcom/deepe/a/c/h$2;->d:J

    iput-object p6, p0, Lcom/deepe/a/c/h$2;->e:Lcom/deepe/a/c/c;

    invoke-direct {p0, p1, p2, p3}, Lcom/deepe/a/c/h$a;-><init>(Lcom/deepe/a/c/h;J)V

    return-void
.end method


# virtual methods
.method a(ZLandroid/location/Location;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/c/h$2;->b:Lcom/deepe/a/c/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepe/a/c/h;->a(Lcom/deepe/a/c/a;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/deepe/a/c/h$2;->b:Lcom/deepe/a/c/h;

    invoke-virtual {v0}, Lcom/deepe/a/c/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/deepe/a/c/h$2;->b:Lcom/deepe/a/c/h;

    iget-wide p2, p0, Lcom/deepe/a/c/h$2;->d:J

    iget-object v0, p0, Lcom/deepe/a/c/h$2;->e:Lcom/deepe/a/c/c;

    invoke-virtual {p1, p2, p3, v0}, Lcom/deepe/a/c/h;->a(JLcom/deepe/a/c/c;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepe/a/c/h$2;->e:Lcom/deepe/a/c/c;

    invoke-virtual {p1, p2}, Lcom/deepe/a/c/c;->a(Landroid/location/Location;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/deepe/a/c/h$2;->e:Lcom/deepe/a/c/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/deepe/a/c/c;->a(ZLandroid/location/Location;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
