.class abstract Lcom/deepe/a/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/deepe/a/c/a;->a:J

    return-void
.end method

.method private final e()V
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/c;->c(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/a/c/a;->e()V

    invoke-virtual {p0}, Lcom/deepe/a/c/a;->c()V

    return-void
.end method

.method abstract a(ZLandroid/location/Location;Ljava/lang/String;)V
.end method

.method final b()V
    .locals 4

    iget-wide v0, p0, Lcom/deepe/a/c/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x7530

    :goto_0
    invoke-static {p0, v0, v1}, Lcom/deepe/c/c;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method abstract c()V
.end method

.method abstract d()V
.end method

.method public final run()V
    .locals 0

    invoke-virtual {p0}, Lcom/deepe/a/c/a;->d()V

    return-void
.end method
