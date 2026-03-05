.class Lcom/deepe/c/c/a/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field final b:Lcom/deepe/c/c/a/a/d$b;

.field public final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/deepe/c/c/a/a/d$b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/a/a/d$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepe/c/c/a/a/d$a;->b:Lcom/deepe/c/c/a/a/d$b;

    iput-object p3, p0, Lcom/deepe/c/c/a/a/d$a;->c:Ljava/lang/String;

    return-void
.end method
