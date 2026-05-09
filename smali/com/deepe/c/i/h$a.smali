.class public abstract Lcom/deepe/c/i/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private b:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/deepe/c/i/h$a;->b:J

    iput-wide p1, p0, Lcom/deepe/c/i/h$a;->a:J

    return-void
.end method


# virtual methods
.method public abstract a(DLjava/io/File;)V
.end method

.method a(JLjava/io/File;)V
    .locals 2

    iget-wide v0, p0, Lcom/deepe/c/i/h$a;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/deepe/c/i/h$a;->b:J

    iget-wide p1, p0, Lcom/deepe/c/i/h$a;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/deepe/c/i/e;->a(JJ)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/deepe/c/i/h$a;->a(DLjava/io/File;)V

    return-void
.end method
