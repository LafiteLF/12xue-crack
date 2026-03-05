.class Lcom/uzmap/pkg/uzkit/request/HttpDownload$OutputStreamWrap;
.super Ljava/io/FilterOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzkit/request/HttpDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutputStreamWrap"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzkit/request/HttpDownload;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzkit/request/HttpDownload;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload$OutputStreamWrap;->a:Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload$OutputStreamWrap;->a:Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    int-to-long p2, p3

    invoke-static {p1, p2, p3}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->access$0(Lcom/uzmap/pkg/uzkit/request/HttpDownload;J)V

    return-void
.end method
