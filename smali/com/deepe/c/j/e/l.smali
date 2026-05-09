.class public Lcom/deepe/c/j/e/l;
.super Lcom/deepe/c/j/e/a/a;


# instance fields
.field private d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/j/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/j/e/l;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/e/l;->d:Ljava/io/InputStream;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/e/l;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
