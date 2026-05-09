.class public Lcom/apicloud/a/c/r;
.super Lcom/eclipsesource/v8/utils/SingleTypeAdapter;


# instance fields
.field private final a:Lcom/apicloud/a/d;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/eclipsesource/v8/utils/SingleTypeAdapter;-><init>(I)V

    iput-object p1, p0, Lcom/apicloud/a/c/r;->a:Lcom/apicloud/a/d;

    return-void
.end method


# virtual methods
.method public adapt(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Lcom/eclipsesource/v8/V8Function;

    if-nez v0, :cond_0

    sget-object p1, Lcom/eclipsesource/v8/utils/TypeAdapter;->DEFAULT:Ljava/lang/Object;

    return-object p1

    :cond_0
    check-cast p1, Lcom/eclipsesource/v8/V8Function;

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Function;->twin()Lcom/eclipsesource/v8/V8Function;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eclipsesource/v8/V8Function;->setWeak()Lcom/eclipsesource/v8/V8Value;

    new-instance v0, Lcom/apicloud/a/c/j;

    iget-object v1, p0, Lcom/apicloud/a/c/r;->a:Lcom/apicloud/a/d;

    invoke-direct {v0, v1, p1}, Lcom/apicloud/a/c/j;-><init>(Lcom/apicloud/a/d;Lcom/eclipsesource/v8/V8Function;)V

    return-object v0
.end method
