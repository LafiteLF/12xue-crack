.class public Lcom/apicloud/a/i/a/e/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/apicloud/a/i/a/e/a/b$a;)Lcom/apicloud/a/i/a/e/a/a;
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/e/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/apicloud/a/i/a/e/a/b;-><init>(ILcom/apicloud/a/i/a/e/a/b$a;)V

    return-object v0
.end method
