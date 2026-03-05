.class Lcom/deepe/b/a/h;
.super Lcom/deepe/d/g;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/d/g;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/deepe/b/a/h;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/a/h;->e:Ljava/lang/String;

    return-object v0
.end method
