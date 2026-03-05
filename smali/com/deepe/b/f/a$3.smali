.class Lcom/deepe/b/f/a$3;
.super Lcom/deepe/c/i/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/f/a;->d(Ljava/lang/String;Lcom/deepe/b/f/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/deepe/b/f/c;


# direct methods
.method constructor <init>(JLcom/deepe/b/f/c;)V
    .locals 0

    iput-object p3, p0, Lcom/deepe/b/f/a$3;->a:Lcom/deepe/b/f/c;

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/i/h$a;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a(DLjava/io/File;)V
    .locals 0

    iget-object p3, p0, Lcom/deepe/b/f/a$3;->a:Lcom/deepe/b/f/c;

    invoke-static {p1, p2, p3}, Lcom/deepe/b/f/a;->a(DLcom/deepe/b/f/c;)V

    return-void
.end method
