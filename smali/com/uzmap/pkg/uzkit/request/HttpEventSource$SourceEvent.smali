.class Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzkit/request/HttpEventSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SourceEvent"
.end annotation


# static fields
.field static e:Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/lang/String;

.field final d:Z

.field private f:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;-><init>(Z)V

    sput-object v0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->e:Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "message"

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->b:I

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->d:Z

    return-void
.end method

.method private prepareBuffer()Ljava/lang/StringBuffer;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->f:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->f:Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->f:Ljava/lang/StringBuffer;

    return-object v0
.end method


# virtual methods
.method final appendData(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->prepareBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method final getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->f:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method final takeEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->d:Z

    return v0
.end method

.method final valid()Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->f:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->a:Ljava/lang/String;

    const-string v1, "message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
