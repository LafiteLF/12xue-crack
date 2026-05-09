.class public interface abstract Lcom/uzmap/pkg/uzkit/request/HttpObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzkit/fineHttp/ProgressListener;


# virtual methods
.method public abstract onEventSourceClose()V
.end method

.method public abstract onEventSourceCreate()V
.end method

.method public abstract onEventSourceData(Lcom/uzmap/pkg/uzkit/request/ChunkData;)V
.end method

.method public abstract onEventSourceError(IILjava/lang/String;)V
.end method

.method public abstract onEventSourceOpen()V
.end method
